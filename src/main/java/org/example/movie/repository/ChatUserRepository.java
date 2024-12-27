package org.example.movie.repository;

import org.example.movie.common.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ChatUserRepository extends JpaRepository<UserEntity, Long> {
    // 根据用户名查找用户
    UserEntity findByUsername(String username);
}