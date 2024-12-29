package com.tcs.servlet_simple_crud_operation.controller;

import java.io.IOException; 
import java.io.PrintWriter;
import java.time.LocalDate;

import com.tcs.servlet_simple_crud_operation.dao.UserDao;
import com.tcs.servlet_simple_crud_operation.dto.User;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;



@WebServlet(value = "/userRegister")
public class UserInsertController implements Servlet {
	
//	UserDao dao=new UserDao();

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ServletConfig getServletConfig() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
	    UserDao dao = new UserDao();
	    res.setContentType("text/html");

	    int id = Integer.parseInt(req.getParameter("userId"));
	    String name = req.getParameter("userName");
	    String email = req.getParameter("userEmail");
	    LocalDate dob = LocalDate.parse(req.getParameter("userDob"));
	    String gender = req.getParameter("gender");
	    String password = req.getParameter("password");

	    User user = new User(id, name, email, dob, gender, password);
	    User user2 = dao.saveUserDao(user);

	    PrintWriter p = res.getWriter();

	    if (user2 != null) {
	        req.setAttribute("message", "Registration Successful");
	        req.setAttribute("time", LocalDate.now());
	        RequestDispatcher dispatcher = req.getRequestDispatcher("registrationSuccess.jsp");
	        dispatcher.forward(req, res);
	    } else {
	        req.setAttribute("message", "Data not stored");
	        RequestDispatcher dispatcher = req.getRequestDispatcher("register.jsp");
	        dispatcher.include(req, res);
	    }
	}


	@Override
	public String getServletInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}
