package org.example.movie.controller;

import org.example.movie.common.UserEntity;

import org.example.movie.repository.UserRepository;
import org.example.movie.service.Impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
public class UserController {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private UserService userService;

    // 显示个人信息的页面
    @GetMapping("/user")
    public String viewProfile(Model model) {
        // 获取当前登录的用户名
        String username = SecurityContextHolder.getContext().getAuthentication().getName();

        // 获取用户信息
        UserEntity user = userService.getUserByUsername(username);

        // 将用户信息添加到模型中，供 Thymeleaf 渲染
        model.addAttribute("user", user);

        return "Home/user";  // 返回 个人信息页面
    }

    // 修改个人信息页面
    @GetMapping("/CrudUser")
    public String editProfile(Model model) {
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        UserEntity user = userService.getUserByUsername(username);
        model.addAttribute("user", user);
        return "Home/CrudUser";  // 显示编辑页面
    }

    // 处理个人信息修改请求
    @PostMapping("/CrudUser")
    public String saveProfileChanges(@Valid UserEntity userEntity, BindingResult result, Model model) {
        // 如果表单验证失败，返回编辑页面
        if (result.hasErrors()) {
            model.addAttribute("user", userEntity);
            return "Home/CrudUser";
        }

        // 获取当前用户
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        UserEntity currentUser = userService.getUserByUsername(username);

        // 只更新用户名和密码
        currentUser.setUsername(userEntity.getUsername());
        currentUser.setPassword(userEntity.getPassword());  // 密码应该经过加密存储

        // 保存到数据库
        userService.updateUser(currentUser);

        return "redirect:/user";  // 修改成功后跳转回个人信息页面
    }
    @GetMapping("/role")
    public ResponseEntity<Map<String, String>> getUserRole(Authentication authentication) {
        // 获取当前登录用户的用户名
        String username = authentication.getName();
        System.out.println(username);
        // 查询数据库获取用户角色
        UserEntity userEntity = userRepository.findByUsername(username).get();
        if (userEntity != null) {
            Map<String, String> response = new HashMap<>();
            response.put("username", username);  // 返回用户名
            response.put("role", userEntity.getRole());  // 返回角色信息
            return ResponseEntity.ok(response);
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(Collections.emptyMap());
        }
    }


    @GetMapping("Admin/admin")
    public String getAllUsers(Model model) {
        // 查询所有用户
        List<UserEntity> users = userRepository.findAll();
        System.out.println("aaaa");
        System.out.println(users);
        // 将用户数据添加到 model 中，供 Thymeleaf 渲染
        model.addAttribute("users", users);
        return "Admin/admin";  // 返回 users 页面
    }









}
