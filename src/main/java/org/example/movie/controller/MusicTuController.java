package org.example.movie.controller;

import org.example.movie.common.Music;
import org.example.movie.repository.MusicRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/music")
public class MusicTuController {

    @Autowired
    private MusicRepository musicRepository;

    // 获取所有歌曲的点赞和踩数据
    @GetMapping("/stats")
    public List<MusicStats> getMusicStats() {
        List<Music> musicList = musicRepository.findAll();
        List<MusicStats> statsList = musicList.stream()
                .map(music -> new MusicStats(music.getMusicName(), music.getMusicLike(), music.getMusicNotLike()))
                .collect(Collectors.toList());
        return statsList;
    }

    // 数据传输对象
    public static class MusicStats {
        private String musicName;
        private Integer musicLike;
        private Integer musicNotLike;

        // 构造函数
        public MusicStats(String musicName, Integer musicLike, Integer musicNotLike) {
            this.musicName = musicName;
            this.musicLike = musicLike;
            this.musicNotLike = musicNotLike;
        }

        // getter 和 setter
        public String getMusicName() {
            return musicName;
        }

        public void setMusicName(String musicName) {
            this.musicName = musicName;
        }

        public Integer getMusicLike() {
            return musicLike;
        }

        public void setMusicLike(Integer musicLike) {
            this.musicLike = musicLike;
        }

        public Integer getMusicNotLike() {
            return musicNotLike;
        }

        public void setMusicNotLike(Integer musicNotLike) {
            this.musicNotLike = musicNotLike;
        }
    }
}
