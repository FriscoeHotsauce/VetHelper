<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="org.slf4j.Logger" %>
<%@ page import="org.slf4j.LoggerFactory" %>
<%@ page import="iastate.vethelper.controller.HomePageController" %><%--
  Created by IntelliJ IDEA.
  User: Thomas Kearney
  Date: 11/27/2016
  Time: 1:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
<p>
<p>
<%
try
{

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vethelper", "root" , "vethelper");
    Statement statement = con.createStatement();
    String command = "select * from patients where MMR = " + request.getParameter("id");
    System.out.println(command);
    ResultSet rs = statement.executeQuery(command);
    rs.next();
    out.print("<h1>Patient Name</h1>" + rs.getString(1));
    out.print(rs.getString(2));
    out.print(rs.getString(3));
}

catch(Exception exc)
{
    exc.printStackTrace();
}
%>
</p>
</body>
</html>