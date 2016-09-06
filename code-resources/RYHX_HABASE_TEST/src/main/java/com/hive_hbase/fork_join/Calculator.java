package com.hive_hbase.fork_join;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import com.facebook.presto.jdbc.PrestoConnection;
import com.hive.query.HiveJDBCQuery;
import com.hive.query.PrestoJDBCClient;
public class Calculator {
	private PrestoConnection prestoConn;
	private final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	
	public Calculator(){
		try {
			prestoConn = PrestoJDBCClient.getConnection();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
	}
	
	
	public  Object exec(String startDate, String endDate) {
		System.out.println("startDate:"+startDate +"    endDate:"+endDate);
		int index = 0;
		try {
			Date startSec = dateFormat.parse(startDate);
			Date endSec = dateFormat.parse(endDate);
			long daytime = startSec.getTime();
			do{
				String curDay = dateFormat.format(new Date(daytime));
				new HiveJDBCQuery(prestoConn).query(curDay);
				daytime = daytime + (24*60*60*1000); //加一天
				index ++;
			}while(daytime <= endSec.getTime());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return index -1;
	}
}
