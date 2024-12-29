<%@page import="jakarta.servlet.http.HttpSession"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f7fa;
        color: #333;
    }

    .container {
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    h1 {
        text-align: center;
        color: #007bff;
        margin-bottom: 20px;
    }

    p {
        line-height: 1.6;
        margin: 10px 0;
    }

    .contact-details {
        margin-top: 20px;
    }

    .contact-details h2 {
        color: #007bff;
        margin-bottom: 10px;
    }

    .contact-details p {
        margin: 5px 0;
    }

    .logout-button {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 20px;
        background-color: #dc3545;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

    .logout-button:hover {
        background-color: #bd2130;
    }

    .back-link {
        text-decoration: none;
        color: #007bff;
        font-size: 16px;
        display: block;
        margin-bottom: 20px;
    }

    .back-link:hover {
        text-decoration: underline;
    }

    .session-expired {
        color: red;
        text-align: center;
        margin-top: 20px;
    }
</style>
</head>
<body>
<%
    HttpSession httpSession = request.getSession();
    String email = (String) httpSession.getAttribute("userEmail");

    if (email != null) {
%>
<div class="container">
    <a style="color: black; text-decoration: none;" href="home.jsp" class="back-link">&larr; Back</a>

    <h1>Contact Me</h1>

    <p>Hello, <strong><%= email %></strong>! Feel free to reach out to me through the following contact details:</p>

    <div class="contact-details">
        <h2>Contact Information</h2>
        <p><strong>Name:</strong> Aamir Shahab</p>
        <p><strong>Location:</strong> Lucknow, Uttar Pradesh, India</p>
        <p><strong>Phone:</strong> +91 6387812413</p>
        <p><strong>Email:</strong> <a href="mailto:aamir9648770208@gmail.com">aamir9648770208@gmail.com</a></p>
    </div>
</div>
<%
    } else {
        request.setAttribute("msg", "Your session has expired!!!!!!");
        request.getRequestDispatcher("login.jsp").forward(request, response);
%>
<div class="session-expired">Session expired. Redirecting to login...</div>
<%
    }
%>
</body>
</html>
