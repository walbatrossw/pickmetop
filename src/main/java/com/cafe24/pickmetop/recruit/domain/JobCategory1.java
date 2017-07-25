package com.cafe24.pickmetop.recruit.domain;


public class JobCategory1 {
    private int jobCategory1Id;
    private String jobCategory1Name;

    public int getJobCategory1Id() {
        return jobCategory1Id;
    }

    public void setJobCategory1Id(int jobCategory1Id) {
        this.jobCategory1Id = jobCategory1Id;
    }

    public String getJobCategory1Name() {
        return jobCategory1Name;
    }

    public void setJobCategory1Name(String jobCategory1Name) {
        this.jobCategory1Name = jobCategory1Name;
    }

    @Override
    public String toString() {
        return "JobCategory1{" +
                "jobCategory1Id=" + jobCategory1Id +
                ", jobCategory1Name='" + jobCategory1Name + '\'' +
                '}';
    }
}
