package com.cafe24.pickmetop.company.controller;

import com.cafe24.pickmetop.company.domain.Company;
import com.cafe24.pickmetop.company.domain.IndustryIdx1;
import com.cafe24.pickmetop.company.domain.IndustryIdx2;
import com.cafe24.pickmetop.company.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
    @RequestMapping(value = "/info/create", method = RequestMethod.GET)
    public String insert(Model model) {
        List<IndustryIdx1> industryIdx1 = companyService.getIndustryIndex1();
        model.addAttribute("industryIdx1", industryIdx1);
        return "/company/info/create";
    }

    /*산업 소분류 리스트 : GET*/
    @RequestMapping(value = "/info/industry/index2/{index1Id}", method = RequestMethod.GET)
    @ResponseBody
    public List<IndustryIdx2> getIndustryIndex2(@PathVariable Long index1Id) {
        List<IndustryIdx2> list = companyService.findListById(index1Id);
        return list;
    }

    /*기업정보 등록 : POST*/
    @RequestMapping(value = "/info/create", method = RequestMethod.POST)
    public String create(@ModelAttribute Company company, HttpSession session) {
        Long writerId = (Long) session.getAttribute("adminId");
        company.setWriterId(writerId);
        companyService.create(company);
        return "redirect:/company/info/list";
    }

    /*기업정보 목록 : GET*/
    @RequestMapping(value = "/info/list", method = RequestMethod.GET)
    public String list(Model model) {
        model.addAttribute("companies", companyService.list());
        return "/company/info/list";
    }


}
