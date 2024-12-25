package org.example.movie.common;

public class MusicData {
    private Long musicId;
    private String musicName;
    private int musicLike;
    private int musicNotLike;

    // Getters and Setters
    public Long getMusicId() {
        return musicId;
    }

    public void setMusicId(Long musicId) {
        this.musicId = musicId;
    }

    public String getMusicName() {
        return musicName;
    }

    public void setMusicName(String musicName) {
        this.musicName = musicName;
    }

    public int getMusicLike() {
        return musicLike;
    }

    public void setMusicLike(int musicLike) {
        this.musicLike = musicLike;
    }

    public int getMusicNotLike() {
        return musicNotLike;
    }

    public void setMusicNotLike(int musicNotLike) {
        this.musicNotLike = musicNotLike;
    }
}

