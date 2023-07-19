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
            <h2>Dane Kontaktowe</h2>
        </div>
        <table>
            <tr>
                <td class="title">Kontakt telefoniczny:</td>
                <td class="data">tel. 123456789</td>
                <td colspan="2" class="info">(od poniedziałku do piątku, w godzinach 8:00-16:00)</td>
            </tr>
            <tr>
                <td class="title">Kontakt mailowy:</td>
                <td class="data">mania-zszywania@gmail.com</td>
            </tr>
            <tr>
                <td class="title">Facebook:</td>
                <td class="data"><a href="https://www.facebook.com/profile.php?id=100090302913495">Facebook - Mania Zszywania</a></td>
            </tr>
            <tr>
                <td class="title">Vinted:</td>
                <td class="data"><a href="https://www.vinted.pl/member/145130629-maniazszywania?fbclid=IwAR1eL_Mgr8556tF5YilZejbR6lLlgvSf7hxKO4lEMod7lFMCPW2jbtZ-mFI">Vinted - Mania Zszywania</a></td>
            </tr>
        </table>
        <button class="back-button" onclick="window.location.href='/';">Powrót do strony głównej</button>

    </div>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        td {
            padding: 8px;
            border-bottom: 1px solid #ccc;
        }

        .title {
            font-weight: bold;
            width: 30%;
        }

        .info {
            font-style: italic;
            text-align: center;
        }
    </style>
    </div>
</div>

</body>
</html>