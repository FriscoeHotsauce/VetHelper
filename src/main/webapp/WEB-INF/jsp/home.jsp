<%@ page import="iastate.vethelper.Patient" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>VetMedHelper</title>
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
    <input type="text" name="searchName"><br>
    <input type="submit" value="Submit"><br>
    <br>
    <br>
    Add New Patient<br>
    <form action="#" th:action="@(/page}" th:object="${patient}" method="post" align="center">
        <input type="text" th:field="*{name}" name="patientNameInput" value="Enter patient name here"><br>
        <input type="text" th:field="*{ownerName}"name="ownerNameInput" value="Enter owner name here"><br>
        <input type="submit" name="newPatientSubmit" value="Submit"><br>
    </form>
</p>
</html>
