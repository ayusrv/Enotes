package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.PostDAO;
import com.DB.DBConnect;

@WebServlet("/deleteServlet")
public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer noteid = Integer.parseInt(request.getParameter("note_id"));
		PostDAO po = new PostDAO(DBConnect.getConn());
		boolean f = po.DeleteNotes(noteid);
		HttpSession session = null;
		if(f) {
			session = request.getSession();
			session.setAttribute("DeleteMsg", "Notes delete successfully...");
			response.sendRedirect("showNotes.jsp");
			
		}
		else {
			session = request.getSession();
			session.setAttribute("wrongMsg", "Something went wrong...");
			response.sendRedirect("showNotes.jsp");
			
		}
	}

}
