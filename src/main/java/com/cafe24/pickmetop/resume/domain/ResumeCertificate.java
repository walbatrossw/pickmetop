package com.cafe24.pickmetop.resume.domain;

import java.util.Date;

/**
 * Created by walba on 2017-07-03.
 */
public class ResumeCertificate {
    private Long id;
    private Long resumeId;
    private String name;
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
        return "ResumeCertificate{" +
                "id=" + id +
                ", resumeId=" + resumeId +
                ", name='" + name + '\'' +
                ", grade='" + grade + '\'' +
                ", host='" + host + '\'' +
                ", regNum='" + regNum + '\'' +
                ", beginDate=" + beginDate +
                ", endDate=" + endDate +
                '}';
    }
}
