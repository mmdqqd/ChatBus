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
public class Movie {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id; // 添加 ID 字段作为主键
    //电影名称
    private String movieName;
    //电影介绍
    private String movieIntroduce;
    //电影评分
//    private String movieStar;
    private Double movieStar;
    //电影评价
    private String movieEvaluate;
    private  String moviePng;
     //电影图片
    public Movie() {
    }

    public Movie(Long id, String movieName, String movieIntroduce, Double movieStar, String movieEvaluate, String moviePng) {
        this.id = id;
        this.movieName = movieName;
        this.movieIntroduce = movieIntroduce;
        this.movieStar = movieStar;
        this.movieEvaluate = movieEvaluate;
        this.moviePng = moviePng;
    }

    @Override
    public String toString() {
        return "Movie {id=" + id + ", movieName=" + movieName + ", movieIntroduce="
                + movieIntroduce + ", movieStar=" + movieStar + ", movieEvaluate=" + movieEvaluate
                + ", moviePng=" + moviePng + "}";
    }
//    public String toString() {
//        return "Movie{" +
//                "id='" + id + '\'' +
//                "movieName='" + movieName + '\'' +
//                ", movieIntroduce='" + movieIntroduce + '\'' +
//                ", movieStar='" + movieStar + '\'' +
//                ", movieEvaluate='" + movieEvaluate + '\'' +
//                '}';
//    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getMovieIntroduce() {
        return movieIntroduce;
    }

    public void setMovieIntroduce(String movieIntroduce) {
        this.movieIntroduce = movieIntroduce;
    }

    public Double getMovieStar() {
        return movieStar;
    }

    public void setMovieStar(Double movieStar) {
        this.movieStar = movieStar;
    }

    public String getMovieEvaluate() {
        return movieEvaluate;
    }

    public void setMovieEvaluate(String movieEvaluate) {
        this.movieEvaluate = movieEvaluate;
    }

    public String getMoviePng() {
        return moviePng;
    }

    public void setMoviePng(String moviePng) {
        this.moviePng = moviePng;
    }
}

