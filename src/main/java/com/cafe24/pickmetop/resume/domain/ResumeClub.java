package com.cafe24.pickmetop.resume.domain;

import java.util.Date;

/**
 * Created by walba on 2017-07-03.
 */
public class ResumeClub {
    private Long id;
    private Long resumeId;
    private String clubName;
    private String content;
    private Date clubBeginDate;
    private Date clubEndDate;

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
        return clubName;
    }

    public void setName(String name) {
        this.clubName = name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getClubBeginDate() {
        return clubBeginDate;
    }

    public void setClubBeginDate(Date clubBeginDate) {
        this.clubBeginDate = clubBeginDate;
    }

    public Date getClubEndDate() {
        return clubEndDate;
    }

    public void setClubEndDate(Date clubEndDate) {
        this.clubEndDate = clubEndDate;
    }

    @Override
    public String toString() {
        return "ResumeClub{" +
                "id=" + id +
                ", resumeId=" + resumeId +
                ", clubName='" + clubName + '\'' +
                ", content='" + content + '\'' +
                ", clubBeginDate=" + clubBeginDate +
                ", clubEndDate=" + clubEndDate +
                '}';
    }
}
