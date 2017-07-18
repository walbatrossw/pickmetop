package com.cafe24.pickmetop.company.domain;

import com.cafe24.pickmetop.admin.domain.Admin;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Company {

    private Long id;
    private Long industryIdx2Id;
    private String companyType;
    private String companyName;
    private String homePage;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date birthDate;
    private String ceo;
    private String address;
    private String phone;
    private Long totalSales;
    private Date createDate;
    private Date modifiedDate;
    private Long writerId;
    private Admin admin;
    private IndustryIdx2 industryIdx2;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getIndustryIdx2Id() {
        return industryIdx2Id;
    }

    public void setIndustryIdx2Id(Long industryIdx2Id) {
        this.industryIdx2Id = industryIdx2Id;
    }

    public String getCompanyType() {
        return companyType;
    }

    public void setCompanyType(String companyType) {
        this.companyType = companyType;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getHomePage() {
        return homePage;
    }

    public void setHomePage(String homePage) {
        this.homePage = homePage;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public String getCeo() {
        return ceo;
    }

    public void setCeo(String ceo) {
        this.ceo = ceo;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Long getTotalSales() {
        return totalSales;
    }

    public void setTotalSales(Long totalSales) {
        this.totalSales = totalSales;
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

    public Long getWriterId() {
        return writerId;
    }

    public void setWriterId(Long writerId) {
        this.writerId = writerId;
    }

    public Admin getAdmin() {
        return admin;
    }

    public void setAdmin(Admin admin) {
        this.admin = admin;
    }

    public IndustryIdx2 getIndustryIdx2() {
        return industryIdx2;
    }

    public void setIndustryIdx2(IndustryIdx2 industryIdx2) {
        this.industryIdx2 = industryIdx2;
    }

    @Override
    public String toString() {
        return "Company{" +
                "id=" + id +
                ", industryIdx2Id=" + industryIdx2Id +
                ", companyType='" + companyType + '\'' +
                ", companyName='" + companyName + '\'' +
                ", homePage='" + homePage + '\'' +
                ", birthDate=" + birthDate +
                ", ceo='" + ceo + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", totalSales=" + totalSales +
                ", createDate=" + createDate +
                ", modifiedDate=" + modifiedDate +
                ", writerId=" + writerId +
                ", admin=" + admin +
                ", industryIdx2=" + industryIdx2 +
                '}';
    }
}
