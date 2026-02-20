package org.care.cconn.repository.impl;

import jakarta.persistence.EntityManager;
import org.care.cconn.model.Complaint;
import org.care.cconn.repository.ComplaintRepository;

import java.util.List;
import java.util.Optional;

public class ComplaintRepositoryImpl implements ComplaintRepository {
    private final EntityManager entityManager;

    public ComplaintRepositoryImpl(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    @Override
    public Complaint save(Complaint complaint) {
        entityManager.getTransaction().begin();
        if (complaint.getId() == null) {
            entityManager.persist(complaint);
        } else {
            complaint = entityManager.merge(complaint);
        }
        entityManager.getTransaction().commit();
        return complaint;
    }

    @Override
    public Optional<Complaint> findById(Long id) {
        return Optional.ofNullable(entityManager.find(Complaint.class, id));
    }

    @Override
    public List<Complaint> findAll() {
        return entityManager.createQuery("SELECT c FROM Complaint c ORDER BY c.createdAt DESC", Complaint.class).getResultList();
    }

    @Override
    public List<Complaint> findByStudentId(Long studentId) {
        return entityManager.createQuery("SELECT c FROM Complaint c WHERE c.student.id = :studentId ORDER BY c.createdAt DESC", Complaint.class)
                .setParameter("studentId", studentId)
                .getResultList();
    }

    @Override
    public void delete(Complaint complaint) {
        entityManager.getTransaction().begin();
        entityManager.remove(entityManager.contains(complaint) ? complaint : entityManager.merge(complaint));
        entityManager.getTransaction().commit();
    }
}
