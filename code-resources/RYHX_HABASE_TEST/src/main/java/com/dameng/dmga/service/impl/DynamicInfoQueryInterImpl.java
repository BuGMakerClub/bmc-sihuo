package com.dameng.dmga.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.hadoop.hbase.Cell;
import org.apache.hadoop.hbase.CellUtil;
import org.apache.hadoop.hbase.TableName;
import org.apache.hadoop.hbase.client.Connection;
import org.apache.hadoop.hbase.client.ConnectionFactory;
import org.apache.hadoop.hbase.client.Get;
import org.apache.hadoop.hbase.client.HTable;
import org.apache.hadoop.hbase.client.Result;
import org.apache.hadoop.hbase.client.ResultScanner;
import org.apache.hadoop.hbase.client.Scan;
import org.apache.hadoop.hbase.filter.BinaryPrefixComparator;
import org.apache.hadoop.hbase.filter.Filter;
import org.apache.hadoop.hbase.filter.RowFilter;
import org.apache.hadoop.hbase.filter.CompareFilter.CompareOp;
import org.apache.hadoop.hbase.util.Bytes;
import org.json.JSONObject;
import org.springframework.stereotype.Service;

import com.dameng.dmdp.gxry.service.DynamicInfoQueryInter;
import com.dameng.dmga.HBaseConfigurationParam;

@Service ("dynamicInfoQueryInter")
public class DynamicInfoQueryInterImpl implements DynamicInfoQueryInter
{

    public String query(String Rowid) throws Exception
    {
        JSONObject gxryInfoJson = new JSONObject();
        Get get = new Get(Bytes.toBytes(Rowid));
        Connection conn = ConnectionFactory.createConnection(HBaseConfigurationParam.conf);
        HTable table = (HTable)conn.getTable(TableName.valueOf(HBaseConfigurationParam.GA_TABLE));
        Result result = table.get(get);
        for (Cell cell : result.rawCells())
        {
            if (!"id".equals(new String(CellUtil.cloneQualifier(cell))))
            {
                gxryInfoJson.put(new String(CellUtil.cloneQualifier(cell)), new JSONObject(new String(
                        CellUtil.cloneValue(cell))).getString(new String(CellUtil.cloneQualifier(cell))));
            }
        }

        table.close();
        conn.close();

        return gxryInfoJson.toString();
    }

    public List<String> query(List<String> Rowids) throws Exception
    {
        Connection conn = ConnectionFactory.createConnection(HBaseConfigurationParam.conf);
        HTable table = (HTable)conn.getTable(TableName.valueOf(HBaseConfigurationParam.GA_TABLE));
        List<Get> gets = new ArrayList<Get>();
        List<String> arr = new ArrayList<String>();
        for (String Rowid : Rowids)
        {
            Get get = new Get(Bytes.toBytes(Rowid));
            gets.add(get);
        }
        Result[] result = table.get(gets);
        for (int i = 0; i < result.length; i++)
        {
            JSONObject gxryInfoJson = new JSONObject();
            for (Cell cell : result[i].rawCells())
            {
                if (!"id".equals(new String(CellUtil.cloneQualifier(cell))))
                {
                    gxryInfoJson.put(new String(CellUtil.cloneQualifier(cell)), new JSONObject(new String(
                            CellUtil.cloneValue(cell))).getString(new String(CellUtil.cloneQualifier(cell))));
                }
            }
            arr.add(gxryInfoJson.toString());
        }

        table.close();
        conn.close();

        return arr;
    }

//    public List<String> queryBySfzh(String sfzh, Date startTime, Date endTime) throws Exception
//    {
//        Connection conn = ConnectionFactory.createConnection(HBaseConfigurationParam.conf);
//        HTable table = (HTable)conn.getTable(TableName.valueOf(HBaseConfigurationParam.GA_TABLE));
//        Scan scan = new Scan();
//        Filter filter = new RowFilter(CompareOp.EQUAL, new BinaryPrefixComparator(sfzh.getBytes()));
//        scan.setFilter(filter);
//        ResultScanner scanner = table.getScanner(scan);
//        List<String> arr = new ArrayList<String>();
//        for (Result result : scanner)
//        {
//            String rowKey = Bytes.toString(result.getRow());
//            long timeStamp = Long
//                    .parseLong(rowKey.substring(rowKey.indexOf("_") + 1, rowKey.lastIndexOf("_")));
//            if (timeStamp >= startTime.getTime() && timeStamp <= endTime.getTime())
//            {
//                JSONObject gxryInfoJson = new JSONObject();
//                for (Cell cell : result.rawCells())
//                {
//                    if (!"id".equals(new String(CellUtil.cloneQualifier(cell))))
//                    {
//                        gxryInfoJson.put(new String(CellUtil.cloneQualifier(cell)), new JSONObject(
//                                new String(CellUtil.cloneValue(cell))).getString(new String(CellUtil
//                                .cloneQualifier(cell))));
//                    }
//                }
//                arr.add(gxryInfoJson.toString());
//            }
//        }
//
//        table.close();
//        conn.close();
//        scanner.close();
//
//        return arr;
//    }

	@Override
	public Map<String, String> queryBySfzh(String arg0) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, String> queryBySfzh(String arg0, Date arg1, Date arg2)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
