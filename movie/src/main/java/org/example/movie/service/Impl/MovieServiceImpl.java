package org.example.movie.service.Impl;

import org.example.movie.common.Movie;
import org.example.movie.repository.MovieRepository;
import org.example.movie.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MovieServiceImpl implements MovieService {

    @Autowired
    private MovieRepository movieRepository; // 注入MovieRepository

    @Override
    public Movie updateMovie(Long id, Movie updatedMovie) {
        // 查找现有的电影
        Movie existingMovie = movieRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Movie not found with id: " + id));

        // 更新电影信息
        existingMovie.setMovieName(updatedMovie.getMovieName());
        existingMovie.setMovieIntroduce(updatedMovie.getMovieIntroduce());
        existingMovie.setMovieStar(updatedMovie.getMovieStar());
        existingMovie.setMovieEvaluate(updatedMovie.getMovieEvaluate());

        // 如果需要更新图片URL，可以在这里设置
        if (updatedMovie.getMoviePng() != null) {
            existingMovie.setMoviePng(updatedMovie.getMoviePng());
        }

        return movieRepository.save(existingMovie); // 保存更新后的电影
    }

    @Override
    public Movie save(Movie movie) {
        return movieRepository.save(movie); // 使用JPA的save方法保存电影
    }
}
