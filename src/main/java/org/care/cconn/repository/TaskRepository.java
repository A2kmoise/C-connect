package org.care.cconn.repository;

import org.care.cconn.model.Task;
import java.util.List;
import java.util.Optional;

public interface TaskRepository {
    Task save(Task task);
    Optional<Task> findById(Long id);
    List<Task> findAll();
    List<Task> findByTeacherId(Long teacherId);
    void delete(Task task);
}
