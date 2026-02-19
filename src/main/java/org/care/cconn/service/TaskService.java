package org.care.cconn.service;

import org.care.cconn.model.Task;
import java.util.List;

public interface TaskService {
    Task createTask(Task task);
    List<Task> getAllTasks();
    List<Task> getTasksByTeacher(Long teacherId);
}
