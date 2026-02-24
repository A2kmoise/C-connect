package org.care.cconn.controller;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.care.cconn.model.Announcement;
import org.care.cconn.model.Role;
import org.care.cconn.model.Task;
import org.care.cconn.model.User;
import org.care.cconn.service.AnnouncementService;
import org.care.cconn.service.TaskService;
import org.care.cconn.service.UserService;

import java.io.IOException;
import java.util.List;

@WebServlet("/userDashboard")
public class UserDashboardServlet extends HttpServlet {
    private UserService userService;
    private AnnouncementService announcementService;
    private TaskService taskService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        userService = (UserService) config.getServletContext().getAttribute("userService");
        announcementService = (AnnouncementService) config.getServletContext().getAttribute("announcementService");
        taskService = (TaskService) config.getServletContext().getAttribute("taskService");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        if (user == null || user.getRole() != Role.STUDENT) {
            response.sendRedirect("login.jsp");
            return;
        }

        List<Announcement> announcements = announcementService.getAnnouncementsForAudience("students");
        List<Task> tasks = taskService.getAllTasks(); // For simplicity, students see all tasks for now

        request.setAttribute("announcements", announcements);
        request.setAttribute("tasks", tasks);
        request.setAttribute("studentCount", userService.getCountByRole(Role.STUDENT));
        request.setAttribute("teacherCount", userService.getCountByRole(Role.TEACHER));
        request.getRequestDispatcher("userDashboard.jsp").forward(request, response);
    }
}
