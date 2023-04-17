<%@ page import="models.Users" %><%--
  Created by IntelliJ IDEA.
  User: 01001
  Date: 16.04.2023
  Time: 21:24
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
<% Users currentUser = (Users) request.getSession().getAttribute("CURRENT_USER");%>
<div class="container mt-3">
  <div class="text-center">
    <h1 CLASS>Hello <%=currentUser.getFullName()%></h1>
    <h5>This is your profile page</h5>
  </div>
</div>
</body>
</html>
