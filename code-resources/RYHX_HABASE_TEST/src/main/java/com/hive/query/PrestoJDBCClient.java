package com.hive.query;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.TimeZone;
import com.facebook.presto.jdbc.PrestoConnection;

public class PrestoJDBCClient {
	public static PrestoConnection getConnection() throws SQLException {
		TimeZone.setDefault(TimeZone.getTimeZone("Asia/Shanghai"));
		try {
			Class.forName("com.facebook.presto.jdbc.PrestoDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		PrestoConnection connection = null;

		try {
			connection = (PrestoConnection) DriverManager.getConnection(
					"jdbc:presto://10.72.39.160:9090/jck", "root", null);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;
	}
}
