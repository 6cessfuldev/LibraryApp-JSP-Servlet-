package domain;

import java.sql.Date;

public class Book {

	private int num;
	private String name;
	private String author;
	private Date regDate;
	private Date pubDate;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getPubDate() {
		return pubDate;
	}
	public void setPubDate(Date pubDate) {
		this.pubDate = pubDate;
	}
	public Book(int num, String name, String author, Date regDate, Date pubDate) {
		super();
		this.num = num;
		this.name = name;
		this.author = author;
		this.regDate = regDate;
		this.pubDate = pubDate;
	}
}
