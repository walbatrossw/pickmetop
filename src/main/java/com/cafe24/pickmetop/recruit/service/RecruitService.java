package com.cafe24.pickmetop.recruit.service;


import com.cafe24.pickmetop.recruit.domain.*;

import java.util.List;

public interface RecruitService {

    // 직무 대분류 1
    List<JobCategory1> getListJobCategory1();

    // 직무 대분류 2
    List<JobCategory2> getListJobCategory2ByJobCategory1Id(int jobCategory1Id);

    int getCompanyIdByCompanyName(String recruitCompanyName);

    int getRecruitCompanyIdByRecruitName(String recruitName);

    int getRecruitCompanyJobIdByJobCategory2Id(int jobCategory2Id);

    // 채용 기업
    void createRecruit(RecruitCompany recruitCompany);

    // 채용 기업 직무
    void createRecruitJob(RecruitCompanyJob recruitCompanyJob);

    // 채용 기업 직무 자소서 항목
    void createRecruitJobArticle(RecruitCompanyJobArticle recruitCompanyJobArticle);

    // 채용 기업 리스트
    List<RecruitCompany> getRecruitCompanies();

    // 채용 기업 상세보기
    RecruitCompany getRecruitCompanyByRecruitCompanyId(int recruitCompanyId);

    // 채용 기업 직무 리스트
    List<RecruitCompanyJob> getRecruitCompanyJobByRecruitCompanyId(int recruitCompanyId);

    // 채용 기업 직무 상세보기
    RecruitCompanyJob getRecruitCompanyJobByRecruitCompanyJobId(int recruitCompanyJobId);

    // 채용 기업 직무별 자소서 항목 리스트
    List<RecruitCompanyJobArticle> getArticlesByRecruitCompanyJobId(int recruitCompanyJobId);
}
