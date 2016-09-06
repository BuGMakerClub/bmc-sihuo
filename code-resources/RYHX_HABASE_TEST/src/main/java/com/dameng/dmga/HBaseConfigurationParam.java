package com.dameng.dmga;

import java.io.IOException;
import java.util.Properties;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.hbase.HBaseConfiguration;

public class HBaseConfigurationParam
{
    public static String GA_TABLE = "GA_RLF_TX";

    public static Configuration conf = HBaseConfiguration.create();
    
    static
    {
        Properties properties = new Properties();
        try
        {
            properties.load(ClassLoader.getSystemResourceAsStream("hbase.properties"));
            conf.set("hbase.zookeeper.property.clientPort",
                    properties.getProperty("hbase.zookeeper.property.clientPort"));
            conf.set("hbase.zookeeper.quorum", properties.getProperty("hbase.zookeeper.quorum"));
            conf.set("hbase.rootdir", properties.getProperty("hbase.rootdir"));
            conf.set("hbase.master", properties.getProperty("hbase.master"));
        }
        catch (IOException e)
        {
            e.printStackTrace();
        }
    }
}
