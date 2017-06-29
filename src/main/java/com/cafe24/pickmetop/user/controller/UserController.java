package com.cafe24.pickmetop.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

    // 회원가입 페이지
    @RequestMapping("/register")
    public String register() {
        return "user/register";
    }

    // 회원가입 처리

    // 로그인 페이지
    @RequestMapping("/login")
    public String login() {
        return "user/login";
    }

    // 로그인 처리
}
