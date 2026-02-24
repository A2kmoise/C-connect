package org.care.cconn.service.impl;

import org.care.cconn.model.User;
import org.care.cconn.repository.UserRepository;
import org.care.cconn.service.UserService;

import java.util.Optional;

public class UserServiceImpl implements UserService {
    private final UserRepository userRepository;

    public UserServiceImpl(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public User register(User user) {
        // Simple password hashing/check could be added here
        return userRepository.save(user);
    }

    @Override
    public Optional<User> login(String identifier, String password) {
        return userRepository.findByUsernameOrEmail(identifier)
                .filter(user -> user.getPassword().equals(password)); // Simple check for now
    }

    @Override
    public Optional<User> findById(Long id) {
        return userRepository.findById(id);
    }

    @Override
    public long getCountByRole(org.care.cconn.model.Role role) {
        return userRepository.findByRole(role).size();
    }
}
