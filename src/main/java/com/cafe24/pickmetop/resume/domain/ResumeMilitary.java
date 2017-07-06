package com.cafe24.pickmetop.resume.domain;

import java.util.Date;

public class ResumeMilitary {
    private Long id;
    private Long resumeId;
    private String state;
    private String group;
    private String rank;
    private String branch;
    private Date MilitaryBeginDate;
    private Date MilitaryEndDate;

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

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public Date getMilitaryBeginDate() {
        return MilitaryBeginDate;
    }

    public void setMilitaryBeginDate(Date militaryBeginDate) {
        MilitaryBeginDate = militaryBeginDate;
    }

    public Date getMilitaryEndDate() {
        return MilitaryEndDate;
    }

    public void setMilitaryEndDate(Date militaryEndDate) {
        MilitaryEndDate = militaryEndDate;
    }

    @Override
    public String toString() {
        return "ResumeMilitary{" +
                "id=" + id +
                ", resumeId=" + resumeId +
                ", state='" + state + '\'' +
                ", group='" + group + '\'' +
                ", rank='" + rank + '\'' +
                ", branch='" + branch + '\'' +
                ", MilitaryBeginDate=" + MilitaryBeginDate +
                ", MilitaryEndDate=" + MilitaryEndDate +
                '}';
    }
}
