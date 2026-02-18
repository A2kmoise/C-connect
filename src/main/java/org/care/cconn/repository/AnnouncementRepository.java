package org.care.cconn.repository;

import org.care.cconn.model.Announcement;
import java.util.List;
import java.util.Optional;

public interface AnnouncementRepository {
    Announcement save(Announcement announcement);
    Optional<Announcement> findById(Long id);
    List<Announcement> findAll();
    List<Announcement> findByTargetAudience(String targetAudience);
    void delete(Announcement announcement);
}
