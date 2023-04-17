<%--
  Created by IntelliJ IDEA.
  User: 01001
  Date: 16.04.2023
  Time: 17:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
  <%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">--%>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</head>
<body>
<%@include file="navbar2.jsp"%>
<div class="container">
  <div class="row mt-5">
    <div class="col-sm-6 offset-3">
      <%
        String passError = request.getParameter("passworderror");
        if (passError!=null){
      %>
      <div class="row">
        <div class="alert alert-danger small alert-dismissible fade show" role="alert">
          <strong>Не верный пароль!</strong>
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
      </div>
      <%
        }
      %>
      <%
        String emailError = request.getParameter("emailerror");
        if (emailError!=null){
      %>
      <div class="row">
        <div class="alert alert-danger small alert-dismissible fade show" role="alert">
          <strong>Не верный email!</strong>
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
      </div>
      <%
        }
      %>
      <form method="post" action="AuthServlet">
        <h3>LOGIN PAGE</h3>
        <div class="mb-3 mt-3">
          <label for="exampleInputEmail1" class="form-label">Email address</label>
          <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
          <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
        </div>
        <div class="mb-3">
          <label for="exampleInputPassword1" class="form-label">Password</label>
          <input type="password" class="form-control" id="exampleInputPassword1" name="password">
        </div>
        <button type="submit" class="btn btn-primary">Sign in</button>
      </form>
    </div>
  </div>
</div>

</body>
</html>
