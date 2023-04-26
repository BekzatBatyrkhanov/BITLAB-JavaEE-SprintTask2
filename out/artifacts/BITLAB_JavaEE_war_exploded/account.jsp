<%@ page import="kz.bitlab.techorda.db.User" %><%--
  Created by IntelliJ IDEA.
  User: bekzatbatyrkhanov
  Date: 26.04.2023
  Time: 03:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link rel = "stylesheet" type = "text/css" href = "/css/bootstrap.css">
<link rel = "stylesheet" type = "text/css" href = "/css/style.css">
<script defer src="/js/bootstrap.js"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    User user = (User)session.getAttribute("currentUser");
%>

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

    <div class = "welcome">
        <div class = "position-absolute start-50 translate-middle mt-5">
            <h1><strong><%=user.getFullName()%></strong></h1>
        </div>
        <div class = "position-absolute start-50 translate-middle-x mt-5">
            <h4 class = "text-secondary mt-5">This is your profile edge</h4>
        </div>

    </div>

</div>
</body>
</html>
