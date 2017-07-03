package com.cafe24.pickmetop.resume.domain;

import java.util.Date;

/**
 * Created by walba on 2017-07-03.
 */
public class ResumeCareer {
    private Long id;
    private Long resumeId;
    private String company;
    private String position;
    private String department;
    private String task;
    private String resign;
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

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getTask() {
        return task;
    }

    public void setTask(String task) {
        this.task = task;
    }

    public String getResign() {
        return resign;
    }

    public void setResign(String resign) {
        this.resign = resign;
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
        return "ResumeCareer{" +
                "id=" + id +
                ", resumeId=" + resumeId +
                ", company='" + company + '\'' +
                ", position='" + position + '\'' +
                ", department='" + department + '\'' +
                ", task='" + task + '\'' +
                ", resign='" + resign + '\'' +
                ", beginDate=" + beginDate +
                ", endDate=" + endDate +
                '}';
    }
}
