<%@ page import="java.util.List" %>
<%@ page import="com.tracker.model.User" %>
<%@ page import="com.tracker.dao.UserDAO" %>
<%@ page import="com.tracker.dbconnection.DBConnection" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null || user.getRoleId() != 2) { // Assuming 2 is the Admin role
        response.sendRedirect("adminLogin.jsp");
        return;
    }

    UserDAO userDAO = new UserDAO(DBConnection.getConnection());
    List<User> employees = userDAO.getAllEmployees();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h2, h3 {
            color: #34495e;
        }

        .table-container {
            width: 100%;
            max-width: 1000px;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #2980b9;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        a {
            text-decoration: none;
            color: #2980b9;
            transition: color 0.3s;
        }

        a:hover {
            color: #2c3e50;
        }

        .logout-container {
            margin-top: 20px;
            text-align: center;
        }

        input[type="submit"] {
            padding: 12px 20px;
            background-color: #e74c3c;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #c0392b;
        }

        .welcome-message {
            font-family: 'Roboto', sans-serif;
            font-size: 20px;
            color: #2c3e50;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <h2>Admin Dashboard</h2>
    <p class="welcome-message">Welcome, Admin</p>
    <div class="table-container">
        <h3>All Employees</h3>
        <table>
            <tr>
                <th>Employee Name</th>
                <th>Role</th>
                <th>Action</th>
            </tr>
            <% for (User employee : employees) { %>
            <tr>
                <td><%= employee.getUsername() %></td>
                <td><%= employee.getRoleId() == 1 ? "Associate" : "Admin" %></td>
                <td><a href="viewEmployeeTasks.jsp?employeeName=<%= employee.getUsername() %>">View Tasks</a></td>
            </tr>
            <% } %>
        </table>
    </div>
    <div class="logout-container">
        <form action="logout.jsp" method="post">
            <input type="submit" value="Logout">
        </form>
    </div>
</body>
</html>
