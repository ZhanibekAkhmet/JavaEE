package servlets;

import db.D1B1manager;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.Task;

import java.io.IOException;

@WebServlet(name = "editTask", value = "/editTask")
public class editTask extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("i_name");
        String description = request.getParameter("i_description");
        String deadLineDate = request.getParameter("i_deadLineDate");
        Long id = Long.parseLong(request.getParameter("id"));
        Boolean vip ;
        if (Boolean.parseBoolean("ee")) vip = true;
        else vip = false;
//        boolean vipolneno=false;
//        if(vip.equals("YES")){
//            vipolneno=true;
//        } else if (vip.equals("NO")) {
//            vipolneno=false;
//        }
        Task zadan = new Task(id,name,description,deadLineDate,vip);
        D1B1manager.editTask(id,zadan);
        response.sendRedirect("/SprintTask");
    }
}
