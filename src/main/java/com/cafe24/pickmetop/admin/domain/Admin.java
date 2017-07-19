package com.cafe24.pickmetop.admin.domain;

import java.util.Date;

public class Admin {
    private int adminId;
    private String adminEmail;
    private String adminPassword;
    private String adminName;
    private Date adminJoinDate;
    private Date adminUpdateDate;
    private Date adminLoginDate;

    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public String getAdminEmail() {
        return adminEmail;
    }

    public void setAdminEmail(String adminEmail) {
        this.adminEmail = adminEmail;
    }

    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public Date getAdminJoinDate() {
        return adminJoinDate;
    }

    public void setAdminJoinDate(Date adminJoinDate) {
        this.adminJoinDate = adminJoinDate;
    }

    public Date getAdminUpdateDate() {
        return adminUpdateDate;
    }

    public void setAdminUpdateDate(Date adminUpdateDate) {
        this.adminUpdateDate = adminUpdateDate;
    }

    public Date getAdminLoginDate() {
        return adminLoginDate;
    }

    public void setAdminLoginDate(Date adminLoginDate) {
        this.adminLoginDate = adminLoginDate;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "adminId=" + adminId +
                ", adminEmail='" + adminEmail + '\'' +
                ", adminPassword='" + adminPassword + '\'' +
                ", adminName='" + adminName + '\'' +
                ", adminJoinDate=" + adminJoinDate +
                ", adminUpdateDate=" + adminUpdateDate +
                ", adminLoginDate=" + adminLoginDate +
                '}';
    }
}
