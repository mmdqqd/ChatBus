package org.example.movie.controller;

import org.example.movie.common.UserEntity;
import org.example.movie.repository.UserRepository;
import org.example.movie.service.Impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/admin") // 确保这个路径与 URL 匹配
public class AdminController {
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;  // 自动注入 BCryptPasswordEncoder

    @Autowired
    private UserService userService;  // 调用 UserService 处理业务逻辑

    @GetMapping("/edit/{id}")
    public String editUser(@PathVariable("id") Long id, Model model) {
        System.out.println("aaa");
        UserEntity user = userRepository.findById(id).orElseThrow(() -> new RuntimeException("User not found"));
        model.addAttribute("user", user);
        return "Admin/admin";  // 返回用户列表页面
    }

    // 处理用户修改请求
    @PostMapping("/edit/{id}")
    public ResponseEntity<?> updateUser(@PathVariable("id") Long id, @RequestBody UserEntity updatedUser) {
        System.out.println("bbb");
        // 查找用户
        UserEntity existingUser = userRepository.findById(id).orElseThrow(() -> new RuntimeException("User not found"));

        // 更新用户信息
        existingUser.setUsername(updatedUser.getUsername());
        if (updatedUser.getPassword() != null && !updatedUser.getPassword().isEmpty()) {
            existingUser.setPassword(passwordEncoder.encode(updatedUser.getPassword()));  // 对密码进行加密
        }

        existingUser.setRole(updatedUser.getRole());

        // 保存更新后的用户信息
        userRepository.save(existingUser);

        return ResponseEntity.ok("修改成功");  // 返回修改成功响应
    }


    // 删除用户
    @GetMapping("/delete/{id}")
    public String deleteUser(@PathVariable("id") Long id) {
        userRepository.deleteById(id);  // 根据 ID 删除用户
        return "redirect:/index";  // 删除后重定向到用户列表
    }

}
