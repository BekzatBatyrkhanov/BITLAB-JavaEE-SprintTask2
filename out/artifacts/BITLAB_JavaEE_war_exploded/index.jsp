<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.techorda.db.Tasks" %><%--
  Created by IntelliJ IDEA.
  User: bekzatbatyrkhanov
  Date: 16.04.2023
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/bootstrap.bundle.js"></script>


<html>
    <head>
        <title>Tasks</title>
    </head>
    <body>
    <%@include file="navbar.jsp"%>


    <div class="container">

        <div class="row mt-3">
            <div class="col-12">
                <%@include file="addTask.jsp"%>
            </div>
        </div>


        <div class="row mt-3">
            <div class="col-12">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Наименование</th>
                        <th scope="col">Крайний срок</th>
                        <th scope="col">Выполнено</th>
                        <th scope="col">Детали</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                    ArrayList<Tasks> tasks = (ArrayList<Tasks>)request.getAttribute("tasks");
                    if(tasks != null) {
                        for(int i = 0; i < tasks.size(); i++) {

                    %>
                    <tr>
                        <th scope="row"><%=tasks.get(i).getId()%></th>
                        <td><%=tasks.get(i).getName()%></td>
                        <td><%=tasks.get(i).getDeadlineDate()%></td>
                        <td><%=tasks.get(i).getDone()%></td>
                        <td><a class="btn btn-primary" style="background-color: #084298;"
                               href="/details?task_id=<%=tasks.get(i).getId()%>">
                            Details
                        </a></td>
                    </tr>
                    <%
                        }
                    }
                    %>
                    </tbody>
                </table>
            </div>
    </div>
    </div>
    </body>
</html>
