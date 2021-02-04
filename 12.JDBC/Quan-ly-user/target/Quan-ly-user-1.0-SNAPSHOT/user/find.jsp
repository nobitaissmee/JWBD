<%--
  Created by IntelliJ IDEA.
  User: Nobita
  Date: 2/3/2021
  Time: 9:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Find User</title>
</head>
<body>
<center>
<p><a href="users">Back to home</a></p>
<form method="post">
    <h1 style="color: red">User Find</h1>
    <label>Country Name:</label>
    <input type="text" name="country">
    <input type="submit">
</form>
</center>
<c:if test="${message != null}">
    <p>Not found!</p>
</c:if>
<c:if test="${listUser != null }">
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                    <a href="/users?action=edit&id=${user.id}">Edit</a>
                    <a href="/users?action=delete&id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</c:if>
</body>
</html>
