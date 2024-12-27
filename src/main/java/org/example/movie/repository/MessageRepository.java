package org.example.movie.repository;

import org.example.movie.common.PrivateMessages;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MessageRepository extends JpaRepository<PrivateMessages, Long> {
}