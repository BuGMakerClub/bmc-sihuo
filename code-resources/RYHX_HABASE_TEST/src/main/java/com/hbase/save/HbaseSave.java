package com.hbase.save;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.hadoop.hbase.TableName;
import org.apache.hadoop.hbase.client.Connection;
import org.apache.hadoop.hbase.client.ConnectionFactory;
import org.apache.hadoop.hbase.client.HTable;
import org.apache.hadoop.hbase.client.Put;
import com.dameng.dmga.HBaseConfigurationParam;
public class HbaseSave implements Runnable {
//	private static  AtomicLong count = new AtomicLong();
	public void save() throws IOException  {
		Connection conn = ConnectionFactory.createConnection(HBaseConfigurationParam.conf);
        HTable table = (HTable)conn.getTable(TableName.valueOf(HBaseConfigurationParam.GA_TABLE));
        List<Put> puts = new ArrayList<Put>();
        //从队列中获取数据
        while(true){
        	try {
    			String[] data = AppStroe.take();
    			System.out.println("---接收到数据--");
    			if(data[0].length() != 36) continue;
    			Put put = new Put(data[0].getBytes());
    			put.addColumn("TX".getBytes(),data[1].getBytes(), data[2].getBytes());
    			if(puts.size() >= 20){
    				System.out.println("---准备存储数据--");
    				table.put(puts);
    				System.out.println("---数据存储完毕--");
    				puts.clear();
    			}else{
    				puts.add(put);
    			}
    		} catch (Exception e) {
    			e.printStackTrace();
    		}
        }
	}
	
	public static void start(int threadSize){
		for(int i=0 ;i<threadSize ;i++){
			new Thread(new HbaseSave()).start();
		}
		
//		new Thread(new Runnable() {
//			@Override
//			public void run() {
//				while(true){
//					try {
//						System.out.println("当前已经插入Hbase条数:" + count.get());
//						Thread.sleep(20000);
//					} catch (InterruptedException e) {
//						e.printStackTrace();
//					}
//				}
//			}
//		}).start();
	}

	@Override
	public void run() {
		System.out.println(Thread.currentThread().getName()+" 线程启动了任务");
		try {
			save();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
}
