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
            <form action="search" th:object="${mmrNumber}" method="get" class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search MMR Number" th:field="*{id}" name="id">
            <button class="form-control btn btn-primary" type="submit">Search</button>
        </form>
        </div>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <h1 class="page-header">Add New Entry</h1>
        <div class="col-md-12">
            <form action="#" th:action="@(/page}" th:object="${entry}" method="post">
                <div class="form-group">
                    <input class="form-control" type="text" th:field="*{MMR}" name="MMR" placeholder="Enter MMR #"><br>
                    <input class="form-control" type="text" th:field="*{PCV}" name="PCV" placeholder="Packed Cell Volume"><br>
                    <input class="form-control" type="text" th:field="*{TP}" name="TP" placeholder="Total Protein"><br>
                    <input class="form-control" type="text" th:field="*{Azo}" name="Azo" placeholder="Azostix"><br>
                    <input class="form-control" type="text" th:field="*{Glu}" name="Glu" placeholder="Glucose"><br>
                    <input class="form-control" type="text" th:field="*{Lac}" name="Lac" placeholder="Lactate"><br>
                    <input class="form-control" type="text" th:field="*{Ket}" name="Ket" placeholder="Ketones"><br>
                    <input class="form-control" type="text" th:field="*{PT}" name="PT" placeholder="Prothrombin time"><br>
                    <input class="form-control" type="text" th:field="*{PTT}" name="PTT" placeholder="Partial Prothrombin time"><br>
                    <button class="form-control btn btn-primary" type="submit" name="newEntrytSubmit">Submit</button><br>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>
