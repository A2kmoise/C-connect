package org.care.cconn.controller;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.care.cconn.model.Complaint;
import org.care.cconn.model.User;
import org.care.cconn.service.ComplaintService;

import java.io.IOException;

@WebServlet("/addComplaint")
public class ComplaintServlet extends HttpServlet {
    private ComplaintService complaintService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        complaintService = (ComplaintService) config.getServletContext().getAttribute("complaintService");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        String subject = request.getParameter("subject");
        String description = request.getParameter("description");

        Complaint complaint = new Complaint(subject, description, user);
        complaintService.createComplaint(complaint);

        response.sendRedirect("userDashboard.jsp");
    }
}
