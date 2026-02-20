package org.care.cconn.controller;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.care.cconn.model.Announcement;
import org.care.cconn.model.User;
import org.care.cconn.service.AnnouncementService;

import java.io.IOException;

@WebServlet("/addAnnouncement")
public class AnnouncementServlet extends HttpServlet {
    private AnnouncementService announcementService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        announcementService = (AnnouncementService) config.getServletContext().getAttribute("announcementService");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        String subject = request.getParameter("subject");
        String audience = request.getParameter("audience");
        String body = request.getParameter("body");

        Announcement announcement = new Announcement(subject, body, audience, user);
        announcementService.createAnnouncement(announcement);

        response.sendRedirect("adminDashboard.jsp");
    }
}
