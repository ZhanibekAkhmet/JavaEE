<%--
  Created by IntelliJ IDEA.
  User: 01001
  Date: 11.03.2023
  Time: 16:50
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
<div class="container mt-3">
  <%
    String success = request.getParameter("success");
    if (success!=null){
  %>
  <div class="row">
    <div class="alert alert-success alert-dismissible fade show" role="alert">
      <strong>Задание добавлено!</strong>
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
  </div>
  <%
    }
  %>
  <div class="row">
    <div class="col-6 mx-auto">
      <form action="/addTask" method="post">
        <div class="mb-3">
          <label for="exampleFormControlInput1" class="form-label">Наименование</label>
          <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Наименование:" name="name">
        </div>
        <div class="mb-3">
          <label for="exampleFormControlTextarea1" class="form-label">Описание</label>
          <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Описание: " name="description"></textarea>
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
        </div>

      </form>
    </div>
  </div>

</div>

</body>
</html>
