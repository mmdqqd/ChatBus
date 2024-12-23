package org.example.movie.controller;

import org.example.movie.common.News;
import org.example.movie.repository.NewsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/newapi")
public class UserNewsController {

    @Autowired
    private NewsRepository newsRepository;  // 假设你有一个新闻的 Repository

    @GetMapping("/usernews")//普通用户
    public ResponseEntity<Page<News>> getUserNews(
            Authentication authentication,  // 获取当前登录用户
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "3") int size) {

        // 获取当前登录用户的用户名
        String username = authentication.getName();
        System.out.println(username);
        // 创建分页请求
        Pageable pageable = PageRequest.of(page, size);

        // 查询当前用户的新闻数据
        Page<News> newsPage = newsRepository.findByUsername(username, pageable);

        if (newsPage.hasContent()) {
            return ResponseEntity.ok(newsPage);
        } else {
            return ResponseEntity.status(HttpStatus.NO_CONTENT).body(null);  // 如果没有新闻数据
        }
    }

    @GetMapping("/vip")//管理员用户
    public ResponseEntity<Page<News>> getUserNews(

            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "3") int size) {

        // 创建分页请求
        Pageable pageable = PageRequest.of(page, size);

        // 查询当前用户的新闻数据
        Page<News> newsPage = newsRepository.findAll(pageable);

        if (newsPage.hasContent()) {
            return ResponseEntity.ok(newsPage);
        } else {
            return ResponseEntity.status(HttpStatus.NO_CONTENT).body(null);  // 如果没有新闻数据
        }
    }
}
