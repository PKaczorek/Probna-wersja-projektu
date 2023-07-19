<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>Edytuj kategorię</title>
</head>
<body>
<h1>Edytuj kategorię</h1>
<form:form method="post">
  <input type="hidden" name="id" value="${category.id}" />
  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
  <label for="name">Nazwa:</label>
  <input type="text" id="name" name="name" value="${category.name}" />

  <label for="active">Aktywna:</label>
  <input type="checkbox" id="active" name="active" checked="${category.active}" />

  <input type="submit" value="Zapisz" />
</form:form>
</body>
</html>