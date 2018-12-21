package com.codeup.spacelister.controllers;

import com.codeup.spacelister.dao.DaoFactory;
import com.codeup.spacelister.models.Ad;
import com.codeup.spacelister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/ads/create.jsp")
            .forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user = (User) request.getSession().getAttribute("user");



        List<String> planets = Arrays.asList(request.getParameterValues("planet"));


        Ad ad = new Ad(
            user.getId(),
            request.getParameter("title"),
            request.getParameter("description"),
            request.getParameter("category")
        );

        Long adId = DaoFactory.getAdsDao().insert(ad);



        for (String planet : planets){
            DaoFactory.getAdsDao().addToPlanetAds(DaoFactory.getAdsDao().getPlanetID(planet), adId);

        }
        response.sendRedirect("/search");

    }


}
