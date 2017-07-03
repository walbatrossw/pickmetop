package com.cafe24.pickmetop.resume.domain;

import java.util.Date;

public class ResumeUniversity {
    private Long id;
    private Long resumeId;
    private String name;
    private String category;
    private String major;
    private String doubleMojor;
    private String doubleMojorName;
    private String credit;
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

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getDoubleMojor() {
        return doubleMojor;
    }

    public void setDoubleMojor(String doubleMojor) {
        this.doubleMojor = doubleMojor;
    }

    public String getDoubleMojorName() {
        return doubleMojorName;
    }

    public void setDoubleMojorName(String doubleMojorName) {
        this.doubleMojorName = doubleMojorName;
    }

    public String getCredit() {
        return credit;
    }

    public void setCredit(String credit) {
        this.credit = credit;
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
        return "ResumeUniversity{" +
                "id=" + id +
                ", resumeId=" + resumeId +
                ", name='" + name + '\'' +
                ", category='" + category + '\'' +
                ", major='" + major + '\'' +
                ", doubleMojor='" + doubleMojor + '\'' +
                ", doubleMojorName='" + doubleMojorName + '\'' +
                ", credit='" + credit + '\'' +
                ", beginDate=" + beginDate +
                ", endDate=" + endDate +
                '}';
    }
}
