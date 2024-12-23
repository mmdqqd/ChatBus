package org.example.movie.controller;

import org.example.movie.common.Music;  // 确保导入的是正确的类
import org.example.movie.repository.MusicRepository;
import org.example.movie.service.Impl.MusicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/music")
public class MusicController {
    @Autowired
    private MusicRepository musicRepository;

    @Autowired
    private MusicService musicService;

    // 获取所有音乐
    @GetMapping
    public List<Music> getAllMusic() {
        return musicService.getAllMusic();

    }

    // 点赞
    @PostMapping("/like")
    public ResponseEntity<?> likeMusic(@RequestParam Long id, @RequestParam String action) {
        Music music = musicService.likeMusic(id, action);
        if (music != null) {
            return ResponseEntity.ok().body(new ResponseMessage("success"));
        }
        return ResponseEntity.status(404).body(new ResponseMessage("操作失败: 音乐未找到"));
    }

    // 踩
    @PostMapping("/notlike")
    public ResponseEntity<?> notLikeMusic(@RequestParam Long id, @RequestParam String action) {
        Music music = musicService.notLikeMusic(id, action);
        if (music != null) {
            return ResponseEntity.ok().body(new ResponseMessage("success"));
        }
        return ResponseEntity.status(404).body(new ResponseMessage("操作失败: 音乐未找到"));
    }

    // 根据 ID 获取单个音乐
    @GetMapping("/{id}")
    public ResponseEntity<Music> getMusicById(@PathVariable Long id) {
        Music music = musicService.getMusicById(id);
        if (music != null) {
            return ResponseEntity.ok(music);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    // 添加新的音乐
    @PostMapping
    public Music addMusic(@RequestBody Music music) {
        return musicService.addMusic(music);
    }

    // 更新音乐信息
    @PutMapping("/{id}")
    public ResponseEntity<Music> updateMusic(@PathVariable Long id, @RequestBody Music music) {
        Music updatedMusic = musicService.updateMusic(id, music);
        return ResponseEntity.ok(updatedMusic);
    }

    // 删除音乐
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteMusic(@PathVariable Long id) {
        try {musicService.deleteMusic(id);
        return ResponseEntity.noContent().build();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }


    class ResponseMessage {
        private String status;

        public ResponseMessage(String status) {
            this.status = status;
        }

        public String getStatus() {
            return status;
        }

        public void setStatus(String status) {
            this.status = status;
        }
}}
