package com.cafe24.pickmetop.recruit.domain;

import com.cafe24.pickmetop.admin.domain.Admin;
import com.cafe24.pickmetop.company.domain.Company;
import org.springframework.format.annotation.DateTimeFormat;


import java.sql.Date;
import java.util.List;

public class RecruitCompany {
    private int recruitCompanyId;
    private int companyId;
    private String recruitCompanyName;
    private String recruitName;
    private String recruitCompanyBeginDate;
    private String recruitCompanyEndDate;
    private String recruitCompanyPhotoName;
    private Date recruitCompanyCreateDate;
    private Date recruitCompanyUpdateDate;
    private int adminId;
    private Company company;
    private Admin admin;

    public int getRecruitCompanyId() {
        return recruitCompanyId;
    }

    public void setRecruitCompanyId(int recruitCompanyId) {
        this.recruitCompanyId = recruitCompanyId;
    }

    public int getCompanyId() {
        return companyId;
    }

    public void setCompanyId(int companyId) {
        this.companyId = companyId;
    }

    public String getRecruitCompanyName() {
        return recruitCompanyName;
    }

    public void setRecruitCompanyName(String recruitCompanyName) {
        this.recruitCompanyName = recruitCompanyName;
    }

    public String getRecruitName() {
        return recruitName;
    }

    public void setRecruitName(String recruitName) {
        this.recruitName = recruitName;
    }

    public String getRecruitCompanyBeginDate() {
        return recruitCompanyBeginDate;
    }

    public void setRecruitCompanyBeginDate(String recruitCompanyBeginDate) {
        this.recruitCompanyBeginDate = recruitCompanyBeginDate;
    }

    public String getRecruitCompanyEndDate() {
        return recruitCompanyEndDate;
    }

    public void setRecruitCompanyEndDate(String recruitCompanyEndDate) {
        this.recruitCompanyEndDate = recruitCompanyEndDate;
    }

    public String getRecruitCompanyPhotoName() {
        return recruitCompanyPhotoName;
    }

    public void setRecruitCompanyPhotoName(String recruitCompanyPhotoName) {
        this.recruitCompanyPhotoName = recruitCompanyPhotoName;
    }

    public Date getRecruitCompanyCreateDate() {
        return recruitCompanyCreateDate;
    }

    public void setRecruitCompanyCreateDate(Date recruitCompanyCreateDate) {
        this.recruitCompanyCreateDate = recruitCompanyCreateDate;
    }

    public Date getRecruitCompanyUpdateDate() {
        return recruitCompanyUpdateDate;
    }

    public void setRecruitCompanyUpdateDate(Date recruitCompanyUpdateDate) {
        this.recruitCompanyUpdateDate = recruitCompanyUpdateDate;
    }

    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public Admin getAdmin() {
        return admin;
    }

    public void setAdmin(Admin admin) {
        this.admin = admin;
    }

    @Override
    public String toString() {
        return "RecruitCompany{" +
                "recruitCompanyId=" + recruitCompanyId +
                ", companyId=" + companyId +
                ", recruitCompanyName='" + recruitCompanyName + '\'' +
                ", recruitName='" + recruitName + '\'' +
                ", recruitCompanyBeginDate='" + recruitCompanyBeginDate + '\'' +
                ", recruitCompanyEndDate='" + recruitCompanyEndDate + '\'' +
                ", recruitCompanyPhotoName='" + recruitCompanyPhotoName + '\'' +
                ", recruitCompanyCreateDate=" + recruitCompanyCreateDate +
                ", recruitCompanyUpdateDate=" + recruitCompanyUpdateDate +
                ", adminId=" + adminId +
                ", company=" + company +
                ", admin=" + admin +
                '}';
    }
}
