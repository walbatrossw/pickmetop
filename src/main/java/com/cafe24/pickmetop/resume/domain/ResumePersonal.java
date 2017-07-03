package com.cafe24.pickmetop.resume.domain;

import java.util.Date;

public class ResumePersonal {
    private Long id;
    private Long resumeId;
    private String korName;
    private String engName;
    private String gender;
    private Date birthDate;
    private String phone;
    private String cellPhone;
    private String email;
    private String address;
    private String photo;

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

    public String getKorName() {
        return korName;
    }

    public void setKorName(String korName) {
        this.korName = korName;
    }

    public String getEngName() {
        return engName;
    }

    public void setEngName(String engName) {
        this.engName = engName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCellPhone() {
        return cellPhone;
    }

    public void setCellPhone(String cellPhone) {
        this.cellPhone = cellPhone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    @Override
    public String toString() {
        return "ResumePersonal{" +
                "id=" + id +
                ", resumeId=" + resumeId +
                ", korName='" + korName + '\'' +
                ", engName='" + engName + '\'' +
                ", gender='" + gender + '\'' +
                ", birthDate=" + birthDate +
                ", phone='" + phone + '\'' +
                ", cellPhone='" + cellPhone + '\'' +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                ", photo='" + photo + '\'' +
                '}';
    }
}
