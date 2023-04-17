package servlets;

import db.DBconnection;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.Users;

import java.io.IOException;

@WebServlet(name = "AuthServlet", value = "/AuthServlet")
public class AuthServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        String redirect = "/user.jsp?emailerror";

        Users user = DBconnection.getUser(email);
        if(user!=null){
            redirect = "/user.jsp?passworderror";
            if (user.getPassword().equals(password)){
                request.getSession().setAttribute("CURRENT_USER", user);
                redirect = "/onlaine.jsp";
            }
        }
        response.sendRedirect(redirect);
    }
}
