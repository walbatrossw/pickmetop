package com.cafe24.pickmetop.recruit.domain;

import java.util.List;

public class RecruitCompanyJob {
    private int recruitCompanyJobId;
    private int recruitCompanyId;
    private int jobCategory2Id;
    private String recruitCompanyJobState;
    private String recruitCompanyJobEdu;
    private String recruitCompanyJobDetail;
    private RecruitCompany recruitCompany;
    private JobCategory2 jobCategory2;
    private List<RecruitCompanyJob> recruitCompanyJobs;

    public int getRecruitCompanyJobId() {
        return recruitCompanyJobId;
    }

    public void setRecruitCompanyJobId(int recruitCompanyJobId) {
        this.recruitCompanyJobId = recruitCompanyJobId;
    }

    public int getRecruitCompanyId() {
        return recruitCompanyId;
    }

    public void setRecruitCompanyId(int recruitCompanyId) {
        this.recruitCompanyId = recruitCompanyId;
    }

    public int getJobCategory2Id() {
        return jobCategory2Id;
    }

    public void setJobCategory2Id(int jobCategory2Id) {
        this.jobCategory2Id = jobCategory2Id;
    }

    public String getRecruitCompanyJobState() {
        return recruitCompanyJobState;
    }

    public void setRecruitCompanyJobState(String recruitCompanyJobState) {
        this.recruitCompanyJobState = recruitCompanyJobState;
    }

    public String getRecruitCompanyJobEdu() {
        return recruitCompanyJobEdu;
    }

    public void setRecruitCompanyJobEdu(String recruitCompanyJobEdu) {
        this.recruitCompanyJobEdu = recruitCompanyJobEdu;
    }

    public String getRecruitCompanyJobDetail() {
        return recruitCompanyJobDetail;
    }

    public void setRecruitCompanyJobDetail(String recruitCompanyJobDetail) {
        this.recruitCompanyJobDetail = recruitCompanyJobDetail;
    }

    public RecruitCompany getRecruitCompany() {
        return recruitCompany;
    }

    public void setRecruitCompany(RecruitCompany recruitCompany) {
        this.recruitCompany = recruitCompany;
    }

    public JobCategory2 getJobCategory2() {
        return jobCategory2;
    }

    public void setJobCategory2(JobCategory2 jobCategory2) {
        this.jobCategory2 = jobCategory2;
    }

    public List<RecruitCompanyJob> getRecruitCompanyJobs() {
        return recruitCompanyJobs;
    }

    public void setRecruitCompanyJobs(List<RecruitCompanyJob> recruitCompanyJobs) {
        this.recruitCompanyJobs = recruitCompanyJobs;
    }

    @Override
    public String toString() {
        return "RecruitCompanyJob{" +
                "recruitCompanyJobId=" + recruitCompanyJobId +
                ", recruitCompanyId=" + recruitCompanyId +
                ", jobCategory2Id=" + jobCategory2Id +
                ", recruitCompanyJobState='" + recruitCompanyJobState + '\'' +
                ", recruitCompanyJobEdu='" + recruitCompanyJobEdu + '\'' +
                ", recruitCompanyJobDetail='" + recruitCompanyJobDetail + '\'' +
                ", recruitCompany=" + recruitCompany +
                ", jobCategory2=" + jobCategory2 +
                ", recruitCompanyJobs=" + recruitCompanyJobs +
                '}';
    }
}
