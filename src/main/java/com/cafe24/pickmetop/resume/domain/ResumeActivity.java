package com.cafe24.pickmetop.resume.domain;

import java.util.Date;

/**
 * Created by walba on 2017-07-03.
 */
public class ResumeActivity {
    private Long id;
    private Long resumeId;
    private String title;
    private String content;
    private Date activityBeginDate;
    private Date activityEndDate;

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

    public Date getActivityBeginDate() {
        return activityBeginDate;
    }

    public void setActivityBeginDate(Date activityBeginDate) {
        this.activityBeginDate = activityBeginDate;
    }

    public Date getActivityEndDate() {
        return activityEndDate;
    }

    public void setActivityEndDate(Date activityEndDate) {
        this.activityEndDate = activityEndDate;
    }

    @Override
    public String toString() {
        return "ResumeActivity{" +
                "id=" + id +
                ", resumeId=" + resumeId +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", activityBeginDate=" + activityBeginDate +
                ", activityEndDate=" + activityEndDate +
                '}';
    }
}
