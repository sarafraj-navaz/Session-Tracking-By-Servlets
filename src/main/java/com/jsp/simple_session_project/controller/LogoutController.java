package com.jsp.simple_session_project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet (value="/logout")
public class LogoutController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
		HttpSession httpSession = req.getSession();
		
		if(httpSession.getAttribute("myEmail") != null) {
			
			req.setAttribute("success","logout successfully");
			httpSession.invalidate();
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("Login.jsp");
			requestDispatcher.forward(req, resp);
		}
	}
}
