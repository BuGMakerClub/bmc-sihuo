package com.util.ipUtils;

import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;

public class TestIpUtils {
	
	public String getServerIp(){
		try {
			 Enumeration<NetworkInterface> networks = NetworkInterface.getNetworkInterfaces();
			 while(networks.hasMoreElements()){
				 NetworkInterface networkInterface  = networks.nextElement();
				 Enumeration<InetAddress> inetAddress = networkInterface.getInetAddresses();
				 while(inetAddress.hasMoreElements()){
					 InetAddress inetAddres = inetAddress.nextElement();
					 if(!inetAddres.isLoopbackAddress() && !inetAddres.isLinkLocalAddress() && inetAddres.isSiteLocalAddress()){
						 System.out.println("find local server ip is :" + inetAddres.getHostAddress());
						 return inetAddres.getHostAddress();
					 }
				 }
			 }
		} catch (SocketException e) {
			e.printStackTrace();
		}
		throw new RuntimeException("方法没有找到本机地址IP");
	}
	
	
	
	public static void main(String[] args) {
		TestIpUtils ipUtils = new TestIpUtils();
		ipUtils.getServerIp();
	}
}
