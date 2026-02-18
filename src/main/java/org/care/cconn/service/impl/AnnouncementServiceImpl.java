package org.care.cconn.service.impl;

import org.care.cconn.model.Announcement;
import org.care.cconn.repository.AnnouncementRepository;
import org.care.cconn.service.AnnouncementService;

import java.util.List;

public class AnnouncementServiceImpl implements AnnouncementService {
    private final AnnouncementRepository announcementRepository;

    public AnnouncementServiceImpl(AnnouncementRepository announcementRepository) {
        this.announcementRepository = announcementRepository;
    }

    @Override
    public Announcement createAnnouncement(Announcement announcement) {
        return announcementRepository.save(announcement);
    }

    @Override
    public List<Announcement> getAllAnnouncements() {
        return announcementRepository.findAll();
    }

    @Override
    public List<Announcement> getAnnouncementsForAudience(String audience) {
        return announcementRepository.findByTargetAudience(audience);
    }
}
