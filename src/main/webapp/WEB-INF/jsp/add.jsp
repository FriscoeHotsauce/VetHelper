<%--
  Created by IntelliJ IDEA.
  User: Michael Phippen
  Date: 11/27/2016
  Time: 10:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Getting Started: Handling Form Submission</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
    <p th:text="'id: ' + ${patient.name}">
    <p th:text="'content: ' + ${patient.owner}">
</body>
</html>
