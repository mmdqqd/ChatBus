package org.example.movie.repository;

import org.example.movie.common.Music;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MusicRepository extends JpaRepository<Music, Long> {
    // 你可以根据需要添加一些自定义的查询方法
}
