package com.cafe24.pickmetop.recruit.controller;


import com.cafe24.pickmetop.company.service.CompanyService;
import com.cafe24.pickmetop.recruit.domain.*;
import com.cafe24.pickmetop.recruit.service.RecruitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/recruit")
public class RecruitController {

    @Autowired
    RecruitService recruitService;

    @Autowired
    CompanyService companyService;

    /*채용정보 등록 : GET*/
    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String create(Model model) {
        // 직무 카테고리
        List<JobCategory1> jobCategory1 = recruitService.getListJobCategory1();
        model.addAttribute("jobCategory1", jobCategory1);
        // 기업리스트
        model.addAttribute("companies", companyService.list());
        return "/recruit/create";
    }

    /*직무 소분류 리스트 : GET*/
    @RequestMapping(value = "/job/category2/{jobCategory1Id}", method = RequestMethod.GET)
    @ResponseBody
    public List<JobCategory2> getListJobCategory2(@PathVariable int jobCategory1Id) throws Exception {
        return recruitService.getListJobCategory2ByJobCategory1Id(jobCategory1Id);
    }

    /*채용정보 등록 : POST*/
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(@ModelAttribute RecruitCompany recruitCompany,
                         @ModelAttribute RecruitCompanyJob recruitCompanyJob,
                         HttpSession session) {

        int companyId = recruitService.getCompanyIdByCompanyName(recruitCompany.getRecruitCompanyName());
        recruitCompany.setCompanyId(companyId);
        int adminId = (Integer) session.getAttribute("adminId");
        recruitCompany.setAdminId(adminId);
        recruitService.createRecruit(recruitCompany);

        recruitCompanyJob.setRecruitCompanyId(recruitCompany.getRecruitCompanyId());
        recruitService.createRecruitJob(recruitCompanyJob);

        return "redirect:/recruit/list";
    }

    /*자기소개서 등록 : GET*/
    @RequestMapping(value = "/create/article", method = RequestMethod.GET)
    public String createArticle(Model model) {

        return "/recruit/createArticle";
    }

    /*채용정보 리스트 : GET*/
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        List<RecruitCompany> recruitCompanies = recruitService.getRecruitCompanies();
        model.addAttribute("companies", recruitCompanies);
        return "/recruit/list";
    }

    /*채용정보 상세보기 : GET*/
    @RequestMapping(value = "/{recruitCompanyId}/view", method = RequestMethod.GET)
    public String view(@PathVariable int recruitCompanyId, Model model) {
        RecruitCompany recruitCompany = recruitService.getRecruitCompanyByRecruitCompanyId(recruitCompanyId);
        List <RecruitCompanyJob> recruitCompanyJobs = recruitService.getRecruitCompanyJobByRecruitCompanyId(recruitCompanyId);
        model.addAttribute("recruit", recruitCompany);
        model.addAttribute("recruitJobs", recruitCompanyJobs);
        return "recruit/view";
    }

    /*직무별 자기소개서 항목 작성 : GET*/
    @RequestMapping(value = "/{recruitCompanyJobId}/article/create", method = RequestMethod.GET)
    public String articleCreate(@PathVariable int recruitCompanyJobId, Model model) {
        RecruitCompanyJob recruitCompanyJob = recruitService.getRecruitCompanyJobByRecruitCompanyJobId(recruitCompanyJobId);
        model.addAttribute("recruitJob", recruitCompanyJob);
        return "recruit/createArticle";
    }

    /*직무별 자기소개서 항목 등록 : POST*/
    @RequestMapping(value = "/{recruitCompanyJobId}/article/create", method = RequestMethod.POST)
    public String articleCreate(@PathVariable int recruitCompanyJobId, @ModelAttribute RecruitCompanyJobArticle recruitCompanyJobArticle) {
        recruitCompanyJobArticle.setRecruitCompanyJobId(recruitCompanyJobId);
        recruitService.createRecruitJobArticle(recruitCompanyJobArticle);
        return "redirect:/recruit/list";
    }

    /*채용정보 달력 : GET*/
    @RequestMapping(value = "/calendar", method = RequestMethod.GET)
    public String calendar() {
        return "/recruit/calendar";
    }

    /*채용정보 상세보기 : GET*/

    /*채용정보 수정 : POST*/

    /*채용정보 삭제 : GET*/
}
