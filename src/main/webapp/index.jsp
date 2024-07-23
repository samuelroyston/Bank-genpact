<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.tracker.model.User" %>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
if (session == null || session.getAttribute("user") == null) {
    response.sendRedirect("home.jsp");
    return;
}
%>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Task Tracker</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .container {
            background-color: #ffffff;
            padding: 30px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            text-align: center;
            max-width: 400px;
            width: 100%;
        }

        h1 {
            color: #333;
            font-family: 'Roboto', sans-serif;
            margin-bottom: 20px;
        }

        form, a {
            margin: 15px 0;
            display: block;
            text-decoration: none;
            color: #3498db;
            font-weight: bold;
            transition: color 0.3s;
        }

        a:hover {
            color: #2980b9;
        }

        input[type="submit"] {
            padding: 12px 20px;
            border: none;
            background-color: #3498db;
            color: white;
            font-size: 16px;
            font-family: 'Roboto', sans-serif;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome, <%= user.getUsername() %>!</h1>
        <form action="addTask.jsp" method="post">
            <input type="hidden" name="action" value="add">
            <input type="submit" value="Add Task">
        </form>
        
        <a href="TaskServlet?employeeName=<%= user.getUsername() %>">View Tasks</a>
        <a href="charts.jsp?employeeName=<%= user.getUsername() %>">View Charts</a>
        
        <form action="logout.jsp" method="post">
            <input type="submit" value="Logout">
        </form>
    </div>
</body>
</html>
