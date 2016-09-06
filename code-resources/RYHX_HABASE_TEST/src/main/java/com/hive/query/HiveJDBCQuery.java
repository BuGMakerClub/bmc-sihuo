package com.hive.query;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONObject;
import com.facebook.presto.jdbc.PrestoConnection;
import com.facebook.presto.jdbc.PrestoStatement;
import com.hbase.save.AppStroe;
public class HiveJDBCQuery {
	private PrestoConnection conn;
	private final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	private final SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
	public HiveJDBCQuery(PrestoConnection prestoconn) {
		this.conn = prestoconn;
	}
	public void query(String curDay) {
		System.out.println("query day:"+curDay);
		Date d = null;
		try {
			d = dateFormat.parse(curDay);
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
		String query = "select * from hive.jck.hs_tx_0822 where CAST(hckcrq AS varchar)='"+format.format(d)+"'";
		System.out.println("query sql : " + query);
		try {
			PrestoStatement statement = (PrestoStatement) conn.createStatement();
			ResultSet rs = statement.executeQuery(query);
			while (rs.next()) {
				try {
					String sfzh1 = rs.getString("sfzh1");
					String sfzh2 = rs.getString("sfzh2");
					if(sfzh1 == null || sfzh1.length()!=18){
						continue;
					}
					if(sfzh2 == null || sfzh2.length()!=18){
						continue;
					}
					String rowkey = rs.getString("sfzh1").substring(10 , 14) + rs.getString("sfzh1").substring(0,10)+ rs.getString("sfzh1").substring(14) + rs.getString("sfzh2");
					//组织需要新添加的一列value
					JSONObject value = new JSONObject();
					value.put("hcpwbh", rs.getString("hcpwbh"));
					value.put("ryxm", rs.getString("xm1"));
					value.put("xgryxm", rs.getString("xm2"));
					value.put("qszdm", rs.getString("qszdm"));
					value.put("zdzdm",  rs.getString("zdzdm"));
					value.put("zwlxdm",  rs.getString("zwlxdm"));
					String[] data = new String[3];
					data[0] = rowkey;
					data[1] = rs.getString("hckcrq")+rs.getString("hckcsj");
					data[2] = value.toString();
					AppStroe.offer(data);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
