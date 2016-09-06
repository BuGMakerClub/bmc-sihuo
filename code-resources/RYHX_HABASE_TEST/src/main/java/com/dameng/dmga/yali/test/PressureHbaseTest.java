package com.dameng.dmga.yali.test;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.atomic.AtomicLong;

import org.apache.hadoop.hbase.Cell;
import org.apache.hadoop.hbase.CellUtil;
import org.apache.hadoop.hbase.TableName;
import org.apache.hadoop.hbase.client.Connection;
import org.apache.hadoop.hbase.client.ConnectionFactory;
import org.apache.hadoop.hbase.client.Get;
import org.apache.hadoop.hbase.client.HTable;
import org.apache.hadoop.hbase.client.Put;
import org.apache.hadoop.hbase.client.Result;
import org.apache.hadoop.hbase.client.ResultScanner;
import org.apache.hadoop.hbase.client.Scan;
import org.apache.hadoop.hbase.filter.PrefixFilter;
import org.apache.hadoop.hbase.util.Bytes;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Service;
import com.dameng.dmga.HBaseConfigurationParam;
@Service ("newDynamicSaveInter")
public class PressureHbaseTest implements Runnable
{
	public static AtomicLong count = new AtomicLong();
	private String[] idfix = {
		 "110000","120000","130000","140000","150000","210000","220000","230000","310000"
		,"320000","330000","340000","350000","360000","370000","410000","420000","420100","420200","420300","420500"
		,"420600","420700","420800","420900","421000","421100","421200","421300","422800","429000","430000","440000"
		,"450000","460000","500000","510000","520000","530000","540000","610000","620000","630000","640000","650000"
		,"710000","810000","820000"
			};
    static long id = 100000;
    private int start_Number ;
    private int end_Number;
    public PressureHbaseTest(int startNumber , int endNumber){
    	this.start_Number = startNumber;
    	this.end_Number = endNumber;
    }
    
    
    public static void testSave() throws Exception
    {
        int start_number = 60000000;
        int offset = 6000000;
    	for (int i =0 ;i<12 ;i++){
    		int currentNumber = start_number + offset*i + 1;
    		int endNumber = currentNumber + offset;
    		System.out.println(Thread.currentThread().getName()+"执行 start_number:" +currentNumber+"  end_number:"+endNumber);
    		new Thread(new PressureHbaseTest(currentNumber, endNumber)).start();
        }
    }
    
    
    public static void testfindKey() throws IOException{
    	long startTime = System.currentTimeMillis();
    	System.out.println("开始时间:"+startTime);
    	Get get = new Get(Bytes.toBytes("123502454000049"));
        Connection conn = ConnectionFactory.createConnection(HBaseConfigurationParam.conf);
        HTable table = (HTable)conn.getTable(TableName.valueOf(HBaseConfigurationParam.GA_TABLE));
        Result result = table.get(get);
        System.out.println("一共有多少列："+result.rawCells().length);
        
        for (Cell cell : result.rawCells())
        {
        	System.out.println(new String(CellUtil.cloneQualifier(cell)));
        }
        table.close();
        conn.close();
        long endTime = System.currentTimeMillis();
        System.out.println("结束时间:" + endTime);
        
        System.out.println("一共花了多少时间:" +  (endTime - startTime)/1000);
    }
    
    
    
    
    
    public static void main(String[] args) throws Exception {
    	PressureHbaseTest.testfindKeyScaner();
    }
    
   
    
