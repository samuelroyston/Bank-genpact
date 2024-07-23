<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Task Management</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&family=Open+Sans:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #e8f0f2;
            color: #333;
        }

        h2, h3 {
            color: #2c3e50;
        }

        h2 {
            text-align: center;
            padding: 20px 0;
            background: linear-gradient(90deg, #ff6b6b, #f06595);
            color: white;
            margin: 0;
            font-family: 'Open Sans', sans-serif;
            letter-spacing: 2px;
        }

        h3 {
            margin-top: 30px;
            text-align: center;
            font-family: 'Open Sans', sans-serif;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        ul li {
            margin: 10px 0;
            text-align: center;
        }

        a {
            text-decoration: none;
            color: #3498db;
            font-weight: bold;
            transition: color 0.3s;
        }

        a:hover {
            color: #e74c3c;
        }

        .section {
            margin: 20px auto;
            padding: 20px;
            width: 80%;
            max-width: 600px;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            transition: transform 0.3s;
        }

        .section:hover {
            transform: scale(1.05);
        }
    </style>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const sections = document.querySelectorAll('.section');
            sections.forEach(section => {
                section.addEventListener('mouseenter', () => {
                    section.style.backgroundColor = '#f9f9f9';
                });

                section.addEventListener('mouseleave', () => {
                    section.style.backgroundColor = 'white';
                });
            });
        });
    </script>
</head>
<body>
    <h2>Welcome to the Employee Task Management System</h2>
    
    <div class="section">
        <h3>Admin Section</h3>
        <ul>
            <li><a href="adminLogin.jsp">Admin Login</a></li>
        </ul>
    </div>

    <div class="section">
        <h3>User Section</h3>
        <ul>
            <li><a href="login.jsp">User Login</a></li>
            <li><a href="register.jsp">User Registration</a></li>
        </ul>
    </div>
</body>
</html>
