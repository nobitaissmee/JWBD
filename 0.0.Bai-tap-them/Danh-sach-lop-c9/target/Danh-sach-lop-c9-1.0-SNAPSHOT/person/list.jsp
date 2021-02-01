<%--
  Created by IntelliJ IDEA.
  User: Nobita
  Date: 2/1/2021
  Time: 2:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>C9 List</title>
</head>
<body>
<h1>List C9</h1>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Age</td>
    </tr>
<c:forEach items='${requestScope["persons"]}' var="persons">
    <tr>
        <td><a href="${pageContext.request.contextPath}/persons?action=view&id=${persons.getId()}">${persons.getName()}</a></td>
        <td>${persons.getAge()}</td>
    </tr>
</c:forEach>
</table>
</body>
</html>
