package org.care.cconn.controller;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.care.cconn.model.Role;
import org.care.cconn.model.User;
import org.care.cconn.service.UserService;

import java.io.IOException;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
    private UserService userService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        userService = (UserService) config.getServletContext().getAttribute("userService");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/view/signup.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String roleStr = request.getParameter("role");
        Role role = Role.valueOf(roleStr);

        User user = new User(username, email, password, role);
        try {
            userService.register(user);
            // Auto login or redirect to login page
            request.getSession().setAttribute("user", user);

            // Redirect based on role
            if (role == Role.TEACHER) {
                response.sendRedirect("trDashboard");
            } else {
                response.sendRedirect("userDashboard");
            }
        } catch (IllegalArgumentException e) {
            request.setAttribute("error", e.getMessage());
            request.getRequestDispatcher("/WEB-INF/view/signup.jsp").forward(request, response);
        }
    }
}
