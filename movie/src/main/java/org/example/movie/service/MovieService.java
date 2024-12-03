package org.example.movie.service;

import org.example.movie.common.Movie;

public interface MovieService {
    Movie updateMovie(Long id, Movie updatedMovie);
    Movie save(Movie movie); // 添加保存方法
}
