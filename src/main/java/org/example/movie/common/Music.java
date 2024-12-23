package org.example.movie.common;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Setter
@Getter
@Entity
public class Music {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id; // 添加 ID 字段作为主键
    //音乐名称
    private String musicName;
    //音乐赞
    private Integer musicLike;
    //音乐踩
    private Integer musicNotLike;
    //音乐图片
    private String musicPng;
    //音乐地址
    private  String musicAddress;

    public Music() {

    }

    public Music(Long id, String musicName, Integer musicLike, Integer musicNotLike, String musicPng, String musicAddress) {
        this.id = id;
        this.musicName = musicName;
        this.musicLike = musicLike;
        this.musicNotLike = musicNotLike;
        this.musicPng = musicPng;
        this.musicAddress = musicAddress;
    }

    @Override
    public String toString() {
        return "Music{" +
                "id=" + id +
                ", musicName='" + musicName + '\'' +
                ", musicLike=" + musicLike +
                ", musicNotLike=" + musicNotLike +
                ", musicPng='" + musicPng + '\'' +
                ", musicAddress='" + musicAddress + '\'' +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

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

    public String getMusicPng() {
        return musicPng;
    }

    public void setMusicPng(String musicPng) {
        this.musicPng = musicPng;
    }

    public String getMusicAddress() {
        return musicAddress;
    }

    public void setMusicAddress(String musicAddress) {
        this.musicAddress = musicAddress;
    }
}
