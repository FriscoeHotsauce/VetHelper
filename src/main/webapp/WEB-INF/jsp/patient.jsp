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
    <head>
        <title>Login</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
              integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
              integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
                integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
                crossorigin="anonymous"></script>
    </head>
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
    String getPatient = "select * from patients where MMR = " + request.getParameter("id");
    ResultSet rs = statement.executeQuery(getPatient);
    rs.next();
    out.print("<h2 class='page-header'>Patient Name: " + rs.getString(1) + "</h2>");
    out.print("<h2 class='page-header'>Owner Name: " + rs.getString(2) + "</h2>");
    out.print("<h2 class='page-header'>MR ID: " + rs.getString(3) + "</h2>");

    String getEntries = "select * from entries where MMR = " + request.getParameter("id");
    ResultSet entries = statement.executeQuery(getEntries);
    out.print("<h2 class='page-header'>Data</h2>");
    out.print("<table class=table table-striped>" +
            "       <thead>" +
            "           <tr>" +
            "               <th>Date</th>" +
            "               <th>PCV</th>" +
            "               <th>TP</th>" +
            "               <th>Azo</th>" +
            "               <th>Glu</th>" +
            "           </tr>" +
            "       </thead>" +
        "           <tbody>");
    while(entries.next())
    {
    	out.print("<tr>");
        for (int i = 2; i <= 6; i++)
        {
        	out.print("<td>" + entries.getString(i) + "</td>");
        }
        out.print("</tr>");
    }
}

catch(Exception exc)
{
    exc.printStackTrace();
}
%>
</p>
</body>
</html>