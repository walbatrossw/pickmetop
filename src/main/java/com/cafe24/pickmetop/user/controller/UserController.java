package com.cafe24.pickmetop.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user")
public class UserController {

    /*회원가입 GET*/
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register() {
        return "/user/register";
    }

    /*회원가입 POST*/

    /*로그인 GET*/
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "/user/login";
    }

    /*로그인 POST*/

}
