<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<h1><%= "Simple Calculator" %>
</h1>
<form method="post" action="/CalculatorServlet">
    <label >Calculator</label>
    <br>
    <label> First operand</label>
    <input type="text" name="first">
    <br>
    <label>Operator</label>
    <label>
        <select name="operator">
            <option value="+">Add</option>
            <option value="-">Sub</option>
            <option value="*">Multi</option>
            <option value="/">Div</option>
        </select>
    </label>
    <br>
    <label>Second operand</label>
    <input type="text" name="second">
    <br>
    <input type="submit" value="submit">
</form>
</body>
</html>