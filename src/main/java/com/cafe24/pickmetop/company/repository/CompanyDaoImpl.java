package com.cafe24.pickmetop.company.repository;

import com.cafe24.pickmetop.company.domain.Company;
import com.cafe24.pickmetop.company.domain.IndustryIdx1;
import com.cafe24.pickmetop.company.domain.IndustryIdx2;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CompanyDaoImpl implements CompanyDao{

    @Autowired
    SqlSession sqlSession;

    @Override
    public List<IndustryIdx1> getIndustryIndex1() {
        return sqlSession.selectList("company.industryIndex1");
    }

    @Override
    public List<IndustryIdx2> findListById(Long index1Id) {
        return sqlSession.selectList("company.findListById", index1Id);
    }

    @Override
    public void create(Company company) {
        sqlSession.insert("company.crateCompany",company);
    }

    @Override
    public List<Company> list() {
        return sqlSession.selectList("company.list");
    }
}
