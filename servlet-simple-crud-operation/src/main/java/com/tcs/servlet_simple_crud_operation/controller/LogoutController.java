package com.tcs.servlet_simple_crud_operation.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(value="/logout")
public class LogoutController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession=req.getSession();
		
		String email=(String)httpSession.getAttribute("useEmail");
		
		if(email!=null) {
			httpSession.invalidate();
			
			req.setAttribute("msg", "logout success");
			
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}else {
			req.setAttribute("msg", "first login then logout");

			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}
	}	
}
