<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>O nas</title>
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
            <c:forEach items="${categories}" var="category">
                <a href="/categories/${category.id}">${category.name}</a>
            </c:forEach>
        </div>
    </div>
    <div class="content">
        <div class="header">
            <h1>Mania Zszywania</h1>
        </div>
        <div class="line"></div>
        <div class="options">
            <a href="/order">Zamówienie</a>
            <a href="/info">O Nas</a>
            <a href="/statute">Regulamin</a>
            <a href="/contact">Kontakt</a>

        </div>
        <div class="dashboard">
        </div>
        <h3> O Nas</h3>
        <p>Marka Mati Made powstała z pasji do tworzenia ubrań dla dzieci oraz z dbałości o komfort maluchów. Działamy na rynku od 2015 roku, a nasze propozycje odzieży dla najmłodszych znakomicie wpisują się w filozofię zrównoważonej mody – dbamy o to z największą starannością.
            W rezultacie wszystkie dostępne elementy garderoby takie jak komplety dresowe lub okolicznościowe, spodnie czy bluzeczki są w stanie spełnić oczekiwania najbardziej wymagających rodziców.
            Wyselekcjonowane materiały, dbałość o detale, a także możliwość wybrania przez Klienta sposobu wykończenia zgodnie z preferencjami to jedne z wielu atutów, które zdecydowanie wyróżniają markę Mati Made na tle konkurencji.</p>
        <h3> Historia </h3>
        <button class="back-button" onclick="window.location.href='/';">Powrót do strony głównej</button>
    </div>
</div>
</body>
</html>