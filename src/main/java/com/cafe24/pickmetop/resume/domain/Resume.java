package com.cafe24.pickmetop.resume.domain;

import com.cafe24.pickmetop.user.domain.User;

import java.util.Date;

/**
 * Created by walba on 2017-07-03.
 */
public class Resume {
    private Long id;
    private User user;
    private String resumeName;
    private Date createDate;
    private Date modifiedDate;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getResumeName() {
        return resumeName;
    }

    public void setResumeName(String resumeName) {
        this.resumeName = resumeName;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getModifiedDate() {
        return modifiedDate;
    }

    public void setModifiedDate(Date modifiedDate) {
        this.modifiedDate = modifiedDate;
    }

    @Override
    public String toString() {
        return "Resume{" +
                "id=" + id +
                ", user=" + user +
                ", resumeName='" + resumeName + '\'' +
                ", createDate=" + createDate +
                ", modifiedDate=" + modifiedDate +
                '}';
    }
}
