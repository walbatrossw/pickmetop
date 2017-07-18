package com.cafe24.pickmetop.company.repository;

import com.cafe24.pickmetop.company.domain.Company;
import com.cafe24.pickmetop.company.domain.IndustryIdx1;
import com.cafe24.pickmetop.company.domain.IndustryIdx2;

import java.util.List;

public interface CompanyDao {
    /*기업정보 등록 : GET - 산업 대분류*/
    List<IndustryIdx1> getIndustryIndex1();

    /*기업정보 등록 : GET - 산업 소분류*/
    List<IndustryIdx2> findListById(Long index1Id);

    /*기업정보 등록 : POST*/
    void create(Company company);

    /*기업정보 리스트*/
    List<Company> list();
}
