package com.codeup.spacelister.controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.errorServlet", urlPatterns = "/")
public class ErrorServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//        StringBuffer url = request.getRequestURL() ;
//
//        if (url.indexOf(".jsp") >= 0){
//            request.getRequestDispatcher("/WEB-INF/error.jsp").forward(request, response);
//        }
        request.getRequestDispatcher("/WEB-INF/error.jsp").forward(request, response);

    }
}
