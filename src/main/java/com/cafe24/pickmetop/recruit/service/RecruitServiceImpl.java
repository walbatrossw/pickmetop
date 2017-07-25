package com.cafe24.pickmetop.recruit.service;

import com.cafe24.pickmetop.recruit.domain.*;
import com.cafe24.pickmetop.recruit.repository.RecruitDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecruitServiceImpl implements RecruitService {

    @Autowired
    RecruitDao recruitDao;

    @Override
    public List<JobCategory1> getListJobCategory1() {
        return recruitDao.getListJobCategory1();
    }

    @Override
    public List<JobCategory2> getListJobCategory2ByJobCategory1Id(int jobCategory1Id) {
        return recruitDao.getListJobCategory2ByJobCategory1Id(jobCategory1Id);
    }

    @Override
    public int getCompanyIdByCompanyName(String recruitCompanyName) {
        return recruitDao.getCompanyIdByCompanyName(recruitCompanyName);
    }

    @Override
    public int getRecruitCompanyIdByRecruitName(String recruitName) {
        return recruitDao.getRecruitCompanyIdByRecruitName(recruitName);
    }

    @Override
    public int getRecruitCompanyJobIdByJobCategory2Id(int jobCategory2Id) {
        return recruitDao.getRecruitCompanyJobIdByJobCategory2Id(jobCategory2Id);
    }

    @Override
    public void createRecruit(RecruitCompany recruitCompany) {
        recruitDao.createRecruit(recruitCompany);
    }

    @Override
    public void createRecruitJob(RecruitCompanyJob recruitCompanyJob) {
        recruitDao.createRecruitJob(recruitCompanyJob);
    }

    @Override
    public void createRecruitJobArticle(RecruitCompanyJobArticle recruitCompanyJobArticle) {
        recruitDao.createRecruitJobArticle(recruitCompanyJobArticle);
    }

    @Override
    public List<RecruitCompany> getRecruitCompanies() {
        return recruitDao.getRecruitCompanies();
    }

}
