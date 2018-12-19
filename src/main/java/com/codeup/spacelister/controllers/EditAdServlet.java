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
        request.getRequestDispatcher("/WEB-INF/editAd.jsp").forward(request, response);

    }

    @Override
    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        Ad ad = (Ad) request.getSession().getAttribute("selectedAd");

        if (!request.getParameter("title").isEmpty()) {
            ad.setTitle(request.getParameter("title"));
        }
        if (!request.getParameter("description").isEmpty()) {
            ad.setDescription(request.getParameter("Description"));
        }
        if (!request.getParameter("category").isEmpty()) {
            ad.setCategory(request.getParameter("category"));
        }
        if (!request.getParameter("planet").isEmpty()) {
            ad.setPicture(request.getParameter("planet"));
        }
        DaoFactory.getAdsDao().update(ad);
        response.sendRedirect("/profile");
    }



}