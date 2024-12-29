<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Register Page</title>

    <style>
        /* General body styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fa;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }

        .register-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #e9ecef;
            padding: 0px;
            box-sizing: border-box;
        }

        .register-form {
            background-color: #fff;
            padding: 15px 30px;
            border-radius: 9px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
            text-align: center;
        }

        .register-form h3 {
            color: #343a40;
            margin-bottom: 0px;
            font-size: 1.5rem;
        }

        .register-form label {
            display: block;
            margin-bottom: 0px;
            font-weight: bold;
            color: #495057;
            text-align: left;
            font-size: 0.9rem;
        }

        .register-form input[type="text"],
        .register-form input[type="email"],
        .register-form input[type="password"],
        .register-form input[type="number"],
        .register-form input[type="date"] {
            width: 100%;
            padding: 5px;
            margin-bottom: 6px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #f8f9fa;
            font-size: 1rem;
        }

        .register-form input[type="radio"] {
            margin-right: 0px;
        }

        .register-form input[type="submit"] {
            background-color: #007bff;
            color: white;
            cursor: pointer;
            border: none;
            padding: 9px;
            font-size: 1rem;
            width: 30%;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        .register-form input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .message {
            color: red;
            font-size: 0.9rem;
            margin-bottom: 20px;
            text-align: center;
        }

        @media (max-width: 600px) {
            .register-form {
                padding: 20px;
            }

            .register-form h3 {
                font-size: 1.25rem;
            }

            .register-form label {
                font-size: 0.8rem;
            }

            .register-form input {
                font-size: 0.9rem;
            }

            .register-form input[type="submit"] {
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>

<div class="register-container">
    <div class="register-form">

        <% 
            String message = (String) request.getAttribute("msg");
            if (message != null) {
        %>
            <div class="message"><%= message %></div>
        <% } %>

        <h3>Register Form</h3>

        <form action="userRegister" method="post">
            <label>USER-ID</label><br>
            <input type="number" placeholder="Enter user id" name="userId" required><br>
            <label>USER-Name</label><br>
            <input type="text" placeholder="Enter user name" name="userName" required><br>
            <label>USER-Email</label><br>
            <input type="email" placeholder="Enter user email" name="userEmail" required><br>
            <label>USER-Password</label><br>
            <input type="password" placeholder="Enter user password" name="password" required><br>
            <label>USER-DOB</label><br>
            <input type="date" name="userDob" required><br>
            <label>USER-Gender</label><br>
            <input type="radio" name="gender" value="Male" required>
            <label for="male" style="display: inline;">Male</label>
            <input type="radio" name="gender" value="Female" required>
            <label for="female" style="display: inline;">Female</label><br>
            <input type="submit" name="register" value="Register">
        </form>
    </div>
</div>

</body>
</html>
