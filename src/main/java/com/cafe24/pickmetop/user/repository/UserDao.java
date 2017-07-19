package com.cafe24.pickmetop.user.repository;

import com.cafe24.pickmetop.user.domain.User;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface UserDao {

    /*회원가입 POST : register()*/
    void create(User user);

    /*회원가입 이메일 중복 확인*/
    int findOneByEmail(String userEmail);

    /*회원가입 이름 중복 확인*/
    int findOneByName(String userName);

    /*회원 목록 : list()*/
    List<User> list();

    /*회원 정보 상세조회 : findOneById()*/
    User findOneById(int userId);

    /*회원 정보 수정 POST : update()*/
    void update(User user);

    /*회원 삭제, 탈퇴 : delete()*/
    void delete(User user);

    /*회원 정보 수정, 삭제를 위한 비밀번호 확인 : checkPassword()*/
    boolean checkPassword(String userEmail, String userPassword);

    /*로그인 POST : login()*/
    User login(User user);

    /*로그인 시간 업데이트 : updateLoginDate()*/
    void updateLoginDate(String userEmail);
}
