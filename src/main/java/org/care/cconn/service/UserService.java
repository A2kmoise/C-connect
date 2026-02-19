package org.care.cconn.service;

import org.care.cconn.model.User;
import java.util.Optional;

public interface UserService {
    User register(User user);
    Optional<User> login(String identifier, String password);
    Optional<User> findById(Long id);
    long getCountByRole(org.care.cconn.model.Role role);
}
