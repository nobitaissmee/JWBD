<%--
  Created by IntelliJ IDEA.
  User: Nobita
  Date: 2/1/2021
  Time: 4:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Product</title>
</head>
<body>
<p><a href="/products">Back to home</a></p>
<form method="post">
    <fieldset>
        <legend>Product Information</legend>
        <table>
            <tr>
                <td>ID:</td>
                <td><label>
                    <input type="text" name="id" placeholder="ID">
                </label></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><label>
                    <input type="text" name="name" placeholder="Name">
                </label></td>
            </tr>
            <tr>
                <td>Price</td>
                <td><label>
                    <input type="text" name="price" placeholder="Price">
                </label></td>
            </tr>
            <tr>
                <td>Description</td>
                <td><label>
                    <input type="text" name="description" placeholder="Description">
                </label></td>
            </tr>
            <tr>
                <td>Manufacturer</td>
                <td><label>
                    <input type="text" name="manufacturer" placeholder="Manufacturer">
                </label></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create Product"></td>
            </tr>
            <tr>
                <td>
                    <c:if test='${requestScope["message"] != null}'>
                        <span class="message">${requestScope["message"]}</span>
                        </c:if>
                </td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
