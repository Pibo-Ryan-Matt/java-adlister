package com.codeup.spacelister.controllers;

import com.codeup.spacelister.dao.DaoFactory;
import com.codeup.spacelister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/ad-page")
public class AdPageServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Ad selectedAd = (Ad) req.getSession().getAttribute("selectedAd");
        req.setAttribute("planets", DaoFactory.getAdsDao().getAdPlanets(selectedAd.getId()));
        req.getRequestDispatcher("/WEB-INF/ads/ad-page.jsp").forward(req, resp);
    }
}
