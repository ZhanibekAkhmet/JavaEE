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
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">--%>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="container mt-3">
    <%
        String success = request.getParameter("success");
        if (success!=null){
    %>
    <div class="row">
        <div class="alert alert-success small alert-dismissible fade show" role="alert">
            <strong>Задание добавлено!</strong>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    </div>
    <%
        }
    %>
    <div class="row mt-3">
        <div class="col-12">
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#addTask">
                + Добавить задание
            </button>

            <!-- Modal -->
            <div class="modal fade" id="addTask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="staticBackdropLabel">Добавление задания</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="/addTask" method="post">
                                <div class="mb-3">
                                    <label for="exampleFormControlInput1" class="form-label">Наименование</label>
                                    <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Наименование:" name="name">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleFormControlTextarea1" class="form-label">Описание</label>
                                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="8" placeholder="Описание: " name="description"></textarea>
                                </div>
                                <div class="mb-3">
                                    <label for="exampleFormControlInput1" class="form-label">Крайний срок</label>
                                    <input type="date" class="form-control" id="exampleFormControlInput12" name="deadlineDate">
                                </div>
                                <%--    <label>Наименование</label>--%>
                                <%--    <input type="text" name="name">--%>
                                <%--    <label>Описание</label>--%>
                                <%--    <input type="text" name="description">--%>
                                <%--    <label>Крайний срок</label>--%>
                                <%--    <input type="date" name="deadlineDate">--%>
                                <div>
                                    <%--          <a class="btn btn-close" href="/SprintTask">Закрыть</a>--%>
                                    <button class="btn btn-success" >add</button>
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                </div>

                            </form>
                        </div>
<%--                        <div class="modal-footer">--%>
<%--                           --%>
<%--                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <form>
<%--        <div class="container mt-3">--%>
            <div class="row mt-3">
                <div class="col-12">
                    <table class="table table-striped table-hover">
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
                            <td><a class="btn btn-primary"  href="/Details?id=<%=task.getId()%>">Детали</a></td>
                            <%
                                    }
                                }%>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
<%--        </div>--%>

    </form>
</div>

</body>
</html>
