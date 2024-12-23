package org.example.movie.repository;


import org.example.movie.common.News;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.time.LocalDate;
import java.util.List;

public interface NewsRepository extends JpaRepository<News, Long> {
    Page<News> findAll(Pageable pageable); // 分页查询
    Page<News> findByContentContaining(String content, Pageable pageable);
    Page<News> findByUsername(String username, Pageable pageable);
    Page<News> findByContentContainingAndNeibie(String content, News.Neibie neibie, Pageable pageable);
    @Query("SELECT n FROM News n WHERE n.content LIKE %:content% AND n.neibie = :neibie")
    Page<News> searchNews(@Param("content") String content, @Param("neibie") News.Neibie neibie, Pageable pageable);
    // 使用 JPQL 查询每个neibie类型的数量

}
