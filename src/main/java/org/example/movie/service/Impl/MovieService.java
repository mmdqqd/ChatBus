package org.example.movie.service.Impl;
import org.example.movie.common.Movie;
import org.example.movie.repository.MovieRepository;
import org.example.movie.service.ResourceNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

@Service
public class MovieService {

    @Autowired
    private MovieRepository movieRepository;

    public Page<Movie> getMovies(int page, int size) {
        return movieRepository.findAll(PageRequest.of(page, size));
    }
    public void deleteMovie(Long id) {
        movieRepository.deleteById(id);
    }
//    public Movie updateMovie(Long id, Movie updatedMovie) {
//        // 查找电影
//        Movie existingMovie = movieRepository.findById(id)
//                .orElseThrow(() -> new ResourceNotFoundException("电影id未找到 " + id));
//        // 更新电影信息
//        existingMovie.setMovieName(updatedMovie.getMovieName());
//        existingMovie.setMovieIntroduce(updatedMovie.getMovieIntroduce());
//        existingMovie.setMovieStar(updatedMovie.getMovieStar());
//        existingMovie.setMovieEvaluate(updatedMovie.getMovieEvaluate());
//        // 保存更新后的电影
//        return movieRepository.save(existingMovie);
//    }
    public Movie getMovieById(Long id) {
        return movieRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("电影id未找到 " + id));
    }
    public Movie addMovie(Movie newMovie) {
        return movieRepository.save(newMovie); // 保存新电影
    }

}