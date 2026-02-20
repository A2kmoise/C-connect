package org.care.cconn.Util;

import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import org.care.cconn.DBconn.JPAUtil;
import org.care.cconn.repository.impl.AnnouncementRepositoryImpl;
import org.care.cconn.repository.impl.ComplaintRepositoryImpl;
import org.care.cconn.repository.impl.TaskRepositoryImpl;
import org.care.cconn.repository.impl.UserRepositoryImpl;
import org.care.cconn.service.impl.AnnouncementServiceImpl;
import org.care.cconn.service.impl.ComplaintServiceImpl;
import org.care.cconn.service.impl.TaskServiceImpl;
import org.care.cconn.service.impl.UserServiceImpl;

@WebListener
public class AppContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        EntityManager em = JPAUtil.getEntityManagerFactory().createEntityManager();
        ServletContext context = sce.getServletContext();

        // Repositories
        UserRepositoryImpl userRepository = new UserRepositoryImpl(em);
        ComplaintRepositoryImpl complaintRepository = new ComplaintRepositoryImpl(em);
        AnnouncementRepositoryImpl announcementRepository = new AnnouncementRepositoryImpl(em);
        TaskRepositoryImpl taskRepository = new TaskRepositoryImpl(em);

        // Services
        UserServiceImpl userService = new UserServiceImpl(userRepository);
        ComplaintServiceImpl complaintService = new ComplaintServiceImpl(complaintRepository);
        AnnouncementServiceImpl announcementService = new AnnouncementServiceImpl(announcementRepository);
        TaskServiceImpl taskService = new TaskServiceImpl(taskRepository);

        // Store in context
        context.setAttribute("userService", userService);
        context.setAttribute("complaintService", complaintService);
        context.setAttribute("announcementService", announcementService);
        context.setAttribute("taskService", taskService);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        JPAUtil.shutdown();
    }
}
