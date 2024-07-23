<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&family=Poppins:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Nunito', sans-serif;
            background: linear-gradient(135deg, #a8edea, #fed6e3);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 20px;
            font-family: 'Poppins', sans-serif;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
        }

        form {
            background-color: white;
            padding: 30px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            text-align: center;
            width: 100%;
            max-width: 400px;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        form:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.15);
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
            text-align: left;
            font-weight: bold;
        }

        input[type="text"], input[type="password"] {
            width: calc(100% - 20px);
            padding: 12px;
            margin-bottom: 15px;
            border: 2px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
            font-size: 16px;
        }

        input[type="text"]:focus, input[type="password"]:focus {
            border-color: #2980b9;
            outline: none;
        }

        button {
            padding: 12px 24px;
            background-color: #2980b9;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 18px;
            font-family: 'Poppins', sans-serif;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #2c3e50;
        }

        .error-message {
            color: red;
            margin-top: 10px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h1>Register</h1>
    <form action="RegisterServlet" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        <button type="submit">Register</button>
    </form>
    <% 
        String errorMessage = request.getParameter("error");
        if (errorMessage != null) {
    %>
        <p class="error-message"><%= errorMessage %></p>
    <% 
        }
    %>
</body>
</html>
