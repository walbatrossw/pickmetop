package com.cafe24.pickmetop.resume.domain;

import java.util.Date;

/**
 * Created by walba on 2017-07-03.
 */
public class ResumeClub {
    private Long id;
    private Long resumeId;
    private String name;
    private String content;
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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
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
        return "ResumeClub{" +
                "id=" + id +
                ", resumeId=" + resumeId +
                ", name='" + name + '\'' +
                ", content='" + content + '\'' +
                ", beginDate=" + beginDate +
                ", endDate=" + endDate +
                '}';
    }
}
