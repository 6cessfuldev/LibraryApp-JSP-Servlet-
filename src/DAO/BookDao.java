package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import domain.Book;
import util.DBConn;

public class BookDao {

	private Connection conn = null;
	private PreparedStatement pstmt= null;
	private Statement stmt = null;
	private ResultSet rs = null;
	
	public void createBook(String name, String author) {
		
	}
	
	public ArrayList<Book> readRecentBook() {
		
		ArrayList<Book> list = new ArrayList<Book>();
		
		try {
			conn= DBConn.getConnection();
			
			stmt=conn.createStatement();
			
			String sql = "select * from book_tbl limit 20";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int num = rs.getInt("book_num");
				String name = rs.getString("book_name");
				String author = rs.getString("book_author");
				Date regDate = rs.getDate("book_regdate");
				Date pubDate = rs.getDate("book_pubdate");
				
				Book book = new Book(num,name,author,regDate, pubDate);
				list.add(book);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBConn.close();
		}
		
		return list;
	}
}
