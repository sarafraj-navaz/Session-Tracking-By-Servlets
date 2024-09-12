package com.jsp.simple_session_project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet (value="/loginPage")
public class LoginController extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		/*
		 * at the time we are creating object for session 
		 */
		HttpSession httpSession=req.getSession();
	   
		String email= req.getParameter("email");
		String password=req.getParameter("password");
		
		
		if((email.equals("ankit@gmail.com")) &&  password.equals("ankit@123")) {
			
			
		     httpSession.setAttribute("myEmail", email);
		     
		     httpSession.setMaxInactiveInterval(30);
		     
			RequestDispatcher requestDispatcher=req.getRequestDispatcher("Home.jsp");
			requestDispatcher.forward(req, resp);
		}
		else {
			
			req.setAttribute("wrongemail","your given email and password is wrong" );
			
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("Login.jsp");
			requestDispatcher.forward(req, resp);
			
		}
	}

}
