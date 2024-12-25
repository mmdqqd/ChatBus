package org.example.movie.repository;

import org.example.movie.common.Movie;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface MovieRepository extends JpaRepository<Movie, Long> {
    // 可以添加自定义查询方法
    List<Movie> findByMovieNameContainingIgnoreCase(String movieName); // 使用 IgnoreCase 进行不区分大小写的查找
}
