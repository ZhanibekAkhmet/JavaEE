<%@ page import="java.util.ArrayList" %>
<%@ page import="models.Items" %><%--
  Created by IntelliJ IDEA.
  User: 01001
  Date: 16.04.2023
  Time: 10:53
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
<%@include file="navbar2.jsp"%>
<div class="container mt-3">
    <div class="text-center">
        <h1 CLASS>Welcome to BITLAB SHOP</h1>
        <h5 >Electronic devices with high quality and service</h5>
    </div>
</div>
<div class="container mt-5">
    <div class="row">

            <% ArrayList <Items> items= (ArrayList<Items>) request.getAttribute("tovari");
                if (items != null) {


                for (Items item:items){

            %>
        <div class="col-sm-4 mt-3">
            <div class="card" style="width: 18rem;">
                <h4 class="text-center bg-light"><%=item.getName()%></h4>
                <div class="card-body">
                    <h5 class="card-title text-center">$<%=item.getPrice()%></h5>
                    <p class="card-text text-center"><%=item.getDescription()%></p>
                    <a href="#" class="btn btn-primary w-100 d-block">Buy</a>
                </div>
            </div>
        </div>
            <%        }
                }
            %>

    </div>
</div>

</body>
</html>
