package servlets;

import db.D1B1manager;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.Task;

import java.io.IOException;

@WebServlet(name = "Details", value = "/Details")
public class Details extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        Task task = D1B1manager.getTask1(id);
        if(task!=null){
            request.setAttribute("task",task);
            request.getRequestDispatcher("/details.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
