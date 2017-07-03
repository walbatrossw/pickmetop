package com.cafe24.pickmetop.resume.domain;

import java.util.Date;

public class ResumeLanguage {
    private Long id;
    private Long resumeId;
    private String language;
    private String testName;
    private String level;
    private String grade;
    private String host;
    private String regNum;
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

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getTestName() {
        return testName;
    }

    public void setTestName(String testName) {
        this.testName = testName;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getHost() {
        return host;
    }

    public void setHost(String host) {
        this.host = host;
    }

    public String getRegNum() {
        return regNum;
    }

    public void setRegNum(String regNum) {
        this.regNum = regNum;
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
        return "ResumeLanguage{" +
                "id=" + id +
                ", resumeId=" + resumeId +
                ", language='" + language + '\'' +
                ", testName='" + testName + '\'' +
                ", level='" + level + '\'' +
                ", grade='" + grade + '\'' +
                ", host='" + host + '\'' +
                ", regNum='" + regNum + '\'' +
                ", beginDate=" + beginDate +
                ", endDate=" + endDate +
                '}';
    }
}
