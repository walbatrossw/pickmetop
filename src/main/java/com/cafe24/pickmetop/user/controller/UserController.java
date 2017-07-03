package com.cafe24.pickmetop.user.controller;

import com.cafe24.pickmetop.user.domain.User;
import com.cafe24.pickmetop.user.service.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserServiceImpl userService;

    // 회원가입 페이지
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register() {
        return "user/register";
    }

    // 회원가입 처리
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@ModelAttribute User user) {
        userService.create(user);
        return "redirect:/";
    }

    // 회원 목록
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        List<User> list = userService.list();
        model.addAttribute("list", list);
        return "user/list";
    }

    // 회원 정보 상세
    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public String view(@RequestParam Long id, Model model) {
        model.addAttribute("user", userService.show(id));
        return "user/view";
    }

    // 회원 정보 수정
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@ModelAttribute User user) {
        System.out.println(user);
        userService.update(user);
        return "redirect:/user/list";
    }

    // 회원 삭제
    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String delete(@RequestParam Long id) {
        userService.delete(id);
        return "redirect:/user/list";
    }

    // 로그인 페이지
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "user/login";
    }

    // 로그인 처리
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView loginCheck(@ModelAttribute User user, HttpSession session) {
        boolean result = userService.loginCheck(user, session);
        ModelAndView mav = new ModelAndView();
        if (result) {
            mav.setViewName("/main");
            mav.addObject("msg", "success");
        } else {
            mav.setViewName("/user/login");
            mav.addObject("msg","failure");
        }
        return mav;
    }

    // 로그아웃 처리
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public ModelAndView logout(HttpSession session) {
        userService.logout(session);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("user/login");
        mav.addObject("msg", "logout");
        return mav;
    }
}
