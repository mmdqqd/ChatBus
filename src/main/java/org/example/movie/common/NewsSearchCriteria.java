package org.example.movie.common;

import java.time.LocalDate;

public class NewsSearchCriteria {
    private String keyword;
    private LocalDate startDate;
    private LocalDate endDate;
    private String module; // 可以根据需要调整为Enum类型

    @Override
    public String toString() {
        return "NewsSearchCriteria{" +
                "keyword='" + keyword + '\'' +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                ", module='" + module + '\'' +
                '}';
    }

    public NewsSearchCriteria() {
    }

    public NewsSearchCriteria(String keyword, LocalDate startDate, LocalDate endDate, String module) {
        this.keyword = keyword;
        this.startDate = startDate;
        this.endDate = endDate;
        this.module = module;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public LocalDate getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDate startDate) {
        this.startDate = startDate;
    }

    public LocalDate getEndDate() {
        return endDate;
    }

    public void setEndDate(LocalDate endDate) {
        this.endDate = endDate;
    }

    public String getModule() {
        return module;
    }

    public void setModule(String module) {
        this.module = module;
    }
// Getters and Setters
}
