package org.care.cconn.service;

import org.care.cconn.model.Announcement;
import java.util.List;

public interface AnnouncementService {
    Announcement createAnnouncement(Announcement announcement);
    List<Announcement> getAllAnnouncements();
    List<Announcement> getAnnouncementsForAudience(String audience);
}
