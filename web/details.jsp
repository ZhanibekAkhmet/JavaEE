<%@ page import="models.Task" %><%--
  Created by IntelliJ IDEA.
  User: 01001
  Date: 11.03.2023
  Time: 19:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="container mt-3">
    <div class="row" >
        <div class="col-6 mx-auto">
            <% Task task = (Task) request.getAttribute("task");%>
            <form action="/editTask?id=<%=task.getId()%>" method="post">
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Наименование</label>
                    <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Наименование:" name="i_name" value="<%=task.getName()%>">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Описание</label>
<%--                    <input type="text" class="form-control" id="exampleFormControlInput123" placeholder="Описание:" name="i_description" value="<%=task.getDescription()%>">--%>
                    <textarea class="form-control" rows="10" placeholder="Описание:" name="i_description" ><%=task.getDescription()%></textarea>
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Крайний срок</label>
                    <input type="date" class="form-control" id="exampleFormControlInput12" name="i_deadLineDate" value="<%=task.getDeadlineDate()%>">
                </div>
                <label for="exampleFormControlInput1" class="form-label">Задание выполнено</label>
                <select class="form-select" aria-label="Default select example" name="status">
                    <option value="false" <%if (task.isVipolneno()==false){%> selected<%}%>>НЕТ</option>
                    <option value="true" <%if (task.isVipolneno()==true){%> selected<%}%>>ДА</option>
                </select>
                <br><br>
                <button class="btn btn-success" >сохранить</button>
<%--                <a class="btn btn-danger" href="/DeleteTask?id=<%=task.getId()%>">удалить</a>--%>
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteBook">
                    Удалить
                </button>

                <!-- Modal -->

            </form>
        </div>
    </div>
    <div class="modal fade" id="deleteBook" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="/DeleteTask" method="post">
                    <input type="hidden" name="id" value="<%=task.getId()%>">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="staticBackdropLabel">Подтверждение удаления</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <h5 class="text-center">Вы уверены?</h5>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Нет</button>
                        <button class="btn btn-danger">Удалить</button>
                    </div>
                </form>

            </div>
        </div>
    </div>

</div>



</body>
</html>
