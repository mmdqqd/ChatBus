package org.example.movie.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;


@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    private final UserDetailsService userDetailsService;

    public SecurityConfig(UserDetailsService userDetailsService) {
        this.userDetailsService = userDetailsService;
    }

@Override
protected void configure(HttpSecurity http) throws Exception {
    http
            .csrf().disable()  // 禁用 CSRF
            .authorizeRequests()
            .antMatchers("/login", "/register","/images/**").permitAll()  // 允许所有人访问登录、注册和首页
            .antMatchers("/Admin/adminMovieList").hasRole("ADMIN")  // 只有管理员才能访问后台主页
            .antMatchers("/ADMIN/**").hasRole("ADMIN")
            .antMatchers("/USER/**").hasRole("USER")
            .anyRequest().authenticated()  // 其他页面都需要认证
            .and()
            .formLogin()
            .loginPage("/login")
            .defaultSuccessUrl("/index", true)  // 登录成功后跳转到首页
            .and()
            .logout()
            .logoutSuccessUrl("/login?logout")  // 登出后跳转到登录页
            .permitAll();
}
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

}