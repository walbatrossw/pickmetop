package com.cafe24.pickmetop.company.domain;

import com.cafe24.pickmetop.admin.domain.Admin;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Company {

    private int companyId;
    private int industryCategory2Id;
    private String companyName;
    private String companyType;
    private String companyHomepage;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date companyBirthDate;
    private String companyCeo;
    private String companyAddress;
    private String companyPhone;
    private int companyTotalsales;
    private Date companyCreateDate;
    private Date companyUpdateDate;
    private int adminId;
    private Admin admin;
    private IndustryCategory2 industryCategory2;

    public int getCompanyId() {
        return companyId;
    }

    public void setCompanyId(int companyId) {
        this.companyId = companyId;
    }

    public int getIndustryCategory2Id() {
        return industryCategory2Id;
    }

    public void setIndustryCategory2Id(int industryCategory2Id) {
        this.industryCategory2Id = industryCategory2Id;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getCompanyType() {
        return companyType;
    }

    public void setCompanyType(String companyType) {
        this.companyType = companyType;
    }

    public String getCompanyHomepage() {
        return companyHomepage;
    }

    public void setCompanyHomepage(String companyHomepage) {
        this.companyHomepage = companyHomepage;
    }

    public Date getCompanyBirthDate() {
        return companyBirthDate;
    }

    public void setCompanyBirthDate(Date companyBirthDate) {
        this.companyBirthDate = companyBirthDate;
    }

    public String getCompanyCeo() {
        return companyCeo;
    }

    public void setCompanyCeo(String companyCeo) {
        this.companyCeo = companyCeo;
    }

    public String getCompanyAddress() {
        return companyAddress;
    }

    public void setCompanyAddress(String companyAddress) {
        this.companyAddress = companyAddress;
    }

    public String getCompanyPhone() {
        return companyPhone;
    }

    public void setCompanyPhone(String companyPhone) {
        this.companyPhone = companyPhone;
    }

    public int getCompanyTotalsales() {
        return companyTotalsales;
    }

    public void setCompanyTotalsales(int companyTotalsales) {
        this.companyTotalsales = companyTotalsales;
    }

    public Date getCompanyCreateDate() {
        return companyCreateDate;
    }

    public void setCompanyCreateDate(Date companyCreateDate) {
        this.companyCreateDate = companyCreateDate;
    }

    public Date getCompanyUpdateDate() {
        return companyUpdateDate;
    }

    public void setCompanyUpdateDate(Date companyUpdateDate) {
        this.companyUpdateDate = companyUpdateDate;
    }

    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public Admin getAdmin() {
        return admin;
    }

    public void setAdmin(Admin admin) {
        this.admin = admin;
    }

    public IndustryCategory2 getIndustryCategory2() {
        return industryCategory2;
    }

    public void setIndustryCategory2(IndustryCategory2 industryCategory2) {
        this.industryCategory2 = industryCategory2;
    }

    @Override
    public String toString() {
        return "Company{" +
                "companyId=" + companyId +
                ", industryCategory2Id=" + industryCategory2Id +
                ", companyName='" + companyName + '\'' +
                ", companyType='" + companyType + '\'' +
                ", companyHomepage='" + companyHomepage + '\'' +
                ", companyBirthDate=" + companyBirthDate +
                ", companyCeo='" + companyCeo + '\'' +
                ", companyAddress='" + companyAddress + '\'' +
                ", companyPhone='" + companyPhone + '\'' +
                ", companyTotalsales=" + companyTotalsales +
                ", companyCreateDate=" + companyCreateDate +
                ", companyUpdateDate=" + companyUpdateDate +
                ", adminId=" + adminId +
                ", admin=" + admin +
                ", industryCategory2=" + industryCategory2 +
                '}';
    }
}
