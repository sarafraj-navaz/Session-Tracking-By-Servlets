package com.jsp.simple_session_project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet (value = "/about")
public class AboutController   extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
		HttpSession httpSession=req.getSession();
		
		
		if(httpSession.getAttribute("myEmail") != null) {
			/*
			 * we can short ways RequestDispatcher
			 * requestDispatcher=req.getRequestDispatcher("About.jsp");
			 * requestDispatcher.forward(req, resp);
			 */
			
			
			req.getRequestDispatcher("About.jsp").forward(req, resp);
		}
		else {
			
			req.setAttribute("sessionMsg","your session is out please login again");
			req.getRequestDispatcher("Login.jsp").forward(req, resp);
		}
	}

}
