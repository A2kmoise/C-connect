package org.care.cconn.service;

import org.care.cconn.model.Complaint;
import java.util.List;

public interface ComplaintService {
    Complaint createComplaint(Complaint complaint);
    List<Complaint> getAllComplaints();
    List<Complaint> getComplaintsByStudent(Long studentId);
}
