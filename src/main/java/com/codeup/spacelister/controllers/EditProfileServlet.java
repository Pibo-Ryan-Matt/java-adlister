package com.codeup.spacelister.controllers;


import com.codeup.spacelister.dao.DaoFactory;
import com.codeup.spacelister.dao.MySQLUsersDao;
import com.codeup.spacelister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "controllers.EditProfileServlet", urlPatterns = "/edit")
public class EditProfileServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/edit.jsp").forward(request, response);
    }


   protected void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

       User user = (User) request.getSession().getAttribute("user");

       if (!request.getParameter("username").isEmpty()) {
           user.setUsername(request.getParameter("username"));
       }
       if (!request.getParameter("email").isEmpty()) {
           user.setEmail(request.getParameter("email"));
       }
       if (!request.getParameter("password").isEmpty()) {
           user.setPassword(request.getParameter("password"));
       }

       DaoFactory.getUsersDao().update(user);

       response.sendRedirect("/profile");

   }

}
