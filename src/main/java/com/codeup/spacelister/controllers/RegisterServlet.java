package com.codeup.spacelister.controllers;

import com.codeup.spacelister.dao.DaoFactory;
import com.codeup.spacelister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

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

        //Set planet url in database
        switch (planet){
            case "Jupiter":
                planetURL = "http://pluspng.com/img-png/jupiter-planet-png-file-jupiter-transparent-png-779.png";
                break;
            case "Mercury":
                planetURL = "http://wiki.bacterialtakeover.com/images/4/41/Mercury.png";
                break;
            case "Uranus":
                planetURL = "https://vignette.wikia.nocookie.net/diepio/images/6/6d/Uranus_spacepedia.png/revision/latest?cb=20180601142434";
                break;
            case "Venus":
                planetURL = "https://vignette.wikia.nocookie.net/spongebob/images/f/f4/3D_Venus.png/revision/latest?cb=20181125160841";
                break;
            case "Mars":
                planetURL = "https://vignette.wikia.nocookie.net/diepio/images/0/0e/Mars_spacepedia.png/revision/latest?cb=20180601141159";
                break;
            case "Neptune":
                planetURL = "https://upload.wikimedia.org/wikipedia/commons/d/da/3D_Neptune.png";
                break;
        }

        // validate input
        boolean inputHasErrors = false;

        List<String> userNames = DaoFactory.getUsersDao().findDuplicates(1);
        for (String user : userNames){
            if(username.equalsIgnoreCase(user)){
                inputHasErrors = true;
                request.getSession().setAttribute("sameUser", true);
                break;
            } else {
                request.getSession().setAttribute("sameUser", false);
            }
        }
        if (username.isEmpty()){
            inputHasErrors = true;
            request.getSession().setAttribute("noUser", true);
        } else {
            request.getSession().setAttribute("noUser", false);
        }
        List<String> emails = DaoFactory.getUsersDao().findDuplicates(2);
        for (String singleEmail : emails){
            if(email.equalsIgnoreCase(singleEmail)){
                inputHasErrors = true;
                request.getSession().setAttribute("sameEmail", true);
                break;
            } else {
                request.getSession().setAttribute("sameEmail", false);
            }
        }

        if (email.isEmpty()){
            inputHasErrors = true;
            request.getSession().setAttribute("noEmail", true);
        } else {
            request.getSession().setAttribute("noEmail", false);
        }

        if (password.isEmpty()){
            inputHasErrors = true;
            request.getSession().setAttribute("passwordEmpty", true);
        } else {
            request.getSession().setAttribute("passwordEmpty", false);
        }
        if (!password.equals(passwordConfirmation)){
            inputHasErrors = true;
            request.getSession().setAttribute("differentPasswords", true);
        } else {
            request.getSession().setAttribute("differentPasswords", false);
        }

        //If from fails make it sticky
        if (inputHasErrors) {
            User failedUser = new User(username, email, password, planetURL);
            request.getSession().setAttribute("failedUser", failedUser);
            response.sendRedirect("/register");
            return;
        }

        //Clearing any fail checks
        request.getSession().removeAttribute("failedUser");
        request.getSession().removeAttribute("sameUser");
        request.getSession().removeAttribute("noUser");
        request.getSession().removeAttribute("sameEmail");
        request.getSession().removeAttribute("noEmail");
        request.getSession().removeAttribute("differentPasswords");
        request.getSession().removeAttribute("passwordEmpty");

        // create and save a new user
        User user = new User(username, email, password, planetURL);
        DaoFactory.getUsersDao().insert(user);
        response.sendRedirect("/login");

    }
}
