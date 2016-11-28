<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>VetMedHelper</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
<p>
    <a href="">Sign Out</a> <a href="">Add Admin</a>
</p>
<h1 align="center">VetHelper</h1>
</body>
<p align="center">
    <br>
    <br>
    Search Patient
    <br>
    <input type="text" name="fname"><br>
    <input type="submit" value="Submit"><br>
    <br>
    <br>
    <form action="page/add" th:action="@{/patient}" th:object="${patient}" method="post">
        Add New Patient<br>
        <input type="text" name="pname" th:field="*{name}" value="Enter patient name here"><br>
        <input type="text" name="oname" th:field="*{owner}" value="Enter owner name here"><br>
        <input type="submit" value="Submit"><br>
    </form>
</p>
</html>
