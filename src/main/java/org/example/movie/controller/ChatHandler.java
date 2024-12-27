package org.example.movie.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.example.movie.common.PrivateMessages;
import org.example.movie.common.UserEntity;
import org.example.movie.repository.ChatUserRepository;
import org.example.movie.repository.MessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

//public class ChatHandler extends TextWebSocketHandler {
//
//    private Set<WebSocketSession> sessions = new HashSet<>();
//    private ObjectMapper objectMapper = new ObjectMapper();  // 用于解析 JSON 消息
//
//    @Override
//    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
//        sessions.add(session);
//        System.out.println("新客户端连接: " + session.getId());
//    }
//
//    @Override
//    public void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
//        // 解析收到的消息（包含用户名和消息内容）
//        String payload = message.getPayload();
//        try {
//            // 解析消息 JSON
//            MessageModel messageModel = objectMapper.readValue(payload, MessageModel.class);
//
//            // 直接发送结构化的 JSON 数据给所有连接的客户端
//            for (WebSocketSession webSocketSession : sessions) {
//                if (webSocketSession.isOpen()) {
//                    // 这里发送的是原始的消息数据，而不是格式化的字符串
//                    String responseMessage = objectMapper.writeValueAsString(messageModel); // 将 messageModel 转换为 JSON 字符串
//                    webSocketSession.sendMessage(new TextMessage(responseMessage));
//                }
//            }
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//    }
//
//    @Override
//    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
//        sessions.remove(session);
//        System.out.println("客户端断开连接: " + session.getId());
//    }
//
//    // 消息模型，用来表示收到的消息和用户名
//    public static class MessageModel {
//        private String username;
//        private String message;
//
//        // Getters 和 Setters
//        public String getUsername() {
//            return username;
//        }
//
//        public void setUsername(String username) {
//            this.username = username;
//        }
//
//        public String getMessage() {
//            return message;
//        }
//
//        public void setMessage(String message) {
//            this.message = message;
//        }
//    }
//}
//

@Component
public class ChatHandler extends TextWebSocketHandler {

    private Set<WebSocketSession> sessions = new HashSet<>();
    private Map<String, WebSocketSession> userSessions = new HashMap<>(); // 记录每个用户的 WebSocket 会话
    private ObjectMapper objectMapper = new ObjectMapper();  // 用于解析 JSON 消息

    @Autowired
    private MessageRepository messageRepository;


    @Autowired
    private ChatUserRepository chatUserRepository;

    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        // 获取当前用户的用户名，这里可以根据自己的需求从 URI 或其他地方获取
        String username = getUsernameFromSession(session);

        // 将用户名存储到 session 的属性中，这样之后可以通过 session.getAttributes().get("username") 获取
        session.getAttributes().put("username", username);

        // 将用户会话放入 sessions 集合中，用于后续消息广播或私聊
        userSessions.put(username, session);  // 将用户名与会话关联
        sessions.add(session);  // 连接到聊天室

