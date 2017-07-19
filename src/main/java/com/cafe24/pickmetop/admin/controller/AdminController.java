package com.cafe24.pickmetop.admin.controller;

import com.cafe24.pickmetop.admin.domain.Admin;
import com.cafe24.pickmetop.admin.service.AdminService;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    AdminService adminService;

    /*관리자 가입 GET*/
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register() {
        return "/admin/register";
    }

    /*관리자 가입 POST*/
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ModelAndView register(@ModelAttribute Admin admin) {
        // 입력받은 password 암호화
        String hashPassword = BCrypt.hashpw(admin.getAdminPassword(), BCrypt.gensalt());
        admin.setAdminPassword(hashPassword);
        adminService.create(admin);
        ModelAndView mav = new ModelAndView();
        mav.addObject("msg", "welcome");
        mav.setViewName("/admin/login");
        return mav;
    }

    /*관리자 이메일 주소 중복확인*/
    @RequestMapping(value = "/duplicated/email", method = RequestMethod.POST)
    @ResponseBody
    public int duplicatedEmailCheck(@RequestParam String adminEmail) {
        return adminService.findOneByEmail(adminEmail);
    }

    /*관리자 이름 중복확인*/
    @RequestMapping(value = "/duplicated/name", method = RequestMethod.POST)
    @ResponseBody
    public int duplicatedNameCheck(@RequestParam String adminName) {
        return adminService.findOneByName(adminName);
    }

    /*관리자 목록 : list()*/
    /*회원 목록 : list()*/
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        List<Admin> admins = adminService.list();
        model.addAttribute("admins", admins);
        return "/admin/list";
    }
    /*관리자 정보 상세조회 : view()*/
    
    /*관리자 정보 수정 GET : update()*/

    /*관리자 정보 수정 POST : update()*/

    /*관리자 삭제, 탈퇴 : delete()*/

    /*관리자 정보 수정, 삭제를 위한 비밀번호 확인 : checkPassword()*/
    
    /*관리자 로그인 GET*/
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "/admin/login";
    }

    /*관리자 로그인 POST*/
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView login(@ModelAttribute Admin admin, HttpSession session) {
        boolean result = adminService.login(admin, session);
        ModelAndView mav = new ModelAndView();
        if (result) {
            adminService.updateLoginDate(admin.getAdminEmail());
            mav.setViewName("redirect:/main");
            return mav;
        }
        mav.addObject("msg", "failure");
        mav.setViewName("/admin/login");
        return mav;
    }

    /*관리자 로그아웃*/
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public ModelAndView logout(HttpSession session) {
        adminService.logout(session);
        ModelAndView mav = new ModelAndView();
        mav.addObject("msg", "logout");
        mav.setViewName("/admin/login");
        return mav;
    }


}
