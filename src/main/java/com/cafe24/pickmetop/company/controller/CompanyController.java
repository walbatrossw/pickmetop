package com.cafe24.pickmetop.company.controller;

import com.cafe24.pickmetop.company.domain.Company;
import com.cafe24.pickmetop.company.domain.IndustryCategory1;
import com.cafe24.pickmetop.company.domain.IndustryCategory2;
import com.cafe24.pickmetop.company.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
@RequestMapping("/company")
public class CompanyController {

    @Autowired
    CompanyService companyService;

    /*기업정보 등록 : GET*/
    @Transactional
    @RequestMapping(value = "/info/create", method = RequestMethod.GET)
    public String create(Model model) throws Exception {
        // 업종 대분류 List
        List<IndustryCategory1> industryCategory1 = companyService.getIndustryCategory1();
        model.addAttribute("industryCategory1", industryCategory1);
        return "/company/info/create";
    }

    /*업종 소분류 리스트 : GET*/
    @RequestMapping(value = "/info/industry/category2/{industryCategory1Id}", method = RequestMethod.GET)
    @ResponseBody
    public List<IndustryCategory2> industryCategory2(@PathVariable int industryCategory1Id) throws Exception{
        return companyService.findListByCategory1Id(industryCategory1Id);
    }

    /*기업정보 등록 : POST*/
    @RequestMapping(value = "/info/create", method = RequestMethod.POST)
    public String create(@ModelAttribute Company company, HttpSession session) throws Exception{
        int writerId = (Integer) session.getAttribute("adminId");
        company.setAdminId(writerId);
        companyService.create(company);
        return "redirect:/company/info/list";
    }

    /*기업정보 목록 : GET*/
    @RequestMapping(value = "/info/list", method = RequestMethod.GET)
    public String list(Model model) throws Exception {
        model.addAttribute("companies", companyService.list());
        return "/company/info/list";
    }

    /*기업정보 상세보기 : GET*/
    @RequestMapping(value = "/info/{companyId}/view", method = RequestMethod.GET)
    public String view(@PathVariable int companyId, Model model) throws Exception{
        // 업종 대분류 List
        List<IndustryCategory1> industryCategory1 = companyService.getIndustryCategory1();
        model.addAttribute("industryCategory1", industryCategory1);
        model.addAttribute("company", companyService.findOneByCompanyId(companyId));
        return "/company/info/view";
    }

    /*기업정보 수정 : POST*/
    @Transactional
    @RequestMapping(value = "/info/{companyId}/update", method = RequestMethod.POST)
    public String update(@PathVariable int companyId, @ModelAttribute Company company, HttpSession session) throws Exception {
        company.setCompanyId(companyId);
        int writerId = (Integer) session.getAttribute("adminId");
        company.setAdminId(writerId);
        companyService.updateCompanyInfo(company);
        return "redirect:/company/info/list";
    }

    /*기업정보 삭제 : POST*/
    @RequestMapping(value = "/info/{companyId}/delete", method = RequestMethod.GET)
    public String delete(@PathVariable int companyId) throws Exception {
        companyService.deleteOneByCompanyId(companyId);
        return "redirect:/company/info/list";
    }
}
