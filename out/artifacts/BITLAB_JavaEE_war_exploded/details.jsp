<%@ page import="kz.bitlab.techorda.db.Tasks" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/bootstrap.bundle.js"></script>

<html>
<head>
    <title></title>
</head>
<body>
    <%@include file="navbar.jsp"%>
        <div class="container mt-5">
            <%
                Tasks task = (Tasks) request.getAttribute("taskDetail");
                if(task != null) {
            %>
            <div class="mb-3">
                <label  class="form-label">Наименование:</label>
                <input type="text" class="form-control" readonly value="<%=task.getName()%>">
            </div>
            <div class="mb-3">
                <label  class="form-label">Описание:</label>
                <textarea class="form-control" readonly rows="7"><%=task.getDescription()%></textarea>
            </div>
            <div class="mb-3">
                <label class="form-label" >Крайний срок:</label>
                <input type="date" class="form-control" readonly value="<%=task.getDeadlineDate()%>">
            </div>
            <div class="mb-3">
                <label class="form-label">Выполнено:</label>
                <input type="text" class="form-control" readonly value="<%=task.getDone()%>">
            </div>
            <div class="row mt-3">
                <div class="col-12">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#editTask"
                            style="background-color: #084298 ">
                        EDIT TASK
                    </button>

                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteTask">
                        Delete Task
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="deleteTask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form action="/delete-task" method="post">
                                    <input type="hidden" name="task_id" value="<%=task.getId()%>">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5">Confirm Delete</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <h5>Are you sure?</h5>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                                        <button class="btn btn-danger">Yes</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="modal fade" id="editTask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Новое задание</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form action="/save-task" method="POST">
                                        <input type="hidden" name="task-id" value="<%=task.getId()%>">
                                        <div class="mb-3">
                                            <label  class="form-label">Наименование:</label>
                                            <input type="text" class="form-control" name="task-name" value="<%=task.getName()%>">
                                        </div>
                                        <div class="mb-3">
                                            <label  class="form-label">Описание:</label>
                                            <textarea class="form-control" name="task-description" rows="7"><%=task.getDescription()%></textarea>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label" >Крайний срок:</label>
                                            <input type="date" class="form-control" name="task-deadline" value="<%=task.getDeadlineDate()%>">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Выполнено:</label>
                                            <select class="form-select" name="task_done">
                                                <option <%=task.getDone().equals("Да")?"selected":""%>>Да</option>
                                                <option <%=task.getDone().equals("Нет")?"selected":""%>>Нет</option>
                                            </select>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-12">
                                                <button class="btn btn-primary">SAVE</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <%--                <button type="button" class="btn btn-primary">Добавить</button>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%
                }
                else {
            %>
                <h2 class="text-center text-lg-center">TASK NOT FOUND</h2>
                <%
                    }
                %>
        </div>
    </div>
</body>
</html>
