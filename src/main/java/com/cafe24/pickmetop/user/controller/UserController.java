package com.cafe24.pickmetop.user.controller;

import com.cafe24.pickmetop.user.domain.User;
import com.cafe24.pickmetop.user.service.UserService;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    /*회원가입 GET : register()*/
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register() {
        return "/user/register";
    }

    /*회원가입 POST : register()*/
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ModelAndView register(@ModelAttribute User user) {
        // 입력받은 password 암호화
        String hashPassword = BCrypt.hashpw(user.getUserPassword(), BCrypt.gensalt());
        user.setUserPassword(hashPassword);
        userService.create(user);
        ModelAndView mav = new ModelAndView();
        mav.addObject("msg", "welcome");
        mav.setViewName("/user/login");
        return mav;
    }

    /*회원 이메일 주소 중복확인*/
    @RequestMapping(value = "/duplicated/email", method = RequestMethod.POST)
    @ResponseBody
    public int duplicatedEmailCheck(@RequestParam String userEmail) {
        return userService.findOneByEmail(userEmail);
    }

    /*회원 이름 중복확인*/
    @RequestMapping(value = "/duplicated/name", method = RequestMethod.POST)
    @ResponseBody
    public int duplicatedNameCheck(@RequestParam String userName) {
        return userService.findOneByName(userName);
    }

    /*회원 목록 : list()*/
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        List<User> users = userService.list();
        model.addAttribute("users", users);
        return "/user/list";
    }

    /*회원 정보 상세조회 : view()*/
    @RequestMapping(value = "/view/{userId}", method = RequestMethod.GET)
    public String view(@PathVariable int userId, Model model) {
        model.addAttribute("user", userService.findOneById(userId));
        return "/user/view";
    }

    /*회원 정보 수정 GET : update()*/

    /*회원 정보 수정 POST : update()*/

    /*회원 삭제, 탈퇴 : delete()*/

    /*회원 정보 수정, 삭제를 위한 비밀번호 확인 : checkPassword()*/

    /*로그인 GET : login()*/
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "/user/login";
    }

    /*로그인 POST : login()*/
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView login(@ModelAttribute User user, HttpSession session) {
        boolean result = userService.login(user, session);
        ModelAndView mav = new ModelAndView();
        if (result) {
            userService.updateLoginDate(user.getUserEmail());
            mav.setViewName("redirect:/main");
            return mav;
        }
        mav.addObject("msg", "failure");
        mav.setViewName("/user/login");
        return mav;
    }

    /*로그아웃 : logout()*/
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public ModelAndView logout(HttpSession session) {
        userService.logout(session);
        ModelAndView mav = new ModelAndView();
        mav.addObject("msg", "logout");
        mav.setViewName("/user/login");
        return mav;
    }


}
