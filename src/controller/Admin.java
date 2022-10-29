package controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BookDao;
import DAO.ServiceDao;
import domain.Book;

/**
 * Servlet implementation class Admin
 */
@WebServlet("/Admin")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		
		BookDao bookdao = new BookDao();
		ArrayList<Book> list = bookdao.readRecentBook();
		
		request.setAttribute("booklist", list);
		
		ServiceDao serdao = new ServiceDao();
		HashMap<String, Integer> map = serdao.countServiceByMonth();
		LocalDate now = LocalDate.now();
		
		HashMap<String, Integer> rs = new LinkedHashMap<String, Integer>();
		for (int i = 0; i<7; i++) {
			String date = now.format(DateTimeFormatter.ofPattern("yyyy-MM"));
			now = now.minusMonths(1);
			if(map.get(date)==null) {
				rs.put(date, 0);
			} else {
				rs.put(date, map.get(date));
			}
		}
		request.setAttribute("serviceCntMap", rs);
		
		ServletContext app = this.getServletContext();
	    RequestDispatcher dispatcher = app.getRequestDispatcher("/admin.jsp");
	       try {
	           dispatcher.forward(request, response);
	       } catch (ServletException e) {
	           e.printStackTrace();
	       }
				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
