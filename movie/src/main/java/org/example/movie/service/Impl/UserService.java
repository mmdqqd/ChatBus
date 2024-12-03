package org.example.movie.service.Impl;


import org.example.movie.common.UserEntity;
import org.example.movie.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private UserRepository userRepository;

    public boolean existsByUsername(String username) {
        return userRepository.findByUsername(username).isPresent();
    }

    public void registerUser(String username, String encodedPassword, String role) {
        UserEntity user = new UserEntity();
        user.setUsername(username);
        user.setPassword(encodedPassword);
        user.setRole(role);
        userRepository.save(user);
    }
    public UserEntity getUserByUsername(String username) {
        return userRepository.findByUsername(username).get();
    }
    public void updateUser(UserEntity user) {
        // 对密码进行加密
        String encodedPassword = passwordEncoder.encode(user.getPassword());
        user.setPassword(encodedPassword);
        userRepository.save(user);  // 保存更新后的用户信息
    }
}