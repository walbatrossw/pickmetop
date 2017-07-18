package com.cafe24.pickmetop.company.domain;

public class IndustryIdx2 {
    private Long id;
    private Long industryIdx1Id;
    private String industryIdx2Name;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getIndustryIdx1Id() {
        return industryIdx1Id;
    }

    public void setIndustryIdx1Id(Long industryIdx1Id) {
        this.industryIdx1Id = industryIdx1Id;
    }

    public String getIndustryIdx2Name() {
        return industryIdx2Name;
    }

    public void setIndustryIdx2Name(String industryIdx2Name) {
        this.industryIdx2Name = industryIdx2Name;
    }

    @Override
    public String toString() {
        return "IndustryIdx2{" +
                "id=" + id +
                ", industryIdx1Id=" + industryIdx1Id +
                ", industryIdx2Name='" + industryIdx2Name + '\'' +
                '}';
    }
}
