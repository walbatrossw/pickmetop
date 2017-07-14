package com.cafe24.pickmetop.user.service;

import com.cafe24.pickmetop.user.domain.User;
import com.cafe24.pickmetop.user.repository.UserDao;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    UserDao userDao;

    /*회원가입 POST : register()*/
    @Override
    public void create(User user) {
        userDao.create(user);
    }

    /*회원 이메일 중복확인*/
    @Override
    public int duplicatedEmailCheck(String email) {
        return userDao.duplicatedEmailCheck(email);
    }

    /*회원 이름 중복확인*/
    @Override
    public int duplicatedNameCheck(String name) {
        return userDao.duplicatedNameCheck(name);
    }

    /*회원 목록 : list()*/
    @Override
    public List<User> list() {
        return userDao.list();
    }

    /*회원 정보 상세조회 : findOneById()*/
    @Override
    public User findOneById(Long id) {
        return null;
    }

    /*회원 정보 수정 POST : update()*/
    @Override
    public void update(User user) {

    }

    /*회원 삭제, 탈퇴 : delete()*/
    @Override
    public void delete(User user) {

    }

    /*회원 정보 수정, 삭제를 위한 비밀번호 확인 : checkPassword()*/
    @Override
    public boolean checkPassword(String email, String password) {
        return false;
    }

    /*로그인 POST : login()*/
    @Override
    public boolean login(User user, HttpSession session) {
        User loginUser = userDao.login(user);
        if (loginUser != null && BCrypt.checkpw(user.getPassword(), loginUser.getPassword())) {
            session.setAttribute("id", loginUser.getId()); // 회원 번호(기본키)
            session.setAttribute("email", loginUser.getEmail()); // 회원 이메일(아이디)
            session.setAttribute("name", loginUser.getName()); // 회원 이름
            return true;
        }
        return false;
    }

    /*로그아웃 : logout()*/
    @Override
    public void logout(HttpSession session) {
        session.invalidate();
    }
}
