package com.cafe24.pickmetop.resume.domain;

import java.util.Date;

public class ResumeHighschool {
    private Long id;
    private Long resumeId;
    private String schoolName;
    private String category;
    private Date highschoolBeginDate;
    private Date highschoolEndDate;

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

    public String getSchoolName() {
        return schoolName;
    }

    public void setSchoolName(String schoolName) {
        this.schoolName = schoolName;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public Date getHighschoolBeginDate() {
        return highschoolBeginDate;
    }

    public void setHighschoolBeginDate(Date highschoolBeginDate) {
        this.highschoolBeginDate = highschoolBeginDate;
    }

    public Date getHighschoolEndDate() {
        return highschoolEndDate;
    }

    public void setHighschoolEndDate(Date highschoolEndDate) {
        this.highschoolEndDate = highschoolEndDate;
    }

    @Override
    public String toString() {
        return "ResumeHighschool{" +
                "id=" + id +
                ", resumeId=" + resumeId +
                ", schoolName='" + schoolName + '\'' +
                ", category='" + category + '\'' +
                ", highschoolBeginDate=" + highschoolBeginDate +
                ", highschoolEndDate=" + highschoolEndDate +
                '}';
    }
}
