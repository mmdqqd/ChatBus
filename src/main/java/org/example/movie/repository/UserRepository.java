package org.example.movie.repository;

import org.example.movie.common.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Optional;


//public interface UserRepository extends JpaRepository<User, Long> {
//    User findByUsername(String username);
//
//}

public interface UserRepository extends JpaRepository<UserEntity, Long> {
    Optional<UserEntity> findByUsername(String username);
    // 使用 JPA 的自定义查询获取用户总数
    @Query("SELECT COUNT(u) FROM UserEntity u")
    long countAllUsers();

}