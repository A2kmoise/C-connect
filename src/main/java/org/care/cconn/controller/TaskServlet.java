package org.care.cconn.controller;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.care.cconn.model.Task;
import org.care.cconn.model.User;
import org.care.cconn.service.TaskService;

import java.io.IOException;
import java.time.LocalDate;

@WebServlet("/addTask")
public class TaskServlet extends HttpServlet {
    private TaskService taskService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        taskService = (TaskService) config.getServletContext().getAttribute("taskService");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        String title = request.getParameter("title");
        String dueDateStr = request.getParameter("dueDate");
        String description = request.getParameter("description");

        Task task = new Task(title, description, LocalDate.parse(dueDateStr), user);
        taskService.createTask(task);

        response.sendRedirect("trDashboard.jsp");
    }
}
