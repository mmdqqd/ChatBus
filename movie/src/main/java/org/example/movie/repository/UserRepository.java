package org.example.movie.repository;

import org.example.movie.common.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;


//public interface UserRepository extends JpaRepository<User, Long> {
//    User findByUsername(String username);
//
//}

public interface UserRepository extends JpaRepository<UserEntity, Long> {
    Optional<UserEntity> findByUsername(String username);

}