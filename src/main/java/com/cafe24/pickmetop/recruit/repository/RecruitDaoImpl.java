package com.cafe24.pickmetop.recruit.repository;

import com.cafe24.pickmetop.recruit.domain.*;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RecruitDaoImpl implements RecruitDao {

    @Autowired
    SqlSession sqlSession;

    @Override
    public List<JobCategory1> getListJobCategory1() {
        return sqlSession.selectList("recruit.selectJobCategory1");
    }

    @Override
    public List<JobCategory2> getListJobCategory2ByJobCategory1Id(int jobCategory1Id) {
        return sqlSession.selectList("recruit.selectJobCategory2", jobCategory1Id);
    }

    @Override
    public int getCompanyIdByCompanyName(String recruitCompanyName) {
        return sqlSession.selectOne("recruit.selectCompanyIdByCompanyName", recruitCompanyName);
    }

    @Override
    public int getRecruitCompanyIdByRecruitName(String recruitName) {
        return sqlSession.selectOne("recruit.selectRecruitCompanyIdByRecruitName", recruitName);
    }

    @Override
    public int getRecruitCompanyJobIdByJobCategory2Id(int jobCategory2Id) {
        return sqlSession.selectOne("recruit.selectRecruitCompanyJobIdByJobCategory2Id", jobCategory2Id);
    }

    @Override
    public void createRecruit(RecruitCompany recruitCompany) {
        sqlSession.insert("recruit.insertRecruitCompany", recruitCompany);
    }

    @Override
    public void createRecruitJob(RecruitCompanyJob recruitCompanyJob) {
        sqlSession.insert("recruit.insertRecruitCompanyJob", recruitCompanyJob);
    }

    @Override
    public void createRecruitJobArticle(RecruitCompanyJobArticle recruitCompanyJobArticle) {
        sqlSession.insert("recruit.insertRecruitCompanyJobArticle", recruitCompanyJobArticle);
    }

    @Override
    public List<RecruitCompany> getRecruitCompanies() {
        return sqlSession.selectList("recruit.selectAllRecruitCompany");
    }

}
