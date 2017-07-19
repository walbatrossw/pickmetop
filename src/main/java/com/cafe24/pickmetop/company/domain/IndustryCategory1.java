package com.cafe24.pickmetop.company.domain;


public class IndustryCategory1 {
    private int industryCategory1Id;
    private String industryCategory1Name;

    public int getIndustryCategory1Id() {
        return industryCategory1Id;
    }

    public void setIndustryCategory1Id(int industryCategory1Id) {
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
