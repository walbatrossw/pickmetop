package com.cafe24.pickmetop.company.service;

import com.cafe24.pickmetop.company.domain.Company;
import com.cafe24.pickmetop.company.domain.IndustryCategory1;
import com.cafe24.pickmetop.company.domain.IndustryCategory2;
import com.cafe24.pickmetop.company.repository.CompanyDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CompanyServiceImpl implements CompanyService {

    @Autowired
    CompanyDao companyDao;

    @Override
    public List<IndustryCategory1> getIndustryCategory1() {
        return companyDao.getIndustryCategory1();
    }

    @Override
    public List<IndustryCategory2> findListByCategory1Id(int industryCategory1Id) {
        return companyDao.findListByCategory1Id(industryCategory1Id);
    }

    @Override
    public void create(Company company) {
        companyDao.create(company);
    }

    @Override
    public List<Company> list() {
        return companyDao.list();
    }

    /*기업정보 상세보기 : GET*/
    @Override
    public Company findOneByCompanyId(int companyId) {
        return companyDao.findOneByCompanyId(companyId);
    }

    /*기업정보 수정 : POST*/
    @Override
    public void updateCompanyInfo(Company company) {
        companyDao.updateCompanyInfo(company);
    }
}
