<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&family=Raleway:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            background: linear-gradient(135deg, #ff9a9e 0%, #fad0c4 100%);
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .container:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.15);
        }

        h2 {
            font-family: 'Raleway', sans-serif;
            color: #2c3e50;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
            text-align: left;
            font-weight: bold;
        }

        input[type="text"], input[type="password"] {
            width: calc(100% - 24px);
            padding: 12px;
            margin-bottom: 20px;
            border: 2px solid #ccc;
            border-radius: 8px;
            box-sizing: border-box;
            font-size: 16px;
        }

        input[type="text"]:focus, input[type="password"]:focus {
            border-color: #2980b9;
            outline: none;
        }

        input[type="submit"] {
            padding: 12px 24px;
            background-color: #2980b9;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 18px;
            font-family: 'Raleway', sans-serif;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #2c3e50;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Admin Login</h2>
        <form action="AuthServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>
