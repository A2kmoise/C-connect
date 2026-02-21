package org.care.cconn.service.impl;

import org.care.cconn.model.Task;
import org.care.cconn.repository.TaskRepository;
import org.care.cconn.service.TaskService;

import java.util.List;

public class TaskServiceImpl implements TaskService {
    private final TaskRepository taskRepository;

    public TaskServiceImpl(TaskRepository taskRepository) {
        this.taskRepository = taskRepository;
    }

    @Override
    public Task createTask(Task task) {
        return taskRepository.save(task);
    }

    @Override
    public List<Task> getAllTasks() {
        return taskRepository.findAll();
    }

    @Override
    public List<Task> getTasksByTeacher(Long teacherId) {
        return taskRepository.findByTeacherId(teacherId);
    }
}