    /**
     * 根据rowKey前缀查询测试
     * @throws IOException 
     */
    public static void testfindKeyForPrefix() throws IOException{
    	Connection conn = ConnectionFactory.createConnection(HBaseConfigurationParam.conf);
        HTable table = (HTable)conn.getTable(TableName.valueOf(HBaseConfigurationParam.GA_TABLE));
        long startTime = System.currentTimeMillis();
        System.out.println("开始时间:"+startTime);
        Scan scan  = new Scan();
        scan.setFilter(new PrefixFilter("016481757921932823".getBytes()));
        ResultScanner rs = table.getScanner(scan);
        Iterator<Result> result = rs.iterator();
        int count = 0 ;
        while(result.hasNext()){
      	  Result r = result.next();
      	  System.out.println(r);
      	  count ++;
        }
        long endTime = System.currentTimeMillis();
        System.out.println("结束时间:" + endTime);
        System.out.println("一共花了多少时间:" +  (endTime - startTime)/1000 +"查出了"+count + "条数据");
        rs.close();
        table.close();
        conn.close();
    }
    
    
    /**
     * rowkey前方是时间。根据时间查询测试
     * @throws IOException
     */
    public static void testfindKeyScaner() throws IOException{
    	  Connection conn = ConnectionFactory.createConnection(HBaseConfigurationParam.conf);
          HTable table = (HTable)conn.getTable(TableName.valueOf(HBaseConfigurationParam.GA_TABLE));
          long startTime = System.currentTimeMillis();
          System.out.println("开始时间:"+startTime);
          Scan scan = new Scan("12294202221983003".getBytes() , "12294202221983004".getBytes());
          ResultScanner rs = table.getScanner(scan);
          Iterator<Result> result = rs.iterator();
          int count = 0 ;
          while(result.hasNext()){
        	  Result r = result.next();
        	  System.out.println(r);
        	  count ++;
          }
          long endTime = System.currentTimeMillis();
          System.out.println("结束时间:" + endTime);
          System.out.println("一共花了多少时间:" +  (endTime - startTime)/1000 +"查出了"+count + "条数据");
          
          rs.close();
          table.close();
          conn.close();
    }
    

