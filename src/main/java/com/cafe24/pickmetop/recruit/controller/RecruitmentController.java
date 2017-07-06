package com.cafe24.pickmetop.recruit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/recruitment")
public class RecruitmentController {

    // 채용 등록 페이지
    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String create() {
        return "/recruit/create";
    }

    // 채용 등록 처리
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(HttpSession session) {
        return "/recruit/create";
    }

}
