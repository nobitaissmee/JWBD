<%--
  Created by IntelliJ IDEA.
  User: Nobita
  Date: 2/1/2021
  Time: 3:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Manager</title>
</head>
<body>
<p>Product List</p>
<table>
    <tr>
        <td>Name</td>
        <td>Price</td>
        <td>Description</td>
        <td>Manufacturer</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["productList"]}' var="productList">
        <tr>
            <td><a href="${pageContext.request.contextPath}/products?action=view&id=${productList.getId()}">${productList.getName()}</a></td>
            <td>${productList.getPrice()}</td>
            <td>${productList.getDescription()}</td>
            <td>${productList.getManufacturer()}</td>
            <td><a href="${pageContext.request.contextPath}/products?action=edit&id=${productList.getId()}">Edit</a></td>
            <td><a href="${pageContext.request.contextPath}/products?action=delete&id=${productList.getId()}">Delete</a></td>
        </tr>
    </c:forEach>
    <tr>
        <td><a href="${pageContext.request.contextPath}/products?action=create">Creat New Product</a></td>
    </tr>
</table>
</body>
</html>
