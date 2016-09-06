package com.hive_hbase.fork_join;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.RecursiveTask;
import org.json.JSONObject;
import com.hbase.save.AppStroe;
import com.hbase.save.HbaseSave;
/**
 * @author 任务分发
 */
public class TaskDispather extends RecursiveTask<Object>{
	private String startDate;
	private String endDate;
	private final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	private static final long THRESHOLD = 90;//任务细度 为5百万
	
	public TaskDispather(String startDate, String endDate) {
		this.startDate = startDate;
		this.endDate = endDate;
	}
	
	@Override
	protected Object compute() {
		try {
			Date start = dateFormat.parse(startDate);
			Date end = dateFormat.parse(endDate);
			long day = (end.getTime() - start.getTime()) / (24*60*60*1000);
			if(day <= THRESHOLD){//递归出口
				return new Calculator().exec(startDate, endDate);
			}
			long middle = ((end.getTime() - start.getTime()) / 2) + start.getTime();
			Date middleDate = new Date(middle);
			String middleStr = dateFormat.format(middleDate);
			String middleNext =  dateFormat.format(new Date(middle+24*60*60*1000));
			
			TaskDispather leftTask = new TaskDispather(startDate, middleStr);
			TaskDispather rightTask = new TaskDispather(middleNext, endDate);
			leftTask.fork();
			rightTask.fork();
			leftTask.join();
			rightTask.join();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	public static void main(String[] args) throws InterruptedException, ExecutionException {
		HbaseSave.start(12);//启动Hbase存储线程
		String data[] = {"0" , "1" , "2" ,"3" ,"4" ,"5" ,"6","7","8","9"};
		Random random = new Random();
		for(int k=0 ;k< 999999999 ; k++){
			int f = random.nextInt(999999999);
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
				JSONObject object = new JSONObject();
		    	object.put("QSGX", "兄弟");
		    	object.put("XM1", "王" +f);
		    	object.put("XM2", "王" +f);
		    	object.put("XM3", "王" +f);
		    	object.put("XM4", "王" +f);
		    	object.put("XM5", "王" +f);
		    	object.put("XM6", "王" +f);
		    	object.put("XM7", "王" +f);
		    	String dataStr[] = new String[3];
		    	dataStr[0] = rowkey;
		    	dataStr[1] = new Date().toString();
		    	dataStr[2] = object.toString();
		    	AppStroe.offer(dataStr);
			}
		}
		
//		ForkJoinPool forkJoinPool = new ForkJoinPool();//启动Prestodb读取 fork join
//		Future<Object> future= forkJoinPool.submit(new TaskDispather("2016-01-01","2016-08-22"));
//		future.get();
//		
//		forkJoinPool.shutdown();
	}
	
}
