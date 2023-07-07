<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Strona główna</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            flex-direction: row;
        }

        .header {
            background-color: lightgray;
            padding: 10px;
            text-align: center;
        }

        .options {
            background-color: lightgray;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .line {
            width: 100%;
            height: 1px;
            background-color: black;
            margin-top: 10px;
        }

        .sidebar {
            background-color: lightgray;
            padding: 10px;
        }

        .content {
            flex: 4;
            padding: 10px;
        }

        .sidebar a {
            display: block;
            margin-bottom: 10px;
            color: black;
            text-decoration: none;
        }

        .sidebar a:hover {
            color: blue;
        }

        .dashboard {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="sidebar">
        <h3> <a href="/categories"> Kategorie produktów</a> </h3>
        <div class="categories">
            <a href="/categories/1">Kurtki</a>
            <a href="/categories/2">Sukienki</a>
            <a href="/categories/3">Torebki</a>
            <a href="/categories/4">Koszulki</a>
            <a href="/categories/5">Spodnie</a>
        </div>
    </div>
    <div class="content">
        <div class="header">
            <h1>Strona główna</h1>
        </div>
        <div class="line"></div>
        <div class="options">
            <a href="#">O Nas</a>
            <a href="#">Regulamin</a>
            <a href="#">Kontakt</a>
        </div>
        <div class="dashboard">
            <h2>Witaj na stronie głównej!</h2>
        </div>
        <p>Tutaj powinna znajdować sie zawartosc strony internetowej, ale tworca byl zbyt leniwy. :(</p>
        <img src="Pepe-hands.png" alt="Pepe hands">
    </div>
</div>
</body>
</html>