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


@WebServlet(name = "controllers.EditAdServlet", urlPatterns = "/editAd")
public class EditAdServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/editAd.jsp").forward(request, response);
    }


    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {



    }

}