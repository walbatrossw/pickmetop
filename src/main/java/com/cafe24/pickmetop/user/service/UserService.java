package com.cafe24.pickmetop.user.service;


import com.cafe24.pickmetop.user.domain.User;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface UserService {

    // 회원 가입
    void create(User user);

    // 회원 목록
    List<User> list();

    // 회원 정보 상세
    User show(Long id);

    // 회원 정보 수정
    void update(User user);

    // 회원 삭제
    void delete(Long id);

    // 비밀번호 체크
    boolean checkPw(String email, String password);

    // 회원 로그인 체크
    boolean loginCheck(User user, HttpSession session);

    // 회원 로그인 정보
    User loginUser(User user);

    // 회원 로그아웃
    void logout(HttpSession session);
}
