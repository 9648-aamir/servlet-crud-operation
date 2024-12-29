<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@page import="jakarta.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Home Page</title>
     <style>


body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f9;
    color: #f4efef;
    position: relative; /* Needed for the pseudo-element positioning */
    z-index: 0;
    background-image: 
        url("<%= request.getContextPath() %>/image/myimage.png");
    
       
        
        background-size: cover;
    background-position: center;
    
}
        .header {
            background-color: #263e2a;
            color: white;
            padding: 15px 20px;
            text-align: center;
            position: sticky;
            top: 0;
            z-index: 1000;
        }
        
        .header h1 {
            margin: 0;
            font-size: 24px;
        }

        .navbar {
            display: flex;
            justify-content: center;
            background-color: #21564e;
            padding: 10px;
        }

        .navbar a {
            color: rgb(255, 255, 255);
            text-decoration: none;
            margin: 0 15px;
            font-size: 16px;
            transition: color 0.3s;
        }

        .navbar a:hover {
            color: #010100;
        }

        .main-content {
            text-align: center;
            padding: 40px 20px;
        }

        .main-content h5 {
            font-size: 20px;
            margin-bottom: 20px;
        }

        .footer {
            background-color: #21564e;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        .footer p {
            margin: 0;
            font-size: 14px;
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>Welcome to MY Professional Website</h1>
    </div>

    <div class="navbar">
        <a href="about.jsp">About</a>
        <a href="contact.jsp">Contact</a>
        <a href="logout.jsp">Logout</a>
    </div>

    <div class="main-content">
        <%
            HttpSession httpSession = request.getSession(false);
            if (httpSession != null) {
                String email = (String) httpSession.getAttribute("userEmail");
                if (email != null) {
        %>
     <!--       <p>
    Welcome to the professional portfolio of Aamir Shahab. I am an aspiring software developer with hands-on experience in building Java-based projects and a solid foundation in full-stack development. 
    Passionate about learning new technologies and creating efficient, user-friendly solutions, I excel in Java programming, SQL database management, and front-end technologies like HTML, CSS, and JavaScript. 
    Explore my work and achievements, including innovative projects like a Hotel Management System and 2D/3D Game Simulations, designed with cutting-edge principles of Object-Oriented Programming.
</p>    --> 

        <%
                } else {
                    request.setAttribute("msg", "Your session has expired!");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
            } else {
                request.setAttribute("msg", "Your session has expired!");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        %>
    </div>

    <div class="footer">
        <p>&copy; 2024 My Professional Website. All rights reserved.</p>
    </div>

</body>
</html>
