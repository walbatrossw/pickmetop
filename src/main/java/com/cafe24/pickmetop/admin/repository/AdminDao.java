package com.cafe24.pickmetop.admin.repository;

import com.cafe24.pickmetop.admin.domain.Admin;

import java.util.List;

public interface AdminDao {

    /*회원가입 POST : create()*/
    void create(Admin admin);

    /*회원 이메일 중복 확인*/
    int findOneByEmail(String email);

    /*회원 이름 중복 확인*/
    int findOneByName(String name);

    /*회원 목록 : list()*/
    List<Admin> list();

    /*회원 정보 상세조회 : findOneById()*/
    Admin findOneById(Long id);

    /*회원 정보 수정 POST : update()*/
    void update(Admin admin);

    /*회원 삭제, 탈퇴 : delete()*/
    void delete(Admin admin);

    /*회원 정보 수정, 삭제를 위한 비밀번호 확인 : checkPassword()*/
    boolean checkPassword(String email, String password);

    /*로그인 POST : login()*/
    Admin login(Admin admin);
    
}
