<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>Lista kategorii</title>
</head>
<body>
<h1>Lista kategorii</h1>
<table>
  <tr>
    <th>ID</th>
    <th>Nazwa</th>
    <th>Aktywna</th>
    <th>Akcje</th>
  </tr>
  <c:forEach items="${category}" var="category">
    <tr>
      <td>${category.id}</td>
      <td>${category.name}</td>
      <td>${category.active ? 'Tak' : 'Nie'}</td>
      <td>
        <a href="/categories/edit/${category.id}">Edytuj</a>
        <a href="/categories/delete/${category.id}">Usuń</a>
      </td>
    </tr>
  </c:forEach>
</table>
<a href="/categories/create">Dodaj nową kategorię</a>
</body>
</html>