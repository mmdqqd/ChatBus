package org.example.movie.service.Impl;
import org.example.movie.common.Movie;
import org.example.movie.repository.MovieRepository;
import org.example.movie.service.ResourceNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Service
public class MovieService {

    @Autowired
    private MovieRepository movieRepository;

    @PersistenceContext
    private EntityManager entityManager;

    public Map<String, Long> getMovieStarStatistics() {
        Map<String, Long> statistics = new HashMap<>();

        // 根据评分区间分类，并统计数量
        String query = "SELECT CASE " +
                "WHEN movieStar BETWEEN 0 AND 5 THEN '0-5.0' " +
                "WHEN movieStar BETWEEN 5.1 AND 6.0 THEN '5.1-6.0' " +
                "WHEN movieStar BETWEEN 6.1 AND 7.0 THEN '6.1-7.0' " +
                "WHEN movieStar BETWEEN 7.1 AND 8.0 THEN '7.1-8.0' " +
                "WHEN movieStar BETWEEN 8.1 AND 9.0 THEN '8.1-9.0' " +
                "WHEN movieStar BETWEEN 9.1 AND 9.5 THEN '9.1-9.5' " +
                "WHEN movieStar BETWEEN 9.6 AND 10 THEN '9.6-10' " +
                "ELSE 'Other' END AS rating_range, COUNT(*) " +
                "FROM Movie " +
                "GROUP BY rating_range";

        List<Object[]> resultList = entityManager.createQuery(query).getResultList();

        // 处理结果
        for (Object[] result : resultList) {
            String ratingRange = (String) result[0];
            Long count = (Long) result[1];
            statistics.put(ratingRange, count);
        }

        return statistics;
    }

    public Page<Movie> getMovies(int page, int size) {
        return movieRepository.findAll(PageRequest.of(page, size));
    }
    public void deleteMovie(Long id) {
        movieRepository.deleteById(id);
    }

    public Movie getMovieById(Long id) {
        return movieRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("电影id未找到 " + id));
    }
    public Movie addMovie(Movie newMovie) {
        return movieRepository.save(newMovie); // 保存新电影
    }

    // 模糊查询电影
    public List<Movie> findMoviesByName(String movieName) {
        return movieRepository.findByMovieNameContainingIgnoreCase(movieName);
    }
}