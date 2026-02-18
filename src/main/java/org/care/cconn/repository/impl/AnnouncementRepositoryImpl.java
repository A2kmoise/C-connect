package org.care.cconn.repository.impl;

import jakarta.persistence.EntityManager;
import org.care.cconn.model.Announcement;
import org.care.cconn.repository.AnnouncementRepository;

import java.util.List;
import java.util.Optional;

public class AnnouncementRepositoryImpl implements AnnouncementRepository {
    private final EntityManager entityManager;

    public AnnouncementRepositoryImpl(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    @Override
    public Announcement save(Announcement announcement) {
        entityManager.getTransaction().begin();
        if (announcement.getId() == null) {
            entityManager.persist(announcement);
        } else {
            announcement = entityManager.merge(announcement);
        }
        entityManager.getTransaction().commit();
        return announcement;
    }

    @Override
    public Optional<Announcement> findById(Long id) {
        return Optional.ofNullable(entityManager.find(Announcement.class, id));
    }

    @Override
    public List<Announcement> findAll() {
        return entityManager.createQuery("SELECT a FROM Announcement a ORDER BY a.createdAt DESC", Announcement.class).getResultList();
    }

    @Override
    public List<Announcement> findByTargetAudience(String targetAudience) {
        return entityManager.createQuery("SELECT a FROM Announcement a WHERE a.targetAudience = :targetAudience OR a.targetAudience = 'all' ORDER BY a.createdAt DESC", Announcement.class)
                .setParameter("targetAudience", targetAudience)
                .getResultList();
    }

    @Override
    public void delete(Announcement announcement) {
        entityManager.getTransaction().begin();
        entityManager.remove(entityManager.contains(announcement) ? announcement : entityManager.merge(announcement));
        entityManager.getTransaction().commit();
    }
}
