<%@ page import="java.util.ArrayList" %>
<%@ page import="models.Task" %>
<%@ page import="db.D1B1manager" %><%--
  Created by IntelliJ IDEA.
  User: 01001
  Date: 11.03.2023
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
<%--    <style><%@include file="/WEB-INF/css/style.css"%></style>--%>
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
<form>
    <table class="table">
        <thead>
        <tr>
            <th>
                ID
            </th>
            <th>
                Наименование
            </th>
            <th>
                Крайний срок
            </th>
            <th>
                Выполнено
            </th>
            <th>
                Детали
            </th>
        </tr>
        </thead>
        <tbody>

<%--        <a href=""></a>--%>
        <% ArrayList<Task> tasks= (ArrayList<Task>) request.getAttribute("taski");
        if(tasks!=null){
            for (Task task : tasks){
        %>
        <tr>
            <td><%=task.getId()%></td>
            <td><%=task.getName()%></td>
            <td><%=task.getDeadlineDate()%></td>
            <td><% if (task.isVipolneno()==false){
                %>НЕТ
            <%}else%>ДА</td>
            <td><a class="btn" style="background-color: rgba(32,32,227,0.71);" href="/Details?id=<%=task.getId()%>">Детали</a></td>
               <%
            }
        }%>
            </tr>
        </tbody>
    </table>
</form>
</body>
</html>
