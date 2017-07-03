package com.cafe24.pickmetop.resume.domain;

import java.util.Date;

public class ResumeHighschool {
    private Long id;
    private Long resumeId;
    private String name;
    private String category;
    private Date beginDate;
    private Date endDate;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getResumeId() {
        return resumeId;
    }

    public void setResumeId(Long resumeId) {
        this.resumeId = resumeId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public Date getBeginDate() {
        return beginDate;
    }

    public void setBeginDate(Date beginDate) {
        this.beginDate = beginDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    @Override
    public String toString() {
        return "ResumeHighschool{" +
                "id=" + id +
                ", resumeId=" + resumeId +
                ", name='" + name + '\'' +
                ", category='" + category + '\'' +
                ", beginDate=" + beginDate +
                ", endDate=" + endDate +
                '}';
    }
}
