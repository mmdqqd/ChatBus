package org.example.movie.service;

import org.example.movie.common.News;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface NewsService {
    Page<News> getAll(Pageable pageable);
}
