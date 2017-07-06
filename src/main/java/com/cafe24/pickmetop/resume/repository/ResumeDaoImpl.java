package com.cafe24.pickmetop.resume.repository;

import com.cafe24.pickmetop.resume.domain.Resume;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ResumeDaoImpl implements ResumeDao{

    @Autowired
    SqlSession sqlSession;

    @Override
    public boolean isSameResume(Long userId) {
        return sqlSession.selectOne("resume.selectOneByUserId", userId);
    }

    @Override
    public void create(Resume resume) {
        sqlSession.insert("resume.insertResume", resume);
    }

    @Override
    public void update(Resume resume) {
        sqlSession.update("resume.updateResume", resume);
    }
}
