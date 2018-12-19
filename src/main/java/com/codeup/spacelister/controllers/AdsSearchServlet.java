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
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().setAttribute("searchLocation",  req.getParameter("searchLocation"));
        String searchLocation = (String) req.getSession().getAttribute("searchLocation");

        req.getSession().setAttribute("searchTerm",  req.getParameter("search"));
        String searchTerm = (String) req.getSession().getAttribute("searchTerm");

        if (searchLocation.equalsIgnoreCase("1")){
            req.setAttribute("ads", DaoFactory.getAdsDao().search(searchTerm, 1));

        } else {
            req.setAttribute("ads", DaoFactory.getAdsDao().search(searchTerm, 2));
        }


        req.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(req, resp);


    }
}
