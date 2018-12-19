package com.codeup.spacelister.controllers;

import com.codeup.spacelister.dao.DaoFactory;
import com.codeup.spacelister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String planet = request.getParameter("planet");
        String planetURL = null;
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");

        if (planet.equals("Jupiter")) {
            planetURL = "http://pluspng.com/img-png/jupiter-planet-png-file-jupiter-transparent-png-779.png";
        } else if (planet.equals("Mercury")) {
            planetURL = "http://wiki.bacterialtakeover.com/images/4/41/Mercury.png";
        } else if (planet.equals("Uranus")) {
            planetURL = "https://vignette.wikia.nocookie.net/diepio/images/6/6d/Uranus_spacepedia.png/revision/latest?cb=20180601142434";
        } else if (planet.equals("Venus")) {
            planetURL = "https://vignette.wikia.nocookie.net/spongebob/images/f/f4/3D_Venus.png/revision/latest?cb=20181125160841";
        } else if (planet.equals("Mars")) {
            planetURL = "https://vignette.wikia.nocookie.net/diepio/images/0/0e/Mars_spacepedia.png/revision/latest?cb=20180601141159";
        } else if (planet.equals("Neptune")) {
            planetURL = "https://upload.wikimedia.org/wikipedia/commons/d/da/3D_Neptune.png";
        }


        // validate input
        boolean inputHasErrors = false;

        if (username.isEmpty()){
            inputHasErrors = true;
        } else if (email.isEmpty()){
            inputHasErrors = true;
        } else if (!password.equals(passwordConfirmation)){
            inputHasErrors = true;
        }

        if (inputHasErrors) {
            response.sendRedirect("/register");
            return;
        }

        // create and save a new user
        User user = new User(username, email, password, planetURL);
        DaoFactory.getUsersDao().insert(user);
        response.sendRedirect("/login");
    }
}
