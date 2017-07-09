package com.cafe24.pickmetop.admin.controller;

import com.cafe24.pickmetop.admin.domain.Admin;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin")
public class AdminController {

    // 관리자 가입 페이지
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register() {
        return "/admin/register";
    }

    // 관리자 가입 처리
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@ModelAttribute Admin admin) {
        return "redirect:/";
    }

    // 관리자 목록
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list() {
        return "/admin/list";
    }

    // 관리자 수정

    // 관리자 삭제




    // 관리자 로그인 페이지
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "/admin/login";
    }
}
