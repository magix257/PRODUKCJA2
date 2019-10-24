package com.etiko.main;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etiko.dao.LoginDao;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		LoginDao dao = new LoginDao();
		
	
			try {
				if(dao.check(uname, pass).equals("ADMIN"))
				{
					HttpSession session = request.getSession();
					session.setAttribute("username", uname);
					
					response.sendRedirect("mainA.jsp");
					
				}
				else if(dao.check(uname, pass).equals("USER"))
				{
					HttpSession session = request.getSession();
					session.setAttribute("username", uname);
					
					response.sendRedirect("mainU.jsp");
					
				}
				else if(dao.check(uname, pass).equals("1"))
				{
					response.sendRedirect("index.jsp");
				}
				}
			  catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
}