        System.out.println("新客户端连接: " + session.getId() + ", 用户: " + username);
    }
    private String getUsernameFromSession(WebSocketSession session) {
        // 从 WebSocket URI 中提取用户名参数
        String username = session.getUri().getQuery();  // 获取 URL 参数，例如: "username=user123"

        // 提取出实际的用户名（这里假设 URI 是这种形式）
        if (username != null && username.startsWith("username=")) {
            return username.substring("username=".length());  // 获取用户名部分
        }
        return "defaultUser";  // 如果没有传递用户名，使用默认用户名
    }
    @Override
    public void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {

        // 解析消息
        String payload = message.getPayload();
        try {
            MessageModel messageModel = objectMapper.readValue(payload, MessageModel.class);

            if (messageModel.getReceiver() != null) {
                // 私聊消息
                sendPrivateMessage(messageModel);
            } else {
                // 广播消息
                broadcastMessage(messageModel);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }



    // 发送私聊消息
    private void sendPrivateMessage(MessageModel messageModel) throws IOException {
        WebSocketSession receiverSession = userSessions.get(messageModel.getReceiver());
        if (receiverSession != null && receiverSession.isOpen()) {
            String responseMessage = objectMapper.writeValueAsString(messageModel);
            receiverSession.sendMessage(new TextMessage(responseMessage));
//            savePrivateMessage(messageModel); // 将消息存入数据库
        } else {
            System.out.println("接收者不在线: " + messageModel.getReceiver());
        }
    }

    // 广播消息
    private void broadcastMessage(MessageModel messageModel) throws IOException {
        for (WebSocketSession webSocketSession : sessions) {
            if (webSocketSession.isOpen()) {
                String responseMessage = objectMapper.writeValueAsString(messageModel);
                webSocketSession.sendMessage(new TextMessage(responseMessage));
            }
        }
    }

    private Long getUserIdByUsername(String username) {
        UserEntity user = chatUserRepository.findByUsername(username);
        if (user != null) {
            return user.getId();  // 返回用户 ID
        } else {
            throw new IllegalArgumentException("用户不存在: " + username);
        }
    }


//    private void savePrivateMessage(MessageModel messageModel) {
//        System.out.println("messageModel: " + messageModel);
//        System.out.println("Sender: " + messageModel.getUsername());  // 发送者
//        System.out.println("Receiver: " + messageModel.getReceiver());  // 接收者
//        System.out.println("Message: " + messageModel.getMessage());  // 消息内容
//        if (messageRepository == null) {
//            System.out.println("messageRepository is null!");
//            return;
//        }
//        if (messageModel.getUsername() == null || messageModel.getReceiver() == null || messageModel.getMessage() == null) {
//            System.out.println("One of the fields is null!");
//            return;
//        }
//
//        try {
//            // 创建 PrivateMessages 实体并设置字段
//            PrivateMessages privateMessage = new PrivateMessages();
//            privateMessage.setSendername(messageModel.getUsername());  // 发送者用户名
//            privateMessage.setReceivername(messageModel.getReceiver());  // 接收者用户名
//            privateMessage.setMessage(messageModel.getMessage());  // 消息内容
//
//            // 设置时间戳为当前时间
//            privateMessage.setTimestamp(new Timestamp(System.currentTimeMillis()));
//
//            // 保存消息到数据库
//            messageRepository.save(privateMessage);
//            System.out.println("私聊消息已保存: " + privateMessage);
//
//        } catch (Exception e) {
//            System.out.println("Error saving private message: " + e.getMessage());
//            e.printStackTrace();
//        }
//    }


//    // 获取用户 ID（这里假设有个方法来查询数据库或者缓存）
//    private Long getUserIdByUsername(String username) {
//        User user = messageRepository.findByUsername(username);
//        if (user != null) {
//            return user.getId();
//        }
//        throw new IllegalArgumentException("用户不存在: " + username);
//    }

    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        sessions.remove(session);
        // 根据会话关闭后移除用户
        userSessions.values().remove(session);
        System.out.println("客户端断开连接: " + session.getId());
    }


    public static class MessageModel {
        private String username;
        private String receiver;  // 私聊接收者
        private String message;

        // Getters 和 Setters
        public String getUsername() {
            return username;
        }

        public void setUsername(String username) {
            this.username = username;
        }

        public String getReceiver() {
            return receiver;
        }

        public void setReceiver(String receiver) {
            this.receiver = receiver;
        }

        public String getMessage() {
            return message;
        }

        public void setMessage(String message) {
            this.message = message;
        }

        @Override
        public String toString() {
            return "MessageModel{" +
                    "username='" + username + '\'' +
                    ", receiver='" + receiver + '\'' +
                    ", message='" + message + '\'' +
                    '}';
        }

        public MessageModel(String username, String receiver, String message) {
            this.username = username;
            this.receiver = receiver;
            this.message = message;
        }

        public MessageModel() {
        }
    }
}
