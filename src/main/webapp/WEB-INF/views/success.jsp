<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sukces</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .message {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .back-button {
            padding: 10px 20px;
            background-color: lightgray;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            color: black;
            cursor: pointer;
        }

        .back-button:hover {
            background-color: gray;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Sukces</h1>
    <p class="message">E-mail został wysłany.</p>
    <a class="back-button" href="/">Powrót do strony głównej</a>
</div>
</body>
</html>