package com.codeup.spacelister.controllers;

import com.codeup.spacelister.dao.DaoFactory;
import com.codeup.spacelister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String hiddenParam = req.getParameter("selected-ad-id");
        long id = Long.parseLong(hiddenParam);
        req.getSession().setAttribute("selectedAd",  DaoFactory.getAdsDao().selectedAd(id));

        String editOrView = req.getParameter("edit-or-view");


        if (editOrView.equalsIgnoreCase("edit")){
            resp.sendRedirect("/editAd");

        } else if (editOrView.equalsIgnoreCase("view")){
            resp.sendRedirect("/ad-page");

        }

    }
}
