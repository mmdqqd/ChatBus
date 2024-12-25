package org.example.movie.controller;
import org.example.movie.common.MusicData;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.example.movie.common.Music;  // 确保导入的是正确的类
import org.example.movie.repository.MusicRepository;
import org.example.movie.service.Impl.MusicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@RestController
@RequestMapping("/api/music")
public class MusicController {
    @Autowired
    private MusicRepository musicRepository;

    @Autowired
    private MusicService musicService;

//    // 获取所有音乐
//    @GetMapping
//    public List<Music> getAllMusic() {
//        return musicService.getAllMusic();
//
//    }


    // 获取分页的所有音乐
    @GetMapping("/a")
    public Page<Music> getAllMusic(@RequestParam(value = "page", defaultValue = "0") int page,
                                   @RequestParam(value = "size", defaultValue = "10") int size) {
        return musicService.getAllMusic(page, size);  // 调用服务层的分页查询方法
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
//    @PostMapping
//    public Music addMusic(@RequestBody Music music) {
//        return musicService.addMusic(music);
//    }

    @PostMapping
    public ResponseEntity<Music> addMusic(
            @RequestParam("music") String musicJson,
            @RequestParam(value = "musicPng", required = false) MultipartFile musicPng,
            @RequestParam(value = "musicFile", required = false) MultipartFile musicFile
    ) {
        try {
            // 解析 JSON 字符串到 Music 对象
            ObjectMapper objectMapper = new ObjectMapper();
            Music newMusic = objectMapper.readValue(musicJson, Music.class);

            // 处理音乐封面图片上传
            if (musicPng != null && !musicPng.isEmpty()) {
//                String fileName = System.currentTimeMillis() + musicPng.getOriginalFilename();  // 防止文件名重复

                String fileName = musicPng.getOriginalFilename();
                Path path = Paths.get("src/main/resources/static/images/musicPng/" + fileName);  // 存储路径
                Files.copy(musicPng.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
                // 设置音乐封面图片的 URL
                newMusic.setMusicPng("http://localhost:8080/images/musicPng/" + fileName);
            }

            // 处理 MP3 音乐文件上传
            if (musicFile != null && !musicFile.isEmpty()) {
                String fileName = musicFile.getOriginalFilename();
//                String fileName = System.currentTimeMillis() + musicFile.getOriginalFilename();  // 防止文件名重复
                Path path = Paths.get("src/main/resources/static/music/" + fileName);  // 存储路径
                Files.copy(musicFile.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
                // 设置音乐文件的 URL
                newMusic.setMusicAddress("http://localhost:8080/music/" + fileName);
            }

            // 保存音乐信息到数据库
            musicRepository.save(newMusic);

            // 返回保存的音乐对象
            return ResponseEntity.ok(newMusic);
        } catch (IOException e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }

    @PutMapping("/edit")
    public ResponseEntity<Music> updateMusic(
            @RequestParam("data") String jsonData,  // 获取JSON数据（包含音乐信息）
            @RequestParam(value = "musicPng", required = false) MultipartFile musicPng,  // 可选的封面图片
            @RequestParam(value = "musicAddress", required = false) MultipartFile musicFile  // 可选的音乐文件
    ) {
        try {
            // 解析JSON数据
            ObjectMapper objectMapper = new ObjectMapper();
            MusicData musicData = objectMapper.readValue(jsonData, MusicData.class);  // MusicData 为封装音乐数据的类

            // 查找当前需要更新的音乐记录
            Music existingMusic = musicRepository.findById(musicData.getMusicId())
                    .orElseThrow(() -> new IllegalArgumentException("Music not found with id: " + musicData.getMusicId()));

            // 更新音乐的基本信息
            existingMusic.setMusicName(musicData.getMusicName());
            existingMusic.setMusicLike(musicData.getMusicLike());
            existingMusic.setMusicNotLike(musicData.getMusicNotLike());

            // 处理音乐封面图片上传
            if (musicPng != null && !musicPng.isEmpty()) {
                String fileName =   musicPng.getOriginalFilename();  // 防止文件名重复
                Path path = Paths.get("src/main/resources/static/images/musicPng/" + fileName);  // 存储路径
                Files.createDirectories(path.getParent());  // 创建目录（如果不存在）
                Files.copy(musicPng.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);  // 保存文件
                // 设置音乐封面图片的 URL
//                existingMusic.setMusicPng("http://localhost:8080/images/musicPng/" + fileName);
                existingMusic.setMusicPng("http://localhost:8080/images/musicPng/" + fileName + "?v=" + System.currentTimeMillis());
            }

            // 处理音乐文件上传（如 MP3）
            if (musicFile != null && !musicFile.isEmpty()) {
                String fileName = musicFile.getOriginalFilename();  // 防止文件名重复
                Path path = Paths.get("src/main/resources/static/music/" + fileName);  // 存储路径
                Files.createDirectories(path.getParent());  // 创建目录（如果不存在）
                Files.copy(musicFile.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);  // 保存文件
                // 设置音乐文件的 URL
//                existingMusic.setMusicAddress("http://localhost:8080/music/" + fileName);
                existingMusic.setMusicAddress("http://localhost:8080/music/" + fileName + "?v=" + System.currentTimeMillis());
            }

            // 保存更新后的音乐信息到数据库
            musicRepository.save(existingMusic);

            // 返回更新后的音乐对象
            return ResponseEntity.ok(existingMusic);
        } catch (IOException e) {
            e.printStackTrace();
            return ResponseEntity.status(500).body(null);  // 返回服务器错误
        }
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
