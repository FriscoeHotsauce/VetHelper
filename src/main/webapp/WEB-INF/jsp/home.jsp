<%@ page import="iastate.vethelper.Patient" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns:th="http://www.thymeleaf.org">
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
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Dashboard</a></li>
                <li><a href="#">Settings</a></li>
                <li><a href="#">Profile</a></li>
                <li><a href="#">Help</a></li>
            </ul>
            <form th:action="@(/page/search}" th:object="${mmrNumber}" method="post" navbar-form navbar-right">
                <input type="text" class="form-control" placeholder="Search MMR Number" th:field="*{id}" name="id">
                <button class="form-control btn btn-primary" type="submit" name="searchPatient"/>Search
            </form>
        </div>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12 main">
            <br>
            <h1 class="page-header">Dashboard</h1>

            <%--<div class="row placeholders">--%>
                <%--<div class="col-xs-6 col-sm-3 placeholder">--%>
                    <%--<img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw=="--%>
                         <%--width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">--%>
                    <%--<h4>Label</h4>--%>
                    <%--<span class="text-muted">Something else</span>--%>
                <%--</div>--%>
            <%--</div>--%>

            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>MMR#</th>
                        <th>Patient Name</th>
                        <th>Date Entered</th>
                        <th>Doctor</th>
                        <th>Notes</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class='clickable-row' data-id='2'>
                        <td>1</td>
                        <td>Fred</td>
                        <td>11/25/16</td>
                        <td>Dr. Strange</td>
                        <td>All better!</td>
                    </tr>
                    <tr class='clickable-row' data-id='3'>
                        <td>2</td>
                        <td>Sparkles</td>
                        <td>11/24/16</td>
                        <td>Dr. Melbourne</td>
                        <td>Still has a small limp</td>
                    </tr>
                    <tr class='clickable-row' data-id='4'>
                        <td>2</td>
                        <td>Sparkles</td>
                        <td>11/1/16</td>
                        <td>Dr. Sindfer</td>
                        <td>Broken leg will begin to heal</td>
                    </tr>
                    <tr class='clickable-row' data-id='5'>
                        <td>3</td>
                        <td>Jumbo</td>
                        <td>10/24/16</td>
                        <td>Dr. Potter</td>
                        <td>False alarm</td>
                    </tr>
                    <tr class='clickable-row' data-id='6'>
                        <td>1</td>
                        <td>Fred</td>
                        <td>10/24/16</td>
                        <td>Dr. Strange</td>
                        <td>Sudden seizures every other day</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <h1 class="page-header">Add New Entry</h1>
        <div class="col-md-12">
            <form th:action="@(/page}" th:object="${patient}" method="post" align="center">
                <div class="form-group">
                    <input class="form-control" type="text" th:field="*{name}" name="name" placeholder="Enter patient name"><br>
                    <input class="form-control" type="text" th:field="*{ownerName}"name="ownerName" placeholder="Enter owner name"><br>
                    <input class="form-control" type="text" th:field="*{MMR}"name="MMR" placeholder="Enter MMR number"><br>
                    <button class="form-control btn btn-primary" type="submit" name="newPatientSubmit"/>Submit<br>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    jQuery(document).ready(function($) {
        $(".clickable-row").click(function() {
            window.document.location = "/home/page/?entry=" + $(this).data("id");
        });
    });
</script>

</body>
</html>
