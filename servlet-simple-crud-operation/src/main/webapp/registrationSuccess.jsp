<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Registration Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fa;
            margin: 0;
            padding: 0;
            text-align: center;
        }
        .container {
            margin-top: 50px;
        }
        h2 {
            color: green;
        }
        .message {
            font-size: 1.2rem;
            color: green;
            margin-bottom: 20px;
        }
        .time {
            font-size: 1rem;
            margin-bottom: 20px;
        }
        .back-button {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            font-size: 1rem;
        }
        .back-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Registration Successful</h2>
    <div class="message">
        <%= request.getAttribute("message") %>
    </div>
    <div class="time">
        Time of Registration: <%= request.getAttribute("time") %>
    </div>
    <a href="login.jsp" class="back-button">Back to Login</a>
</div>

</body>
</html>
