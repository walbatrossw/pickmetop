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

    /*회원가입 POST : create()*/
    @Override
    public void create(User user) {
        userDao.create(user);
    }

    /*회원 이메일 중복확인*/
    @Override
    public int findOneByEmail(String userEmail) {
        return userDao.findOneByEmail(userEmail);
    }

    /*회원 이름 중복확인*/
    @Override
    public int findOneByName(String userName) {
        return userDao.findOneByName(userName);
    }

    /*회원 목록 : list()*/
    @Override
    public List<User> list() {
        return userDao.list();
    }

    /*회원 정보 상세조회 : findOneById()*/
    @Override
    public User findOneById(int userId) {
        return userDao.findOneById(userId);
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
    public boolean checkPassword(String userId, String userPassword) {
        return false;
    }

    /*로그인 POST : login()*/
    @Override
    public boolean login(User user, HttpSession session) {
        User loginUser = userDao.login(user);
        if (loginUser != null && BCrypt.checkpw(user.getUserPassword(), loginUser.getUserPassword())) {
            session.setAttribute("userId", loginUser.getUserId()); // 회원 번호(기본키)
            session.setAttribute("userEmail", loginUser.getUserEmail()); // 회원 이메일(아이디)
            session.setAttribute("userName", loginUser.getUserName()); // 회원 이름
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
