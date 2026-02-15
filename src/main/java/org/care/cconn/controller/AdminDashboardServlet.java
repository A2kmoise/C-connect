package org.care.cconn.controller;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.care.cconn.model.Complaint;
import org.care.cconn.model.Role;
import org.care.cconn.model.User;
import org.care.cconn.service.ComplaintService;
import org.care.cconn.service.UserService;

import java.io.IOException;
import java.util.List;

@WebServlet("/adminDashboard")
public class AdminDashboardServlet extends HttpServlet {
    private UserService userService;
    private ComplaintService complaintService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        userService = (UserService) config.getServletContext().getAttribute("userService");
        complaintService = (ComplaintService) config.getServletContext().getAttribute("complaintService");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        if (user == null || user.getRole() != Role.ADMIN) {
            response.sendRedirect("login.jsp");
            return;
        }

        List<Complaint> complaints = complaintService.getAllComplaints();
        request.setAttribute("complaints", complaints);
        request.setAttribute("studentCount", userService.getCountByRole(Role.STUDENT));
        request.setAttribute("teacherCount", userService.getCountByRole(Role.TEACHER));
        
        request.getRequestDispatcher("adminDashboard.jsp").forward(request, response);
    }
}
