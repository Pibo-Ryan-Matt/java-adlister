package com.codeup.spacelister.controllers;

import com.codeup.spacelister.dao.DaoFactory;
import com.codeup.spacelister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/editAd")
public class EditAdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getSession().getAttribute("adEdit");
        request.getRequestDispatcher("/WEB-INF/editAd.jsp").forward(request, response);

    }

    @Override
    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        Ad newAD = (Ad) request.getSession().getAttribute("adEdit");

        if (!request.getParameter("title").isEmpty()) {
            newAD.setTitle(request.getParameter("title"));
        }
        if (!request.getParameter("description").isEmpty()) {
            newAD.setDescription(request.getParameter("description"));
        }
        if (!request.getParameter("category").isEmpty()) {
            newAD.setCategory(request.getParameter("category"));
        }
        if (!request.getParameter("planet").isEmpty()) {
            newAD.setPicture(request.getParameter("planet"));
        }

        DaoFactory.getAdsDao().update(newAD);
        response.sendRedirect("/profile");

    }



}