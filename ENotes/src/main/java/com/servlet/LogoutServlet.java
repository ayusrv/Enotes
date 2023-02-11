package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			HttpSession session = request.getSession();
			session.removeAttribute("userD");
			
			HttpSession session2 = request.getSession();
			session2.setAttribute("logoutMsg","Logout Sucessfull...");
			response.sendRedirect("login.jsp");
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}


}
