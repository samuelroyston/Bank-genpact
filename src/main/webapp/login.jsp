<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Quicksand', sans-serif;
            background: linear-gradient(135deg, #ffecd2, #fcb69f);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background-color: white;
            padding: 40px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            width: 100%;
            max-width: 400px;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .login-container:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.15);
        }

        h1 {
            font-family: 'Roboto', sans-serif;
            color: #34495e;
            text-align: center;
            margin-bottom: 30px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 8px;
            color: #34495e;
            font-weight: bold;
        }

        input {
            margin-bottom: 15px;
            padding: 12px;
            border: 2px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
        }

        input:focus {
            border-color: #2980b9;
            outline: none;
        }

        button {
            padding: 12px;
            border: none;
            background-color: #2980b9;
            color: white;
            font-size: 18px;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #34495e;
        }

        .error-message {
            color: red;
            text-align: center;
            margin-top: 20px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>Login</h1>
        <form action="AuthServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <button type="submit">Login</button>
        </form>
        <%
            if (request.getParameter("error") != null) {
        %>
        <p class="error-message"><%= request.getParameter("error") %></p>
        <%
            }
        %>
    </div>
</body>
</html>
