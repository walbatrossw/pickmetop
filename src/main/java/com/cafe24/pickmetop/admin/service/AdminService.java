package com.cafe24.pickmetop.admin.service;

import com.cafe24.pickmetop.admin.domain.Admin;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface AdminService {

    /*관리자가입 POST : create()*/
    void create(Admin admin);

    /*관리자 이메일중복 확인*/
    int findOneByEmail(String adminEmail);

    /*관리자 이메일중복 확인*/
    int findOneByName(String adminName);

    /*관리자 목록 : list()*/
    List<Admin> list();

    /*관리자 정보 상세조회 : findOneById()*/
    Admin findOneById(int adminId);

    /*관리자 정보 수정 POST : update()*/
    void update(Admin admin);

    /*관리자 삭제, 탈퇴 : delete()*/
    void delete(Admin admin);

    /*관리자 정보 수정, 삭제를 위한 비밀번호 확인 : checkPassword()*/
    boolean checkPassword(String adminEmail, String adminPassword);

    /*관리자 로그인 POST : login()*/
    boolean login(Admin admin, HttpSession session);

    /*관리자 로그인시간 수정 : updateLoginDate()*/
    void updateLoginDate(String adminEmail);

    /*관리자 로그아웃 : logout()*/
    void logout(HttpSession session);
}
