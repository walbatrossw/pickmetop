package com.cafe24.pickmetop.company.service;

import com.cafe24.pickmetop.company.domain.Company;
import com.cafe24.pickmetop.company.domain.IndustryIdx1;
import com.cafe24.pickmetop.company.domain.IndustryIdx2;
import com.cafe24.pickmetop.company.repository.CompanyDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CompanyServiceImpl implements CompanyService {

    @Autowired
    CompanyDao companyDao;

    @Override
    public List<IndustryIdx1> getIndustryIndex1() {
        return companyDao.getIndustryIndex1();
    }

    @Override
    public List<IndustryIdx2> findListById(Long index1Id) {
        return companyDao.findListById(index1Id);
    }

    @Override
    public void create(Company company) {
        companyDao.create(company);
    }

    @Override
    public List<Company> list() {
        return companyDao.list();
    }
}
