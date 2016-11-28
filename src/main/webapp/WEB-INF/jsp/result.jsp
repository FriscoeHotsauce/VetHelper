<%--
  Created by IntelliJ IDEA.
  User: Thomas Kearney
  Date: 11/27/2016
  Time: 10:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
    <body>
    <h1>Patient Added</h1>
    <p1> Patient info should be below this. </p1>
    <p th:text="'name: ' + ${patient.name}" />
    <p th:text="'owner name: ' + ${patient.ownerName}" />
    </body>
</html>
