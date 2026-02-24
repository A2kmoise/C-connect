package org.care.cconn.controller;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.care.cconn.model.User;
import org.care.cconn.service.UserService;

import java.io.IOException;
import java.util.Optional;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private UserService userService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        userService = (UserService) config.getServletContext().getAttribute("userService");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String identifier = request.getParameter("identifier");
        String password = request.getParameter("password");

        Optional<User> userOpt = userService.login(identifier, password);

        if (userOpt.isPresent()) {
            User user = userOpt.get();
            request.getSession().setAttribute("user", user);
            
            // Redirect based on role
            switch (user.getRole()) {
                case ADMIN:
                    response.sendRedirect("adminDashboard");
                    break;
                case TEACHER:
                    response.sendRedirect("trDashboard");
                    break;
                case STUDENT:
                default:
                    response.sendRedirect("userDashboard");
                    break;
            }
        } else {
            request.setAttribute("error", "Invalid username/email or password");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
