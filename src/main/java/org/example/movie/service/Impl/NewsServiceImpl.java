package org.example.movie.service.Impl;

import org.example.movie.common.News;
import org.example.movie.repository.NewsRepository;
import org.example.movie.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class NewsServiceImpl implements NewsService {

    @Autowired
    private NewsRepository newsRepository;

    @Override
    public Page<News> getAll(Pageable pageable) {
        return newsRepository.findAll(pageable);
    }
}