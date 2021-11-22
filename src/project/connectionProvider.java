package project;

import java.sql.*;

public class connectionProvider {
	public static Connection getCon() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineacademy","root","yagyesh@mysql");	
			return con;
		}catch(Exception e) {
			System.out.println(e);
			return null;
		}
	}
}
