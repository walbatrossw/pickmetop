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
}
