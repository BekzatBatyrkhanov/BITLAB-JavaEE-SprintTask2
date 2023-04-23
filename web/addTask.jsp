<%--
  Created by IntelliJ IDEA.
  User: bekzatbatyrkhanov
  Date: 16.04.2023
  Time: 23:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addTask"
        style="background-color: #084298 ">
    + Добавить задание
</button>

<div class="modal fade" id="addTask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Новое задание</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="/add-task" method="POST">
                    <div class="mb-3">
                        <label  class="form-label">Наименование:</label>
                        <input type="text" class="form-control" name="task-name" required>
                    </div>
                    <div class="mb-3">
                        <label  class="form-label">Описание:</label>
                        <textarea class="form-control" name="task-description" rows="7" required></textarea>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" >Крайний срок:</label>
                        <input type="date" class="form-control" name="task-deadline" required>
                    </div>
                    <div class="row mt-3">
                        <div class="col-12">
                            <button class="btn btn-primary">ADD TASKS</button>
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

</body>
</html>
