package com.cafe24.pickmetop.recruit.repository;

import com.cafe24.pickmetop.recruit.domain.*;

import java.util.List;

public interface RecruitDao {

    List<JobCategory1> getListJobCategory1();

    List<JobCategory2> getListJobCategory2ByJobCategory1Id(int jobCategory1Id);

    int getCompanyIdByCompanyName(String recruitCompanyName);

    int getRecruitCompanyIdByRecruitName(String recruitName);

    int getRecruitCompanyJobIdByJobCategory2Id(int jobCategory2Id);

    void createRecruit(RecruitCompany recruitCompany);

    void createRecruitJob(RecruitCompanyJob recruitCompanyJob);

    void createRecruitJobArticle(RecruitCompanyJobArticle recruitCompanyJobArticle);

    List<RecruitCompany> getRecruitCompanies();

    RecruitCompany getRecruitCompanyByRecruitCompanyId(int recruitCompanyId);

    List<RecruitCompanyJob> getRecruitCompanyJobByRecruitCompanyId(int recruitCompanyId);

    RecruitCompanyJob getRecruitCompanyJobByRecruitCompanyJobId(int recruitCompanyJobId);

    // 채용 기업 직무별 자소서 항목 리스트
    List<RecruitCompanyJobArticle> getArticlesByRecruitCompanyJobId(int recruitCompanyJobId);
}
