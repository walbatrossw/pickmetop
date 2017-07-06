package com.cafe24.pickmetop.resume.domain;

import java.util.Date;

public class ResumeCertificate {
    private Long id;
    private Long resumeId;
    private String certificatName;
    private String certificatGrade;
    private String certificatHost;
    private String certificatRegNum;
    private Date certificateBeginDate;
    private Date certificateEndDate;

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

    public String getCertificatName() {
        return certificatName;
    }

    public void setCertificatName(String certificatName) {
        this.certificatName = certificatName;
    }

    public String getCertificatGrade() {
        return certificatGrade;
    }

    public void setCertificatGrade(String certificatGrade) {
        this.certificatGrade = certificatGrade;
    }

    public String getCertificatHost() {
        return certificatHost;
    }

    public void setCertificatHost(String certificatHost) {
        this.certificatHost = certificatHost;
    }

    public String getCertificatRegNum() {
        return certificatRegNum;
    }

    public void setCertificatRegNum(String certificatRegNum) {
        this.certificatRegNum = certificatRegNum;
    }

    public Date getCertificateBeginDate() {
        return certificateBeginDate;
    }

    public void setCertificateBeginDate(Date certificateBeginDate) {
        this.certificateBeginDate = certificateBeginDate;
    }

    public Date getCertificateEndDate() {
        return certificateEndDate;
    }

    public void setCertificateEndDate(Date certificateEndDate) {
        this.certificateEndDate = certificateEndDate;
    }

    @Override
    public String toString() {
        return "ResumeCertificate{" +
                "id=" + id +
                ", resumeId=" + resumeId +
                ", certificatName='" + certificatName + '\'' +
                ", certificatGrade='" + certificatGrade + '\'' +
                ", certificatHost='" + certificatHost + '\'' +
                ", certificatRegNum='" + certificatRegNum + '\'' +
                ", certificateBeginDate=" + certificateBeginDate +
                ", certificateEndDate=" + certificateEndDate +
                '}';
    }
}
