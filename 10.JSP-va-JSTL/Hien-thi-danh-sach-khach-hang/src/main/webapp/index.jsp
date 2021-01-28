<%@ page import="java.util.List" %>
<%@ page import="com.example.Hien_thi_danh_sach_khach_hang.Person" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%
    List<Person> personList = new ArrayList<>();
    personList.add(new Person("Mai Van Doan", "1983-08-20", "Ha Noi", "1100"));
    personList.add(new Person("Nguyen Van Nam", "1983-08-21", "Bac Giang", "1101"));
    personList.add(new Person("Nguyen Thai Hoa", "1983-08-22", "Nam Dinh", "1102"));
    personList.add(new Person("Tran Dang Khoa", "1983-08-17", "Ha Tay", "1103"));
    personList.add(new Person("Nguyen Dinh Thi","1983-08-19","Ha Noi","1104"));
%>
<h1>Hien thi danh sach khach hang</h1>
<table>
    <thead>
        <tr>
            <td>Name</td>
            <td>Day Of Birth</td>
            <td>Address</td>
            <td>Image</td>
        </tr>
    </thead>
    <tbody>
    <c:forEach items="<%=personList%>" var="person">
        <tr>
            <td>${person.name}</td>
            <td>${person.dateOfBirth}</td>
            <td>${person.address}</td>
            <td>${person.img}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>