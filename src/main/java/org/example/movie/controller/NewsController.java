package org.example.movie.controller;

import org.example.movie.common.News;
import org.example.movie.repository.NewsRepository;
import org.example.movie.service.Impl.NewsService;
import org.example.movie.service.Impl.NewsServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/news")
@CrossOrigin(origins = "*")
public class NewsController {
 @Autowired
    private NewsRepository newsRepository;

    @Autowired
    private NewsServiceImpl newsServiceImpl;

    @Autowired
    private NewsService newsService;

    @GetMapping
    public Page<News> getAll(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "5") int size
    ) {
        return newsServiceImpl.getAll(PageRequest.of(page, size));
    }



    @GetMapping("/search")
    public Page<News> searchNews(
            @RequestParam String content,
            @RequestParam(required = false) News.Neibie neibie,  // 让 neibie 参数变为可选
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size) {

        // 如果 neibie 为 null，则传递一个默认值，例如 ALL，表示不限制 neibie。
        if (neibie == null) {
            // 这里假设 Neibie 还有一个 ALL 枚举项表示不筛选
            return newsService.searchNews(content, neibie, page, size);
        }

        return newsService.searchNews(content, neibie, page, size);
    }


    // 根据 ID 获取单个留言
    @GetMapping("/{id}")
    public ResponseEntity<News> getNewsById(@PathVariable Long id) {
        News news = newsService.getNewsById(id);
        if (news != null) {
            return ResponseEntity.ok(news);
        } else {
            return ResponseEntity.notFound().build();
        }
    }



    // 添加新的留言
    @PostMapping
    public News addNews(@RequestBody News news) {
        return newsService.addNews(news);
    }

    // 更新留言信息
    @PutMapping("/{id}")
    public ResponseEntity<News> updateNews(@PathVariable Long id, @RequestBody News news) {
        News updateNews = newsService.updateNews(id, news);
        return new ResponseEntity<>(updateNews, HttpStatus.CREATED);
    }

    // 删除留言
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteNews(@PathVariable Long id) {
        newsService.deleteNews(id);
        return ResponseEntity.noContent().build();
    }


}
