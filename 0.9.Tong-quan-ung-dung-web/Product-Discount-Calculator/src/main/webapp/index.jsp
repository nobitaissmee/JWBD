<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Discount Calculator</title>
</head>
<body>
<h1><%= "Input Product!" %>
</h1>
<form action="/product" method="post" >
    <input name="description" type="text"  placeholder="Product Description">
    <input name="price" type="number" step="any" min="0" placeholder="List Price">
    <input name="discount-percent" type="number" min="0" max="100" placeholder="Discount Percent">
    <input type="submit" value="Calculate Discount">
</form>
</body>
</html>