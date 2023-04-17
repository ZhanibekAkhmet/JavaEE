package servlets;

import db.DBconnection;
import db.DButil;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.Items;
import models.Task;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "SprintTask2", value = "/SprintTask2")
public class SprintTask2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Items> items= DBconnection.getItems();
        request.setAttribute("tovari",items);
        request.getRequestDispatcher("/sprint2.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
