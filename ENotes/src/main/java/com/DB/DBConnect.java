package com.DB;

//This will help to connect program to database
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
private static Connection conn;
	
	public static Connection getConn() {
		try {
			if(conn==null) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				String url = "jdbc:mysql://localhost/enotes";
				String username = "root";
				String password = "admin";
				conn = DriverManager.getConnection(url,username,password);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}
