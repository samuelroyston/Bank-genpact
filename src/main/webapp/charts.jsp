<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee Task Charts</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #e0f7fa;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            max-width: 800px;
            width: 90%;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1 {
            color: #00796b;
            margin-bottom: 20px;
            font-family: 'Roboto', sans-serif;
        }

        form {
            margin-bottom: 20px;
            padding: 20px;
            border: 2px solid #b2ebf2;
            border-radius: 10px;
            background-color: #e0f7fa;
        }

        form h2 {
            margin: 0 0 10px;
            color: #004d40;
            font-family: 'Roboto', sans-serif;
        }

        input[type="submit"] {
            padding: 12px 25px;
            background-color: #00796b;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #004d40;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 25px;
            text-decoration: none;
            background-color: #00796b;
            color: white;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #004d40;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Task Charts for <%= request.getParameter("employeeName") %></h1>
        
        <form action="daily.jsp">
            <h2>See where you have spent most of your time today</h2>
            <input type="hidden" name="action" value="viewCharts">
            <input type="hidden" name="type" value="daily">
            <input type="hidden" name="employeeName" value="<%=request.getParameter("employeeName") %>">
            <input type="submit" value="Daily Task">
        </form>

        <form action="weekly.jsp">
            <h2>See where you have spent most of your time this week</h2>
            <input type="hidden" name="action" value="viewCharts">
            <input type="hidden" name="type" value="weekly">
            <input type="hidden" name="employeeName" value="<%=request.getParameter("employeeName") %>">
            <input type="submit" value="Weekly Task">
        </form>

        <form action="monthly.jsp">
            <h2>See where you have spent most of your time this month</h2>
            <input type="hidden" name="action" value="viewCharts">
            <input type="hidden" name="type" value="monthly">
            <input type="hidden" name="employeeName" value="<%=request.getParameter("employeeName") %>">
            <input type="submit" value="Monthly Task">
        </form>

        <a href="index.jsp">Back</a>
    </div>
</body>
</html>
