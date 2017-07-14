package com.cafe24.pickmetop.user.controller;

import com.cafe24.pickmetop.user.domain.User;
import com.cafe24.pickmetop.user.service.UserService;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

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
        String hashPassword = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
        user.setPassword(hashPassword);
        userService.create(user);
        ModelAndView mav = new ModelAndView();
        mav.addObject("msg", "welcome");
        mav.setViewName("/user/login");
        return mav;
    }

    /*회원 이메일 주소 중복확인*/
    @RequestMapping(value = "/duplicated/email", method = RequestMethod.POST)
    @ResponseBody
    public int duplicatedEmailCheck(@RequestParam String email) {
        return userService.duplicatedEmailCheck(email);
    }

    /*회원 이름 중복확인*/
    @RequestMapping(value = "/duplicated/name", method = RequestMethod.POST)
    @ResponseBody
    public int duplicatedNameCheck(@RequestParam String name) {
        return userService.duplicatedNameCheck(name);
    }



    /*회원 정보 상세조회 : view()*/

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
        User loginUser = userService.login(user, session);
        ModelAndView mav = new ModelAndView();
        if (loginUser != null && BCrypt.checkpw(user.getPassword(), loginUser.getPassword())) {
            session.setAttribute("id", loginUser.getId()); // 회원 번호(기본키)
            session.setAttribute("email", loginUser.getEmail()); // 회원 이메일(아이디)
            session.setAttribute("name", loginUser.getName()); // 회원 이름
            mav.setViewName("/main");
            mav.addObject("msg", "success");
            return mav;
        }
        mav.addObject("msg", "failure");
        mav.setViewName("/user/login");
        return mav;
    }

    /*로그아웃 : logout()*/


}
