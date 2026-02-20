package org.care.cconn.repository.impl;

import jakarta.persistence.EntityManager;
import org.care.cconn.model.Task;
import org.care.cconn.repository.TaskRepository;

import java.util.List;
import java.util.Optional;

public class TaskRepositoryImpl implements TaskRepository {
    private final EntityManager entityManager;

    public TaskRepositoryImpl(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    @Override
    public Task save(Task task) {
        entityManager.getTransaction().begin();
        if (task.getId() == null) {
            entityManager.persist(task);
        } else {
            task = entityManager.merge(task);
        }
        entityManager.getTransaction().commit();
        return task;
    }

    @Override
    public Optional<Task> findById(Long id) {
        return Optional.ofNullable(entityManager.find(Task.class, id));
    }

    @Override
    public List<Task> findAll() {
        return entityManager.createQuery("SELECT t FROM Task t ORDER BY t.createdAt DESC", Task.class).getResultList();
    }

    @Override
    public List<Task> findByTeacherId(Long teacherId) {
        return entityManager.createQuery("SELECT t FROM Task t WHERE t.teacher.id = :teacherId ORDER BY t.createdAt DESC", Task.class)
                .setParameter("teacherId", teacherId)
                .getResultList();
    }

    @Override
    public void delete(Task task) {
        entityManager.getTransaction().begin();
        entityManager.remove(entityManager.contains(task) ? task : entityManager.merge(task));
        entityManager.getTransaction().commit();
    }
}
