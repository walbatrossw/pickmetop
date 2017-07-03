package com.cafe24.pickmetop.resume.domain;

import java.util.Date;

public class ResumeMilitary {
    private Long id;
    private Long resumeId;
    private String state;
    private String group;
    private String rank;
    private String position;
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

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
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
        return "ResumeMilitary{" +
                "id=" + id +
                ", resumeId=" + resumeId +
                ", state='" + state + '\'' +
                ", group='" + group + '\'' +
                ", rank='" + rank + '\'' +
                ", position='" + position + '\'' +
                ", beginDate=" + beginDate +
                ", endDate=" + endDate +
                '}';
    }
}
