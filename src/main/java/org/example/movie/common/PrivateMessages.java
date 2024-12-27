package org.example.movie.common;


import lombok.Getter;

import javax.persistence.*;
import java.sql.Timestamp;


@Getter
@Entity
public class PrivateMessages {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;            // 消息的唯一标识
    private String sendername;      // 发送者的用户 ID
    private String receivername;    // 接收者的用户 ID
    private String message;      // 消息的内容
    @Column(nullable = false, updatable = false, insertable = false)
    private Timestamp timestamp;  // 让数据库自动生成
    public PrivateMessages() {
    }

    public PrivateMessages(Long id, String sendername, String receivername, String message, Timestamp timestamp) {
        this.id = id;
        this.sendername = sendername;
        this.receivername = receivername;
        this.message = message;

    }

    public PrivateMessages(Long id, String sendername, String receivername, String message) {
        this.id = id;
        this.sendername = sendername;
        this.receivername = receivername;

    }

    public PrivateMessages(String sendername, String receivername, String message) {
        this.sendername = sendername;
        this.receivername = receivername;
        this.message = message;
    }


    @Override
    public String toString() {
        return "PrivateMessages{" +
                "id=" + id +
                ", sendername='" + sendername + '\'' +
                ", receivername='" + receivername + '\'' +
                ", message='" + message + '\'' +
                ", timestamp=" + timestamp +
                '}';
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setSendername(String sendername) {
        this.sendername = sendername;
    }

    public void setReceivername(String receivername) {
        this.receivername = receivername;
    }

    public void setMessage(String message) {
        this.message = message;
    }


    public void setTimestamp(java.sql.Timestamp timestamp) {
    }
}