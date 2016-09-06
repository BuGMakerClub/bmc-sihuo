package com.dameng.dmga.service.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.hadoop.hbase.TableName;
import org.apache.hadoop.hbase.client.Connection;
import org.apache.hadoop.hbase.client.ConnectionFactory;
import org.apache.hadoop.hbase.client.HTable;
import org.apache.hadoop.hbase.client.Put;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Service;

import com.dameng.dmdp.gxry.service.NewDynamicSaveInter;
import com.dameng.dmga.HBaseConfigurationParam;
@Service ("newDynamicSaveInter")
public class NewDynamicSaveInterImpl implements NewDynamicSaveInter
{
    static long id = 100000;
    
    @Override
    public List<String> save(String inputInfo) throws Exception
    {
        List<String> rowKeys = new ArrayList<String>();
        Connection conn = ConnectionFactory.createConnection(HBaseConfigurationParam.conf);
        HTable table = (HTable)conn.getTable(TableName.valueOf(HBaseConfigurationParam.GA_TABLE));
        List<Put> puts = new ArrayList<Put>();
        JSONObject jsonObject = new JSONObject(inputInfo);
        JSONObject matchIdJsonObject = new JSONObject();
        JSONObject keywordJsonObject = new JSONObject();
        JSONObject bodyJsonObject = new JSONObject();
        Iterator iterator = jsonObject.keys();
        String key = null;
        String value = null;
        while (iterator.hasNext()) 
        {
            key = (String) iterator.next();
            value = jsonObject.get(key).toString();
            if("matchId".equals(key))
            {
                matchIdJsonObject.put(key, value);
            }
            else if ("keyword".equals(key)) 
            {
                keywordJsonObject.put(key, value);
            }
            else if ("body".equals(key)) 
            {
                bodyJsonObject.put(key, value);
            }
        }
        JSONArray matchIdArray = jsonObject.getJSONArray("matchId").getJSONObject(0).getJSONArray("Number");
        for(int i = 0; i < matchIdArray.length(); i++)
        {
            String rowKey = matchIdArray.getString(i) + "_" + System.currentTimeMillis() + "_" + id;
            Put put = new Put(rowKey.getBytes());
            put.addColumn("act".getBytes(), "id".getBytes(), matchIdArray.getString(i).getBytes());
            put.addColumn("act".getBytes(), "matchId".getBytes(), matchIdJsonObject.toString().getBytes());
            put.addColumn("act".getBytes(), "keyword".getBytes(), keywordJsonObject.toString().getBytes());
            put.addColumn("act".getBytes(), "body".getBytes(), bodyJsonObject.toString().getBytes());
            puts.add(put);
            id++;
            rowKeys.add(rowKey);
        }

        table.put(puts);
        table.close();
        conn.close();
        
        return rowKeys;
    }

    
    
    
    
    
}
