package com.cafe24.pickmetop.company.repository;

import com.cafe24.pickmetop.company.domain.Company;
import com.cafe24.pickmetop.company.domain.IndustryCategory1;
import com.cafe24.pickmetop.company.domain.IndustryCategory2;

import java.util.List;

public interface CompanyDao {
    /*기업정보 등록 : GET - 산업 대분류*/
    List<IndustryCategory1> getIndustryCategory1();

    /*기업정보 등록 : GET - 산업 소분류*/
    List<IndustryCategory2> findListByCategory1Id(int industryCategory1Id);

    /*기업정보 등록 : POST*/
    void create(Company company);

    /*기업정보 리스트*/
    List<Company> list();

    /*기업정보 상세보기 : GET*/
    Company findOneByCompanyId(int companyId);

    /*기업정보 수정 : POST*/
    void updateCompanyInfo(Company company);
}
