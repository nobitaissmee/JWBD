<%--
  Created by IntelliJ IDEA.
  User: Nobita
  Date: 2/2/2021
  Time: 8:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Product</title>
</head>
<body>
<h1>Delete Product</h1>
<form method="post">
    <fieldset>
        <legend>Product</legend>
        <tr>
            <td>Name:</td>
            <td>${requestScope["product"].getName()}</td>
        </tr>
        <tr>
            <td>Price:</td>
            <td>${requestScope["product"].getPrice()}</td>
        </tr>
        <tr>
            <td>Description</td>
            <td>${requestScope["product"].getDescription()}</td>
        </tr>
        <tr>
            <td>Manufacturer</td>
            <td>${requestScope["product"].getManufacturer()}</td>
        </tr>
        <tr>
            <td></td>
            <td><button onclick="return confirm('Ban có muốn xóa không?')">Remove</button>
            </td>
        </tr>
    </fieldset>
</form>
</body>
</html>
