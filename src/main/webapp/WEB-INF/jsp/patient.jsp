<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="org.joda.time.DateTime" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Vet Helper</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <div class="navbar-form navbar-right">
                <a class="form-control btn btn-primary"  href="/home/page">Back</a>
            </div>
        </div>
    </div>
</nav>
<br>
<br>
<br>
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
    out.print("<div class='row container-fluid'>");
    out.print("<h3 class='col col-sm-4'>Patient Name: " + rs.getString(1) + "</h3>");
    out.print("<h3 class='col col-sm-4'>Owner Name: " + rs.getString(2) + "</h3>");
    out.print("<h3 class='col col-sm-4'>MR: " + rs.getString(3) + "</h3></div>");

    String getEntries = "select * from entries where MMR = " + request.getParameter("id");
    ResultSet entries = statement.executeQuery(getEntries);
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