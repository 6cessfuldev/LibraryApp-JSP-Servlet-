package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;

import util.DBConn;

public class ServiceDao {

	private Connection conn = null;
	private PreparedStatement pstmt= null;
	private Statement stmt = null;
	private ResultSet rs = null;
	
	public HashMap<String, Integer> countServiceByMonth() {
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		try {
			
			conn = DBConn.getConnection();
			String sql = "select DATE_FORMAT(ser_date,'%Y-%m'), count(*) from service_tbl group by DATE_FORMAT(ser_date,'%Y-%m') limit 7";
			pstmt = conn.prepareStatement(sql);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				String date = rs.getString("DATE_FORMAT(ser_date,'%Y-%m')");
				int cnt = rs.getInt("count(*)");
				map.put(date, cnt);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConn.close();
		}
		
		return map;
	}
	
}