    /**
     * 按照身份证上的出生月和日进行批量添加测试代码
     */
    public  void testSave4(){
    	String data[] = {"0" , "1" , "2" ,"3" ,"4" ,"5" ,"6","7","8","9"};
    	try {
    		Connection conn = ConnectionFactory.createConnection(HBaseConfigurationParam.conf);
			HTable table = (HTable)conn.getTable(TableName.valueOf(HBaseConfigurationParam.GA_TABLE));
			Random random = new Random();
			
			for(int f = start_Number ; f<end_Number ; f++){//循环得到一个人
				int mounth = 0;
				int day = 0;
				do{
					mounth = random.nextInt(12);//月份
				}while(mounth == 0);
				do{
					day = random.nextInt(12);//得到日
				}while(day == 0);
				
				
				String mounthStr = "";
				if(mounth < 10 ){
					mounthStr = "0" + mounth;
				}
				String dayStr = "";
				if(day < 10) {
					dayStr = "" + day;
				}
				String prefix = mounthStr + dayStr;//获取rowkey的前缀
				String temp = "";
				for(int i = 0 ; i< 16 - (f +"").length() ; i++ ){
					String d = data[random.nextInt(10)];
					temp += d;
				}
				
				
				//随机生成关系
				for(int i = 0 ;i< random.nextInt(1000) ; i++){
					String gxry = "";
					for(int j = 0 ; j< 18 - (f +"").length() ; j++ ){
						String d = data[random.nextInt(10)];
						gxry += d;
					}
					
					String rowkey = prefix + f + temp + gxry + f;
					Put put = new Put(rowkey.getBytes());//
					
					JSONObject object = new JSONObject();
			    	object.put("QSGX", "兄弟");
			    	object.put("XM", "王" +f);
			    	put.addColumn("TX".getBytes(), "1".getBytes(), object.toString().getBytes());
			    	table.put(put);
			    	count.addAndGet(1);
				}
				
		    	if(f % 1000 == 0){
					System.out.println(Thread.currentThread().getName()+"跑了一万条了============分割线=================" );
					System.out.println("共插入:"+count.get()+"条");
		    	}
		    	
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
    }
    
    
    
	@Override
	public void run() {
		testSave4();
	}
	
	
	
	public void saveFa3(){
		try {
			Connection conn = ConnectionFactory.createConnection(HBaseConfigurationParam.conf);
			HTable table = (HTable)conn.getTable(TableName.valueOf(HBaseConfigurationParam.GA_TABLE));
			for(int f = start_Number ; f<end_Number ; f++){//循环得到一个人
				Random random = new Random();
				//随机生成该人的关系
				for(int i =0 ; i<random.nextInt(1000) ; i++){
					String gmsfzh = idfix[random.nextInt(48)] + i ;
					String rowkey = f + "" + gmsfzh;
					Put put = new Put(rowkey.getBytes());//
					JSONObject object = new JSONObject();
			    	object.put("QSGX", "兄弟");
			    	object.put("XM", "王" +f);
					put.addColumn("SWRY".getBytes(), "1".getBytes(), object.toString().getBytes());
					table.put(put);
				}
				if(f % 1000 == 0){
					System.out.println(Thread.currentThread().getName()+"跑了一万条了============分割线=================" );
			    }
			}
			conn.close();
			System.out.println("===============跑完了=============");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	public void saveFa2(){
		try {
			Connection conn = ConnectionFactory.createConnection(HBaseConfigurationParam.conf);
			HTable table = (HTable)conn.getTable(TableName.valueOf(HBaseConfigurationParam.GA_TABLE));
//			table.setWriteBufferSize(50*1024*1024);
			List<Put> puts = new ArrayList<Put>();
			
			for(int f = start_Number ; f<end_Number ; f++){//循环一行
				try {//存储key
					Random random = new Random();
				    String rowKey = idfix[random.nextInt(48)] + f ;
					Put put = new Put(rowKey.getBytes());//代表一样
					//循环一列
					for(int i=0 ; i< random.nextInt(1000); i++){//每行有一万列
						JSONObject object = new JSONObject();
				    	object.put("QSGX", "兄弟");
				    	object.put("XM", "王" +f);
						put.addColumn("SWRY".getBytes(), (random.nextInt(10000)+"").getBytes(),object.toString().getBytes());
					}
//					put.setWriteToWAL(false);
					if(put.size() > 0){
						puts.add(put);
					}
					if(f % 100 == 0){//10000条存储一次hbase
				    	System.out.println("commit is successfuly.....f="+f  + "     puts size =" + puts.size() );
				    	table.put(puts);
				    	puts.clear();
//				    	table.flushCommits();
				    }
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			conn.close();
			System.out.println("===============跑完了=============");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public void saveFa1(){
		try {
			Connection conn = ConnectionFactory.createConnection(HBaseConfigurationParam.conf);
			HTable table = (HTable)conn.getTable(TableName.valueOf(HBaseConfigurationParam.GA_TABLE));
			table.setAutoFlush(false);
			table.setWriteBufferSize(50*1024*1024);
			List<Put> puts = new ArrayList<Put>();
			for(int f = start_Number ; f<end_Number ; f++){
				try {
						//存储key
						Random random = new Random();
					    String rowKey = idfix[random.nextInt(48)] + f ;
					    Put put = new Put(rowKey.getBytes());
					    //存储Value 
					    JSONArray qsgx = new JSONArray();
					    for(int j=0 ;j<5 ;j++){
					    	JSONObject object = new JSONObject();
					    	object.put("GMSFHM", "42011519941213587"+f);
					    	object.put("QSGX", "兄弟");
					    	object.put("XM", "王" +f);
					    	qsgx.put(object);
					    }
					    put.addColumn("RYGX".getBytes(), "QSGX".getBytes(), qsgx.toString().getBytes());//设置亲属关系
					    JSONArray swgx = new JSONArray();
					    for(int k = 0; k<5 ; k++){
					    	JSONObject object = new JSONObject();
					    	object.put("GMSFHM", "42011519941213587"+k);
					    	object.put("SWCS", 20);
					    	object.put("XM", "王" +k);
					    	swgx.put(object);
					    }
					    put.addColumn("RYGX".getBytes(), "SWGX".getBytes(), swgx.toString().getBytes());//设置上网关系
					    JSONArray txgx = new JSONArray();
					    for(int w = 0; w<1 ; w++){
					    	JSONObject object = new JSONObject();
					    	object.put("GMSFHM", "42011519941213587"+w);
					    	object.put("TXCS", 20);
					    	object.put("XM", "王" +w);
					    	txgx.put(object);
					    }
					    put.addColumn("RYGX".getBytes(), "TZGX".getBytes(), txgx.toString().getBytes());//设置同行关系
					    put.setWriteToWAL(false);
					    puts.add(put);
					    
					    if(f % 10000 == 0){//10000条存储一次hbase
					    	System.out.println("commit is successfuly.....f="+f  + "     puts size =" + puts.size() );
					    	table.put(puts);
					    	puts.clear();
					    	table.flushCommits();
					    }
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			table.close();
			conn.close();
			System.out.println("===============跑完了=============");
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
}
