package org.example.movie.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.example.movie.common.Movie;
import org.example.movie.repository.MovieRepository;
import org.example.movie.service.Impl.MovieService;
import org.example.movie.service.Impl.MovieServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/movies") // 确保这个路径与 URL 匹配
public class MovieController {
    @Autowired
    private MovieServiceImpl movieServiceImpl;
    @Autowired
    private MovieService movieService;
    @Autowired
    private MovieRepository movieRepository; // 你的 UserRepository
    // 获取电影列表（分页）
    @GetMapping
    public Page<Movie> getMovies(@RequestParam(defaultValue = "0") int page,
                                 @RequestParam(defaultValue = "20") int size) {
        return movieService.getMovies(page, size);
    }
    // 删除电影
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteMovie(@PathVariable Long id) {
        movieService.deleteMovie(id);
        return ResponseEntity.noContent().build();
    }

    @GetMapping("/statistics")
    public Map<String, Long> getMovieStarStatistics() {
        return movieService.getMovieStarStatistics();
    }

    @PutMapping("/{id}")
     public ResponseEntity<Movie> updateMovie(
        @PathVariable Long id,
        @RequestParam("movie") String movieJson,
        @RequestParam(value = "moviePng", required = false) MultipartFile moviePng
      )  {
    try {
        // 解析JSON并创建Movie对象
        ObjectMapper objectMapper = new ObjectMapper();
        Movie updatedMovie = objectMapper.readValue(movieJson, Movie.class);
        // 更新电影信息
        Movie movie = movieServiceImpl.updateMovie(id, updatedMovie);
        // 处理图片上传
        if (moviePng != null && !moviePng.isEmpty()) {
            // 保存图片到指定位置
            String fileName = moviePng.getOriginalFilename();
            Path path = Paths.get("src/main/resources/static/images/moviePng/" + fileName); // 指定保存路径
            Files.copy(moviePng.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
            // 更新电影的图片URL
            movie.setMoviePng("http://localhost:8080/images/moviePng/" + fileName);
        }
        movieRepository.save(movie);  // 确保这行代码执行
        // 返回更新后的电影对象
        return ResponseEntity.ok(movie);
    } catch (IOException e) {
        e.printStackTrace();
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
    }
}

    // 根据电影名称进行模糊查询
    @GetMapping("/search")
    public ResponseEntity<List<Movie>> getMoviesByName(@RequestParam String name) {
        List<Movie> movies = movieService.findMoviesByName(name);

        // 如果没有找到电影，返回 404
        if (movies.isEmpty()) {
            return ResponseEntity.notFound().build();
        }

        // 返回电影信息
        return ResponseEntity.ok(movies);
    }
    @GetMapping("/{id}")
    public ResponseEntity<Movie> getMovieById(@PathVariable Long id) {
        Movie movie = movieService.getMovieById(id);
        return ResponseEntity.ok(movie);
    }
//    @PostMapping
//    public ResponseEntity<Movie> addMovie(@RequestBody Movie newMovie) {
//        Movie savedMovie = movieService.addMovie(newMovie);
//        return ResponseEntity.status(HttpStatus.CREATED).body(savedMovie);
//    }
@PostMapping
public ResponseEntity<Movie> addMovie(
        @RequestParam("movie") String movieJson,
        @RequestParam(value = "moviePng", required = false) MultipartFile moviePng
) {
    try {
        // 解析 JSON 字符串到 Movie 对象
        ObjectMapper objectMapper = new ObjectMapper();
        Movie newMovie = objectMapper.readValue(movieJson, Movie.class);

        // 处理电影图片上传
        if (moviePng != null && !moviePng.isEmpty()) {
            // 保存图片到指定位置
            String fileName = moviePng.getOriginalFilename();
            Path path = Paths.get("src/main/resources/static/images/moviePng/" + fileName); // 保存路径
            Files.copy(moviePng.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);

            // 设置电影图片的 URL
            newMovie.setMoviePng("http://localhost:8080/images/moviePng/" + fileName);
        }

        // 保存新的电影到数据库
        movieRepository.save(newMovie);

        // 返回保存后的电影信息
        return ResponseEntity.ok(newMovie);
    } catch (IOException e) {
        e.printStackTrace();
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
    }
}



}