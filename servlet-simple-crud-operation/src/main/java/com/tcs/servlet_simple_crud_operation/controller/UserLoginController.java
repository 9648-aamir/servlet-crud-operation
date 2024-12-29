package com.tcs.servlet_simple_crud_operation.controller;

import java.io.IOException;

import com.tcs.servlet_simple_crud_operation.dao.UserDao;
import com.tcs.servlet_simple_crud_operation.dto.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(value = "/loginUser")
public class UserLoginController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession httpSession=req.getSession();
		
		UserDao dao = new UserDao();
		String email = req.getParameter("userEmail");
		String password = req.getParameter("password");
		
		
		User user=dao.getUserByEmailDao(email);
		
		
		if(user!=null) {
			
			if(user.getPassword().equals(password)) {
				
				httpSession.setAttribute("userEmail", email);
				httpSession.setMaxInactiveInterval(900);
				req.getRequestDispatcher("home.jsp").forward(req, resp);
			}
			else {
				req.setAttribute("msg", "given password is incorrect");
				req.getRequestDispatcher("login.jsp").forward(req, resp);
			}
		}else {
			req.setAttribute("msg", "given email is incorrect");
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}
	}

}
