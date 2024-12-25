package org.example.movie.controller;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@RestController
@RequestMapping("/ask-model")
public class ChatController {

    private static final String API_URL = "https://spark-api-open.xf-yun.com/v1/chat/completions";
    private static final String API_KEY = "";  // 请替换为有效的API密钥

@PostMapping
public ResponseEntity<Map<String, String>> askModel(@RequestBody Map<String, String> userInput) {
    // 获取前端发送的用户问题
    String userQuestion = userInput.get("userQuestion");

    if (userQuestion == null || userQuestion.isEmpty()) {
        Map<String, String> errorResponse = new HashMap<>();
        errorResponse.put("error", "问题不能为空");
        return ResponseEntity.badRequest().body(errorResponse);
    }

    try {
        // 调用外部API
        String modelResponse = callExternalAPI(userQuestion);

        // 返回模型回答
        Map<String, String> response = new HashMap<>();
        response.put("answer", modelResponse);
        return ResponseEntity.ok(response);
    } catch (Exception e) {
        e.printStackTrace();
        Map<String, String> errorResponse = new HashMap<>();
        errorResponse.put("error", "请求模型失败");
        return ResponseEntity.status(500).body(errorResponse);
    }
}
    private String callExternalAPI(String userQuestion) {
        // 构造请求体
        Map<String, Object> data = new HashMap<>();
        data.put("max_tokens", 4096);
        data.put("top_k", 4);
        data.put("temperature", 0.5);
        data.put("model", "4.0Ultra");

        // 消息部分
        Map<String, String> userMessage = new HashMap<>();
        userMessage.put("role", "user");
        userMessage.put("content", userQuestion);

        data.put("messages", new Map[]{userMessage});
        data.put("stream", true);

        // 设置请求头
        HttpHeaders headers = new HttpHeaders();
        headers.set("Authorization", API_KEY);
        headers.setContentType(MediaType.APPLICATION_JSON);

        HttpEntity<Map<String, Object>> requestEntity = new HttpEntity<>(data, headers);

        // 使用 RestTemplate 发送 POST 请求
        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<byte[]> response = restTemplate.exchange(API_URL, HttpMethod.POST, requestEntity, byte[].class);

        // 确保返回的响应为 UTF-8 编码
        try {
            String responseBody = new String(response.getBody(), StandardCharsets.UTF_8);

            // 打印响应内容查看原始数据
            System.out.println("Raw Response Body: " + responseBody);

            // 去掉前缀 "data: "
            if (responseBody.startsWith("data: ")) {
                responseBody = responseBody.substring("data: ".length());
            }

            // 调用正则处理 提取并拼接 content 字段
            return extractAndConcatContentUsingRegex(responseBody);

        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("响应解码失败：" + e.getMessage());
        }
    }



    private String extractAndConcatContentUsingRegex(String responseBody) {
        StringBuilder contentBuilder = new StringBuilder();

        try {
            // 使用正则表达式提取所有 content 字段
            String regex = "\"content\":\"(.*?)\"";
            Pattern pattern = Pattern.compile(regex);
            Matcher matcher = pattern.matcher(responseBody);

            while (matcher.find()) {
                String content = matcher.group(1);  // 获取匹配的内容
                contentBuilder.append(content);  // 拼接 content 字段
            }

            // 返回拼接后的所有 content 字段
            return contentBuilder.toString().trim();

        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("使用正则表达式提取 content 失败：" + e.getMessage());
        }
    }}