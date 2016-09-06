package com.hbase.save;
import java.util.concurrent.LinkedBlockingQueue;

public class AppStroe {
	//队列限制存放500万个消息
	public static LinkedBlockingQueue<String[]> messageQueue = new LinkedBlockingQueue<String[]>(5000000);
	
	public static void offer(String[] data){
		messageQueue.offer(data);
	}
	
	public static String[] take() throws InterruptedException{
		return messageQueue.take();
	}
	
}
