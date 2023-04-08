package servlets;

import db.D1B1manager;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.Task;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "addTask", value = "/addTask")
public class  addTask extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/addZad.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String date = request.getParameter("deadlineDate");
        Task tas = new Task(null,name,description,date,false);
        D1B1manager.addTask(tas);
        response.sendRedirect("/?success");
    }
}
