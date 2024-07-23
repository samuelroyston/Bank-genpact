<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.tracker.model.User" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Task</title>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Quicksand', sans-serif;
            background: linear-gradient(135deg, #ffecd2, #fcb69f);
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            max-width: 600px;
            width: 100%;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .container:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.15);
        }

        h1 {
            font-family: 'Roboto', sans-serif;
            color: #34495e;
            text-align: center;
            margin-bottom: 20px;
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

        input[type="text"], input[type="date"], input[type="time"], textarea {
            padding: 12px;
            margin-bottom: 15px;
            border: 2px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
            box-sizing: border-box;
        }

        input[type="text"]:focus, input[type="date"]:focus, input[type="time"]:focus, textarea:focus {
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

        .error {
            color: red;
            margin-bottom: 15px;
            font-weight: bold;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Add Task</h1>
        <span class="error">
            <% if (request.getAttribute("error") != null) { %>
                <%= request.getAttribute("error") %>
            <% } %>
        </span>
        <form action="TaskServlet" method="post">
            <label for="project">Project:</label>
            <input type="text" id="project" name="project" required>
            
            <label for="date">Date:</label>
            <input type="date" id="date" name="date" required>
            
            <label for="start_time">Start Time:</label>
            <input type="time" id="start_time" name="start_time" required>
            
            <label for="end_time">End Time:</label>
            <input type="time" id="end_time" name="end_time" required>
            
            <label for="task_category">Task Category:</label>
            <input type="text" id="task_category" name="task_category" required>
            
            <label for="description">Description:</label>
            <textarea id="description" name="description" required></textarea>
            
            <input type="hidden" name="action" value="add">
            <button type="submit">Add Task</button>
        </form>
    </div>
</body>
</html>
