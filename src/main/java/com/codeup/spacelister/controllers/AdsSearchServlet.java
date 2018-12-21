package com.codeup.spacelister.controllers;

import com.codeup.spacelister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/search")
public class AdsSearchServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().setAttribute("ads", DaoFactory.getAdsDao().all());
        resp.sendRedirect("/ads");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().setAttribute("searchLocation",  req.getParameter("searchLocation"));
        String searchLocation = (String) req.getSession().getAttribute("searchLocation");

        req.getSession().setAttribute("searchTerm",  req.getParameter("search"));
        String searchTerm = (String) req.getSession().getAttribute("searchTerm");

        if (searchLocation.equalsIgnoreCase("1")){
            req.getSession().setAttribute("ads", DaoFactory.getAdsDao().search(searchTerm, 1));
        } else if (searchLocation.equalsIgnoreCase("2")){
            req.getSession().setAttribute("ads", DaoFactory.getAdsDao().search(searchTerm, 2));
        } else if (searchLocation.equalsIgnoreCase("3")){
            req.getSession().setAttribute("ads", DaoFactory.getAdsDao().search(searchTerm, 3));
        } else {
            req.getSession().setAttribute("ads", DaoFactory.getAdsDao().all());
        }

        resp.sendRedirect("/ads");


    }
}
