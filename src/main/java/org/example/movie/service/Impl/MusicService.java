package org.example.movie.service.Impl;


import org.example.movie.common.Music;
import org.example.movie.repository.MusicRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
public class MusicService {

    @Autowired
    private MusicRepository musicRepository;

    // 获取所有音乐
    public List<Music> getAllMusic() {
        return musicRepository.findAll();
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

    // 添加新的音乐
    public Music addMusic(Music music) {
        return musicRepository.save(music);
    }

    // 更新音乐信息
    public Music updateMusic(Long id, Music music) {
        music.setId(id);
        return musicRepository.save(music);
    }

    // 删除音乐
    public void deleteMusic(Long id) {
        musicRepository.deleteById(id);
    }
}
