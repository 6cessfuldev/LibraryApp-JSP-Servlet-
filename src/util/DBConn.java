package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConn {
	
	private static Connection conn;
	
	private DBConn() {};

	public static Connection getConnection() {
		
		String driver = "com.mysql.cj.jdbc.Driver";
		String db_url = "jdbc:mysql://localhost:3306/library?serverTimezone=UTC&useUniCode=yes&characterEncoding=UTF-8"; // localhost:3306/library? 이것만 sql 프로그램에서 찾아서 입력해주면 되는
		String db_id = "root";
		String db_pw = "ezen";
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
			
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	
	public static void close() {
		
		try {
			
			if(conn!=null || !conn.isClosed()) {
				conn.close();
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		conn = null;
	}
	
}
