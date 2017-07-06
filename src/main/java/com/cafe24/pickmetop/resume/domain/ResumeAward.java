package com.cafe24.pickmetop.resume.domain;

import java.util.Date;

public class ResumeAward {
    private Long id;
    private Long resumeId;
    private String title;
    private String content;
    private String host;
    private Date awardDate;

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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getHost() {
        return host;
    }

    public void setHost(String host) {
        this.host = host;
    }

    public Date getAwardDate() {
        return awardDate;
    }

    public void setAwardDate(Date awardDate) {
        this.awardDate = awardDate;
    }

    @Override
    public String toString() {
        return "ResumeAward{" +
                "id=" + id +
                ", resumeId=" + resumeId +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", host='" + host + '\'' +
                ", awardDate=" + awardDate +
                '}';
    }
}
