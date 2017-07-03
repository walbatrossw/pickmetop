package com.cafe24.pickmetop.user.dao;

import com.cafe24.pickmetop.user.domain.User;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import javax.servlet.http.HttpSession;
import java.util.List;

@Repository
public class UserDaoImpl implements UserDao{

    @Autowired
    SqlSession sqlSession;

    // 회원가입
    @Override
    public void create(User user) {
        sqlSession.insert("user.createUser", user);
    }

    // 회원리스트
    @Override
    public List<User> list() {
        return sqlSession.selectList("user.list");
    }

    // 회원상세정보
    @Override
    public User show(Long id) {
        return sqlSession.selectOne("user.show", id);
    }

    // 회원정보 수정
    @Override
    public void update(User user) {
        sqlSession.update("user.update", user);
    }

    // 회원삭제
    @Override
    public void delete(Long id) {
        sqlSession.delete("user.delete", id);
    }

    // 비밀번호 체크
    @Override
    public boolean checkPw(String email, String password) {
        return false;
    }

    // 회원 로그인 체크
    @Override
    public boolean loginCheck(User user) {
        String name = sqlSession.selectOne("user.loginCheck", user);
        return name != null;
    }

    // 로그인한 회원 정보
    @Override
    public User loginUser(User user) {
        return sqlSession.selectOne("user.loginUser", user);
    }

}
