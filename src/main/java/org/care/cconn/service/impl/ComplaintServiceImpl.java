package org.care.cconn.service.impl;

import org.care.cconn.model.Complaint;
import org.care.cconn.repository.ComplaintRepository;
import org.care.cconn.service.ComplaintService;

import java.util.List;

public class ComplaintServiceImpl implements ComplaintService {
    private final ComplaintRepository complaintRepository;

    public ComplaintServiceImpl(ComplaintRepository complaintRepository) {
        this.complaintRepository = complaintRepository;
    }

    @Override
    public Complaint createComplaint(Complaint complaint) {
        return complaintRepository.save(complaint);
    }

    @Override
    public List<Complaint> getAllComplaints() {
        return complaintRepository.findAll();
    }

    @Override
    public List<Complaint> getComplaintsByStudent(Long studentId) {
        return complaintRepository.findByStudentId(studentId);
    }
}
