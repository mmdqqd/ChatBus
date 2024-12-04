package org.example.movie.repository;

import org.example.movie.common.Movie;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MovieRepository extends JpaRepository<Movie, Long> {
    // 可以添加自定义查询方法
}
