package com.cafe24.pickmetop.recruit.domain;

import java.util.List;

public class RecruitCompanyJobArticle {
    private int recruitCompanyJobArticleId;
    private int recruitCompanyJobId;
    private String recruitCompanyJobArticleContent;
    private RecruitCompanyJob recruitCompanyJob;
    private List<RecruitCompanyJobArticle> recruitCompanyJobArticles;

    public int getRecruitCompanyJobArticleId() {
        return recruitCompanyJobArticleId;
    }

    public void setRecruitCompanyJobArticleId(int recruitCompanyJobArticleId) {
        this.recruitCompanyJobArticleId = recruitCompanyJobArticleId;
    }

    public int getRecruitCompanyJobId() {
        return recruitCompanyJobId;
    }

    public void setRecruitCompanyJobId(int recruitCompanyJobId) {
        this.recruitCompanyJobId = recruitCompanyJobId;
    }

    public String getRecruitCompanyJobArticleContent() {
        return recruitCompanyJobArticleContent;
    }

    public void setRecruitCompanyJobArticleContent(String recruitCompanyJobArticleContent) {
        this.recruitCompanyJobArticleContent = recruitCompanyJobArticleContent;
    }

    public RecruitCompanyJob getRecruitCompanyJob() {
        return recruitCompanyJob;
    }

    public void setRecruitCompanyJob(RecruitCompanyJob recruitCompanyJob) {
        this.recruitCompanyJob = recruitCompanyJob;
    }

    public List<RecruitCompanyJobArticle> getRecruitCompanyJobArticles() {
        return recruitCompanyJobArticles;
    }

    public void setRecruitCompanyJobArticles(List<RecruitCompanyJobArticle> recruitCompanyJobArticles) {
        this.recruitCompanyJobArticles = recruitCompanyJobArticles;
    }

    @Override
    public String toString() {
        return "RecruitCompanyJobArticle{" +
                "recruitCompanyJobArticleId=" + recruitCompanyJobArticleId +
                ", recruitCompanyJobId=" + recruitCompanyJobId +
                ", recruitCompanyJobArticleContent='" + recruitCompanyJobArticleContent + '\'' +
                ", recruitCompanyJob=" + recruitCompanyJob +
                ", recruitCompanyJobArticles=" + recruitCompanyJobArticles +
                '}';
    }
}
