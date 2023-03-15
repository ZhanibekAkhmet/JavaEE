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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid" style="background-color: rgba(58,58,186,0.75)">
        <a class="navbar-brand" href="/SprintTask">TASK MANAGER</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/addZad.jsp">Добавить задание</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/SprintTask">Все задания</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div>
    <% Task task = (Task) request.getAttribute("task");

    %>
    <form action="/editTask?id=<%=task.getId()%>" method="post">
        <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">Наименование</label>
            <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Наименование:" name="i_name" value="<%=task.getName()%>">
        </div>
        <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">Описание</label>
            <input type="text" class="form-control" style="height: 20%" id="exampleFormControlInput123" placeholder="Описание:" name="i_description" value="<%=task.getDescription()%>">
        </div>
        <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">Крайний срок</label>
            <input type="date" class="form-control" id="exampleFormControlInput12" name="i_deadLineDate" value="<%=task.getDeadlineDate()%>">
        </div>
        <label for="exampleFormControlInput1" class="form-label">Задание выполнено</label>
        <select class="form-select" aria-label="Default select example">
            <option value="2">НЕТ</option>
            <option name="ee" value="true">ДА</option>
            </select>
<%--        <h1>id :</h1>--%>
<%--        <h1><%=task.getId()%></h1>--%>
<%--        <h1>Нименование :</h1>--%>
<%--        <input type="text" name="i_name" value="<%=task.getName()%>">--%>
<%--        <h1>Описание :</h1>--%>
<%--        <input type="text" name="i_description" value="<%=task.getDescription()%>">--%>
<%--        <h1>Дата окончания :</h1>--%>
<%--        <input type="date" name="i_deadLineDate" value="<%=task.getDeadlineDate()%>">--%>
<%--        <select>--%>
<%--            <option name="ее" value="true">ДА</option>--%>
<%--            <option >НЕТ</option>--%>
<%--        </select>--%><br><br>
        <button class="btn" style="background-color: darkgreen">сохранить</button>
        <a class="btn" style="background-color: darkred" href="/DeleteTask?id=<%=task.getId()%>">удалить</a>
    </form>

</div>



</body>
</html>
