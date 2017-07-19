package com.cafe24.pickmetop.company.repository;

import com.cafe24.pickmetop.company.domain.Company;
import com.cafe24.pickmetop.company.domain.IndustryCategory1;
import com.cafe24.pickmetop.company.domain.IndustryCategory2;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CompanyDaoImpl implements CompanyDao{

    @Autowired
    SqlSession sqlSession;

    @Override
    public List<IndustryCategory1> getIndustryCategory1() {
        return sqlSession.selectList("company.getIndustryCategory1");
    }

    @Override
    public List<IndustryCategory2> findListByCategory1Id(int industryCategory1Id) {
        return sqlSession.selectList("company.findListByCategory1Id", industryCategory1Id);
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
