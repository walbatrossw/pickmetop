package com.cafe24.pickmetop.user.service;

import com.cafe24.pickmetop.user.dao.UserDaoImpl;
import com.cafe24.pickmetop.user.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    UserDaoImpl userDao;

    // 회원가입
    @Override
    public void create(User user) {
        userDao.create(user);
    }
    // 회원 목록
    @Override
    public List<User> list() {
        return null;
    }

    // 회원 정보 상세보기
    @Override
    public User show(String email) {
        return null;
    }

    // 회원 정보 수정
    @Override
    public void update(User user) {

    }

    // 회원 삭제
    @Override
    public void delete(String email) {

    }

    // 비밀번호 체크
   @Override
    public boolean checkPw(String email, String password) {
        return false;
    }

    // 로그인 체크
    @Override
    public boolean loginCheck(User user, HttpSession session) {
        boolean result = userDao.loginCheck(user);
        if (result) {
            User user1 = loginUser(user);
            session.setAttribute("email", user1.getEmail());
            session.setAttribute("name", user1.getName());
        }
        return result;
    }

    // 회원 로그인 정보
    @Override
    public User loginUser(User user) {
        return userDao.loginUser(user);
    }

    // 회원 로그아웃
    @Override
    public void logout(HttpSession session) {
        session.invalidate();
    }
}
