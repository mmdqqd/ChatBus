package org.example.movie.service.Impl;

import org.example.movie.common.News;

import org.example.movie.repository.NewsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class NewsService {
    @Autowired
    private NewsRepository newsRepository;

    // 获取所有留言
    public List<News> getAllNews() {
        return newsRepository.findAll();
    }


    public Page<News> searchNews(String content, News.Neibie neibie, int page, int size) {
        Pageable pageable = PageRequest.of(page, size);

        if (neibie == News.Neibie.ALL) {
            // 如果 neibie 是 ALL，则忽略该字段
            return newsRepository.findByContentContaining(content, pageable);
        } else {
            // 否则根据 content 和 neibie 进行过滤
            return newsRepository.findByContentContainingAndNeibie(content, neibie, pageable);
        }
    }



    // 根据 ID 获取单个留言
    public News getNewsById(Long id) {
        return newsRepository.findById(id).orElse(null);
    }

    // 添加新的留言
    public News addNews(News news) {
        return newsRepository.save(news);
    }

    // 更新留言信息
    public News updateNews(Long id, News news) {
        news.setId(id);
        return newsRepository.save(news);
    }

    // 删除留言
    public void deleteNews(Long id) {
        newsRepository.deleteById(id);
    }

}
