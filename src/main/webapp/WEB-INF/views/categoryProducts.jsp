<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>Kategoria Produktów</title>
  <link rel="stylesheet" href="/css/styles.css">
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

    .options a {
      margin: 0 10px;
      color: black;
      text-decoration: none;
    }

    .options a:hover {
      color: blue;
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
      <h1>Mania Zszywania</h1>
    </div>
    <div class="line"></div>
    <div class="options">
      <a href="/order">Zamówienie</a>
      <a href="/info">O Nas</a>
      <a href="/statute">Regulamin</a>
      <a href="/contact">Kontakt</a>
    </div>
    <h2>Kategoria: ${category.isPresent() ? category.get().name : ''}</h2>
    <hr>
    <h3>Produkty:</h3>
    <c:forEach items="${products}" var="product">
      <p>Nazwa: ${product.productName}</p>
      <p>Cena: ${product.price}</p>
      <div class="image-gallery">
        <c:forEach items="${product.images}" var="image">
          <img src="${image.imagePath}" alt="Zdjęcie">
        </c:forEach>
        <button class="previous-button">Previous</button>
        <button class="next-button">Next</button>
      </div>
      <hr>
    </c:forEach>
    <button class="back-button" onclick="window.location.href='/';">Powrót do strony głównej</button>
  </div>
</div>
<script src="/js/script.js"></script>
</body>
</html>