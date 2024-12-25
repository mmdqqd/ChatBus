package org.example.movie.controller;

import org.example.movie.common.UserEntity;
import org.example.movie.repository.UserRepository;
import org.example.movie.service.Impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class AuthController {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private UserService userService;  // 调用 UserService 处理业务逻辑

    @Autowired
    private PasswordEncoder passwordEncoder;
    @GetMapping("/zhu")
    public String backendPage(Authentication authentication) {
        // 检查当前用户是否有管理员角色
        if (authentication.getAuthorities().stream()
                .anyMatch(authority -> authority.getAuthority().equals("ROLE_ADMIN"))) {
            return "Admin/adminMovieList";  // 管理员可以访问后台主页
        } else {
            return "redirect:/error";  // 普通用户跳转到错误页面
        }
    }
    @GetMapping("/new")
    public String index1() {
        return "User/new";
    }
    @GetMapping("/userindex")
    public String userindex() {
        return "User/userindex";
    }

    @GetMapping("/error")
    public String errorPage() {
        return "error";  // 跳转到 error.html 页面
    }
    @GetMapping("/login")
    public String login() {
        return "Login/login";  // 返回 login.html 页面
    }

    @GetMapping("/index")
    public String index() {
        return "index";  // 返回 index.html 页面
    }

    @GetMapping("/music")
    public String music() {
        return "Music/music";  // 返回 music.html 页面
    }

    @GetMapping("/xinghuo")
    public String xinghuo() {
        return "AI/xinghuo";  // 返回 xinghuo.html 页面
    }

    @GetMapping("/liuyanban")
    public String liuyanban() {
        return "News/liuyanban";  // 返回 liuyanban.html 页面
    }

    @GetMapping("/UserNews")
    public String UserNews() {
        return "News/UserNews";  // 返回 UserNews.html 页面
    }

    @GetMapping("/AdminNews")
    public String AdminNews() {
        return "News/AdminNews";  // 返回 AdminNews.html 页面
    }

    @GetMapping("/AdminMusic")
    public String AdminMusic() {
        return "Music/AdminMusic";  // 返回 AdminMusic.html 页面
    }

    @GetMapping("/tubiao")
    public String tubiao() {
        return "Tu/tubiao";  // 返回 tubiao.html 页面
    }

    @GetMapping("/houtaiindex")
    public String houtaiindex() {
        return "Houtai/houtaiindex";  // 返回 houtai.html 页面
    }

    @GetMapping("/houtaiindex1")
    public String houtaiindex1() {
        return "Houtai/houtaiindex1";  // 返回 houtai.html 页面
    }

    @GetMapping("/admin")
    public String admin(Model model) {
        List<UserEntity> users = userRepository.findAll();
        model.addAttribute("users", users);  // 将用户数据传递到视图
        return "Admin/admin";  // 返回 Admin/admin 视图
    }
//    @GetMapping("/user")
//    public String index2() {
//        return "User/user";  // 返回 user.html 页面
//    }

    @GetMapping("/register")
    public String registerForm() {
        return "Login/register";  // 返回 register.html 页面
    }

    @PostMapping("/register")
    public String registerUser(
            @RequestParam("username") String username,
            @RequestParam("password") String password,
            @RequestParam("confirmPassword") String confirmPassword,
            @RequestParam("role") String role,
            Model model) {

        if (!password.equals(confirmPassword)) {
            model.addAttribute("error", "密码和确认密码不一致！");
            return "register";  // 返回注册页面并显示错误
        }

        if (userService.existsByUsername(username)) {
            model.addAttribute("error", "用户名已存在！");
            return "register";
        }

        // 创建新用户
        userService.registerUser(username, passwordEncoder.encode(password), role);

        return "redirect:/login";  // 注册成功后重定向到登录页面
    }
}