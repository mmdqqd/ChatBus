package org.example.movie.service.Impl;


import org.example.movie.common.Music;
import org.example.movie.repository.MusicRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.EntityNotFoundException;
import javax.transaction.Transactional;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Optional;

@Service
public class MusicService {

//    private static final String MUSIC_UPLOAD_DIR = "src/main/resources/static/music/";
//    private static final String PNG_UPLOAD_DIR = "src/main/resources/static/images/musicPng/";

    @Autowired
    private MusicRepository musicRepository;


    // 获取分页的所有音乐
    public Page<Music> getAllMusic(int page, int size) {
        Pageable pageable = PageRequest.of(page, size);  // 创建分页请求
        return musicRepository.findAll(pageable);  // 返回分页数据
    }


    // 点赞功能
    public Music likeMusic(Long id, String action) {
        Optional<Music> musicOpt = musicRepository.findById(id);
        if (musicOpt.isPresent()) {
            Music music = musicOpt.get();
            if ("increment".equals(action)) {
                music.setMusicLike(music.getMusicLike() + 1); // 点赞数增加
            }
            return musicRepository.save(music);
        }
        return null;
    }

    // 踩功能
    public Music notLikeMusic(Long id, String action) {
        Optional<Music> musicOpt = musicRepository.findById(id);
        if (musicOpt.isPresent()) {
            Music music = musicOpt.get();
            if ("increment".equals(action)) {
                music.setMusicNotLike(music.getMusicNotLike() + 1); // 踩数增加
            }
            return musicRepository.save(music);
        }
        return null;
    }

    // 根据 ID 获取单个音乐
    public Music getMusicById(Long id) {
        return musicRepository.findById(id).orElse(null);
    }

    // 删除音乐
    public void deleteMusic(Long id) {
        musicRepository.deleteById(id);
    }
}
