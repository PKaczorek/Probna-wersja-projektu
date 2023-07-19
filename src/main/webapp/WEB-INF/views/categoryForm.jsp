<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

  <title>Formularz kategorii</title>
</head>
<body>
<h1>Formularz kategorii</h1>
<form method="post">
  <label for="name">Nazwa:</label>
  <input type="text" id="name" name="name" value="${category.name}" required>

  <label for="active">Aktywna:</label>
  <input type="checkbox" id="active" name="active" ${category.active ? 'checked' : ''}>

  <input type="hidden" name="id" value="${category.id}">
  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
  <button type="submit">Zapisz</button>
</form>
</body>
</html>