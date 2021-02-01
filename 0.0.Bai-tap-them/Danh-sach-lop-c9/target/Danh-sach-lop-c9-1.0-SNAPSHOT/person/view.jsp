<%--
  Created by IntelliJ IDEA.
  User: Nobita
  Date: 2/1/2021
  Time: 2:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Person</title>
</head>
<body>
<h1>Person Information</h1>
<p><a href="/persons">Go back to home</a></p>
<table>
    <tr>
        <td>Name:</td>
        <td>${requestScope["person"].getName()}</td>
    </tr>
    <tr>
        <td>Age:</td>
        <td>${requestScope["person"].getAge()}</td>
    </tr>
</table>
</body>
</html>
