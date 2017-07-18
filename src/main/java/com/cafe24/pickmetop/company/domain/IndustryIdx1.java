package com.cafe24.pickmetop.company.domain;


public class IndustryIdx1 {
    private Long id;
    private String industryIdx1Name;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getIndustryIdx1Name() {
        return industryIdx1Name;
    }

    public void setIndustryIdx1Name(String industryIdx1Name) {
        this.industryIdx1Name = industryIdx1Name;
    }

    @Override
    public String toString() {
        return "IndustryIdx1{" +
                "id=" + id +
                ", industryIdx1Name='" + industryIdx1Name + '\'' +
                '}';
    }
}
