<%--
  Created by IntelliJ IDEA.
  User: Nobita
  Date: 2/1/2021
  Time: 5:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Product</title>
</head>
<body>
<h1>Edit Product</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="${pageContext.request.contextPath}/products">Go to back home</a>
</p>
<form method="post">
    <fieldset>
        <legend>Edit</legend>
        <tr>
            <td>Name:</td>
            <td>${requestScope["product"].getName()}</td>
        </tr>
        <tr>
            <td>Name to change:</td>
            <td><label>
                <input type="text" name="name">
            </label></td>
        </tr>
        <tr>
            <td>Price:</td>
            <td>${requestScope["product"].getPrice()}</td>
        </tr>
        <tr>
            <td>Price to change:</td>
            <td><label>
                <input type="text" name="price">
            </label></td>
        </tr>
        <tr>
            <td>Description:</td>
            <td>${requestScope["product"].getDescription()}</td>
        </tr>
        <tr>
            <td>Description to change:</td>
            <td><label>
                <input type="text" name="description">
            </label></td>
        </tr>
        <tr>
            <td>Manufacturer:</td>
            <td>${requestScope["product"].getManufacturer()}</td>
        </tr>
        <tr>
            <td>Manufacturer to change:</td>
            <td><label>
                <input type="text" name="manufacturer">
            </label></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit"></td>
        </tr>
    </fieldset>
</form>
</body>
</html>
