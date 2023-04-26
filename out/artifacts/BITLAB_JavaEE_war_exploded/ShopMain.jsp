<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.techorda.db.Item" %>
<%@ page import="java.lang.reflect.Array" %><%--
  Created by IntelliJ IDEA.
  User: bekzatbatyrkhanov
  Date: 25.04.2023
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/bootstrap.bundle.js"></script>

<html>
<head>
    <title>BITLAB SHOP</title>
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
                    <a class="nav-link active" href="/login">Sign in</a>
                </div>
            </div>
        </div>
    </nav>
</div>

<div class="text-center mt-lg-5">
    <h2 style="font-family: Arial; font-weight: bold">Welcome to BITLAB SHOP</h2>
</div>
<div class="text-center">
    <h4 style="font-family: Arial; color: darkgrey">Electronic devices with high quality and service</h4>
</div>

<div class="container mt-lg-5" style="padding: 0 100px">
<%
    ArrayList<Item> item = (ArrayList<Item>) request.getAttribute("tovar");
    if(item != null) {
        for(int i = 0; i < item.size(); i++) {
            StringBuilder s = new StringBuilder();
            for(int j = 0; j < item.get(i).getDescription().length(); j++) {
                if(item.get(i).getDescription().charAt(j) != ',')
                    s.append(item.get(i).getDescription().charAt(j));
                else s.append("<br>");
            }

        if(i % 3 == 0) {

            %>
    <div class="" style="display: flex; justify-content: space-around; padding: 0 100px">

<%
        }
%>
        <div class="card text-bg-light mb-3 " style="max-width: 18rem; width: 30%; ">
            <div class="card text-center" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title mb-3"><%=item.get(i).getName()%></h5>
                    <h3 class="card-subtitle mb-3" style="color: limegreen">$<%=item.get(i).getPrice()%></h3>
                    <p class="card-text mb3">
                        <%=s%>
                    </p>
                    <a href="#" class="btn btn-success mb-1" style="width: 100%">Buy Now</a>
                </div>
            </div>
        </div>

<%
    if((i+1)%3==0) {
    %>
    </div>
        <%
    }
        }
    }

%>
</div>

</body>
</html>
