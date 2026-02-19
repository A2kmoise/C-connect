package org.care.cconn.repository;

import org.care.cconn.model.User;
import java.util.List;
import java.util.Optional;

public interface UserRepository {
    User save(User user);
    Optional<User> findById(Long id);
    Optional<User> findByUsername(String username);
    Optional<User> findByEmail(String email);
    Optional<User> findByUsernameOrEmail(String identifier);
    List<User> findAll();
    List<User> findByRole(org.care.cconn.model.Role role);
    void delete(User user);
}
