<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login-Page</title>

    <style>
    /* General body styling */
    body {
    font-family: Arial, sans-serif;
    background-color: #2c400f; /* Black background */
    margin: 0;
    padding: 0;
}


    
    .login-container {
        width: 100%;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        /* background-color: #e9ecef; */
    }


    .login-form {
        background-color: #e6ebd9;
        padding: 40px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 400px;
        text-align: center;
    }

    .login-form h2 {
        color: #343a40;
        margin-bottom: 20px;
    }

    
    .login-form label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
        color: #495057;
        text-align: left;
    }

#user{
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
    }



    .login-form input[type="email"],
    .login-form input[type="password"] {
        background-color: #f8f9fa;
    } 

    .login-form input[type="submit"] {
        width: 20%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
        background-color: #007bff;
        color: white;
        cursor: pointer;
        border: none;
        padding: 12px;
        font-size: 16px;
        transition: background-color 0.3s ease;
    }

    .login-form input[type="submit"]:hover {
        background-color: #0056b3;
    }


    .error-message {
        color: red;
        font-size: 14px;
        margin-bottom: 20px;
    }



</style>
</head>
<body>

<div class="login-container">
    <div class="login-form">
        <h2>Login</h2>

        <%
            String message = (String) request.getAttribute("msg");
            if (message != null) {
        %>
        <div class="error-message"><%= message %></div>
        <% } %>

        <form action="loginUser" method="post">
            <label>USERMAIL:</label><br>
            <input id="user" type="email" placeholder="enter your email" name="userEmail"><br>
            <label>USERPASSWORD:</label><br>
            <input id="user" type="password" placeholder="enter your password" name="password"><br>

            <div class="button-container">
                <input id="button" type="submit" value="LOGIN">
            </div>
        </form>

        <div class="register-link">
            <a href="register.jsp">Don't have an account? Register here.</a>
        </div>
    </div>
</div>

</body>
</html>
