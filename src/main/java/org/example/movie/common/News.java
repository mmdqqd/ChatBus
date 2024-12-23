package org.example.movie.common;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "news")
public class News {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;  // 自增主键

    @Column(name = "username", nullable = false)
    private String username;  // 与 user_entity 表的 username 关联

    @Column(name = "avatar_url")
    private String avatarUrl;  // 用户头像 URL

    @Column(name = "content", nullable = false, columnDefinition = "TEXT")
    private String content;  // 留言内容

    @Column(name = "email", nullable = false)
    private String email;  // 留言者的邮箱地址

    @Column(name = "phone")
    private String phone;  // 留言者的电话号码

    @CreatedDate
    @Column(name = "created_at", nullable = false, updatable = false)
    private LocalDateTime createdAt;  // 留言时间


    @LastModifiedDate
    @Column(name = "updated_at")
    private LocalDateTime updatedAt;  // 留言最后更新时间


    @PrePersist
    public void prePersist() {
        this.createdAt = LocalDateTime.now();
        this.updatedAt = LocalDateTime.now();
    }

    @PreUpdate
    public void preUpdate() {
        this.updatedAt = LocalDateTime.now();
    }


    @Enumerated(EnumType.STRING)  // 将 ENUM 映射到数据库
    @Column(name = "neibie", nullable = false)
    private Neibie neibie;  // 新增的 ENUM 字段（电影, 音乐, 建议）
    private String module; // 新闻所属模块
    // 默认构造函数
    public News() {}

    // 构造函数

    public News(Long id, String username, String avatarUrl, String content, String email, String phone, LocalDateTime createdAt, LocalDateTime updatedAt, Neibie neibie, String module) {
        this.id = id;
        this.username = username;
        this.avatarUrl = avatarUrl;
        this.content = content;
        this.email = email;
        this.phone = phone;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.neibie = neibie;
        this.module = module;
    }

    @Override
    public String toString() {
        return "News{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", avatarUrl='" + avatarUrl + '\'' +
                ", content='" + content + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", createdAt=" + createdAt +
                ", updatedAt=" + updatedAt +
                ", neibie=" + neibie +
                ", module='" + module + '\'' +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getAvatarUrl() {
        return avatarUrl;
    }

    public void setAvatarUrl(String avatarUrl) {
        this.avatarUrl = avatarUrl;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public LocalDateTime getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(LocalDateTime updatedAt) {
        this.updatedAt = updatedAt;
    }

    public Neibie getNeibie() {
        return neibie;
    }

    public void setNeibie(Neibie neibie) {
        this.neibie = neibie;
    }

    public String getModule() {
        return module;
    }

    public void setModule(String module) {
        this.module = module;
    }

    // 枚举类型定义
    public enum Neibie {
        电影, 音乐, 建议,ALL;
    }


}
