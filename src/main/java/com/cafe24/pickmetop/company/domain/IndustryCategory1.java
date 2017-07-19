package com.cafe24.pickmetop.company.domain;


public class IndustryCategory1 {
    private Long industryCategory1Id;
    private String industryCategory1Name;

    public Long getIndustryCategory1Id() {
        return industryCategory1Id;
    }

    public void setIndustryCategory1Id(Long industryCategory1Id) {
        this.industryCategory1Id = industryCategory1Id;
    }

    public String getIndustryCategory1Name() {
        return industryCategory1Name;
    }

    public void setIndustryCategory1Name(String industryCategory1Name) {
        this.industryCategory1Name = industryCategory1Name;
    }

    @Override
    public String toString() {
        return "IndustryCategory1{" +
                "industryCategory1Id=" + industryCategory1Id +
                ", industryCategory1Name='" + industryCategory1Name + '\'' +
                '}';
    }
}
