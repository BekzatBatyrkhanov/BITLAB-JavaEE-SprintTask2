<%--
  Created by IntelliJ IDEA.
  User: bekzatbatyrkhanov
  Date: 26.04.2023
  Time: 02:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/bootstrap.bundle.js"></script>
<script defer src="/js/bootstrap.js"></script>

<html>
<head>
    <title>Sign In</title>
</head>
<body>
<div class="container" style="padding: 0 40px">
    <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="/items"><b>BITLAB SHOP</b></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse position-absolute top-0 end-0" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link active" aria-current="page" href="#">Top Sales</a>
                    <a class="nav-link active" href="#">New Sales</a>
                    <a class="nav-link active" href="#">By Category</a>
                    <a class="nav-link active" href="#">Sign in</a>
                </div>
            </div>
        </div>
    </nav>

    <%
        if (request.getAttribute("error") != null) {
    %>
    <div class="alert alert-danger mt-3" style="width: 50%; margin-left: 300px;" role="alert">
        Incorrect <b>email</b> or <b>password</b>
    </div>
    <%
        }
    %>

    <form action = "/login" method = "post">
        <div style="width: 50%; margin-left: 300px; margin-top: 10px">
            <div class  = "row">
                <div class = "col-12">
                    <label>Email :</label>
                </div>
            </div>
            <div class = "row mt-2">
                <div class = "col-12">
                    <input type = "email" class="form-control" name = "email" required placeholder="zver@gmail.com">
                </div>
            </div>
            <div class = "row mt-3">
                <div class = "col-12">
                    <label>Password :</label>
                </div>
            </div>
            <div class = "row mt-2">
                <div class = "col-12">
                    <input type = "password" class="form-control" name = "password" required >
                </div>
            </div>
            <div class = "row mt-3">
                <div class = "col-12">
                    <button class = "btn btn-success">Sign In</button>
                </div>
            </div>
        </div>
    </form>
</div>
</body>
</html>
