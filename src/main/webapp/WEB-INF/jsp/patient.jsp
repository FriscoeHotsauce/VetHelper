<%--
  Created by IntelliJ IDEA.
  User: Thomas Kearney
  Date: 11/27/2016
  Time: 1:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Title</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
<p>
<p th:text="'MMR: ' + ${mmrNumber.id}" />
    <br>
    <br>
    <br>
    Data for this date:  <input type="text" name="fname" value="MM/DD/YY"><br>
    <input type="submit" value="Submit"><br>
    w:<br>
    x:<br>
    y:<br>
    z:<br>
</p>
</body>
</html>