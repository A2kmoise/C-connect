package org.care.cconn.repository;

import org.care.cconn.model.Complaint;
import java.util.List;
import java.util.Optional;

public interface ComplaintRepository {
    Complaint save(Complaint complaint);
    Optional<Complaint> findById(Long id);
    List<Complaint> findAll();
    List<Complaint> findByStudentId(Long studentId);
    void delete(Complaint complaint);
}
