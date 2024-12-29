<%@page import="jakarta.servlet.http.HttpSession"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
     <style>
        /* General body styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #2b6248;
            color: #343a40;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #ebf1edfd;
            border-radius: 10px;
            box-shadow: 0 0px 0px rgba(0, 0, 0, 0.1);
        }

        h1, h2 {
            color: #28586e;
            text-align: start;
        }

        p {
            line-height: 1.4;
            margin: 10px 0;
        }

        ul {
            margin: 10px 0;
            padding-left: 20px;
        }

        ul li {
            margin-bottom: 5px;
        }

        .back-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin: 5px;
            transition: background-color 0.3s ease;
        }

        .back-button:hover {
            background-color: #218838;
        }

        .links {
            text-align: center;
            margin-bottom: 20px;
        }

        .links a {
            text-decoration: none;
            color: rgb(250, 246, 246);
            background-color: #007bff;
            padding: 10px 20px;
            border-radius: 5px;
            margin: 5px;
            display: inline-block;
            transition: background-color 0.3s ease;
        }

        .links a:hover {
            background-color: #0056b3;
            color: #ffffff;
        }
    </style>
</head>
<body>

<div class="container">

<a style="color: black; text-decoration: none;" href="home.jsp" class="back-link">&larr; Back</a>

    <!-- Links and Back Button Section at the Top -->
    <div class="links">
        <a href="https://www.linkedin.com/in/aamir-shahab-90127a340/" target="_blank">LinkedIn</a>
        <a  href="https://github.com/9648-aamir?tab=repositories"  target="_blank">GitHub</a>
    </div>

    <%
        HttpSession httpSession = request.getSession();
        String email = (String) httpSession.getAttribute("userEmail");

        if (email != null) {
    %>
        <h1>About Me</h1>

        <p>Hello! I'm <strong>Aamir Shahab</strong>, a passionate and aspiring <strong>Software Developer</strong> from <strong>Lucknow, India</strong>. With a solid foundation in <strong>Java-based development</strong> and experience in building full-stack projects, I thrive on solving complex problems and crafting efficient, user-friendly solutions.</p>

        <h2>My Skills</h2>
        <ul>
            <li><strong>Java:</strong> Object-Oriented Programming (OOPS), Exception Handling, Collection Framework, Multithreading.</li>
            <li><strong>SQL:</strong> Database Management, SQL Joins, and crafting efficient queries.</li>
            <li><strong>Front-End Development:</strong> HTML, CSS, and JavaScript.</li>
            <li><strong>Advanced Java:</strong> JDBC for seamless database connectivity.</li>
        </ul>

        <h2>My Journey</h2>
        <p>My academic foundation began at <strong>Amity University Lucknow</strong>, where I pursued a <strong>Bachelor of Technology in Computer Science & Engineering</strong>. Earlier, I completed my <strong>Senior Secondary education</strong> at <strong>Bright Way Inter College</strong>, followed by <strong>High School</strong> at <strong>HAL School</strong>, both located in Lucknow, U.P., India.</p>

        <h2>My Mission</h2>
        <p>I am driven by a passion for learning and leveraging the latest technologies to create impactful applications. My goal is to contribute to innovative projects while continuously improving my skills and adhering to the best practices in software development.</p>

       

       
    <% 
        } else { 
            request.setAttribute("msg", "Your session has expired!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
    %>
        <div class="session-expired">Session expired. Redirecting to login...</div>
    <% } %>
</div>

</body>
</html>
