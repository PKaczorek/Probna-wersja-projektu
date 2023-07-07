<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>Kategoria Produktów</title>
</head>
<body>
<h1>Kategoria Produktów</h1>
<h2>Kategoria: ${category.isPresent() ? category.get().name : ''}</h2>
<hr>
<h3>Produkty:</h3>
<c:forEach items="${products}" var="product">
  <p>Nazwa: ${product.productName}</p>
  <p>Cena: ${product.price}</p>
  <hr>
</c:forEach>
</body>
</html>