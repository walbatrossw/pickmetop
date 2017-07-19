package com.cafe24.pickmetop.user.repository;

import com.cafe24.pickmetop.user.domain.User;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.servlet.http.HttpSession;
import java.util.List;


@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    SqlSession sqlSession;

    /*회원가입 POST : create()*/
    @Override
    public void create(User user) {
        sqlSession.insert("user.createUser", user);
    }

    /*회원 이메일 주소 중복 확인*/
    @Override
    public int findOneByEmail(String userEmail) {
        return sqlSession.selectOne("user.findOneByEmail", userEmail);
    }

    /*회원 이름 중복 확인*/
    @Override
    public int findOneByName(String userName) {
        return sqlSession.selectOne("user.findOneByName", userName);
    }

    /*회원 목록 : list()*/
    @Override
    public List<User> list() {
        return sqlSession.selectList("user.list");
    }

    /*회원 정보 상세조회 : findOneById()*/
    @Override
    public User findOneById(int userId) {
        return sqlSession.selectOne("user.userFindOneById", userId);
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
    public boolean checkPassword(String userEmail, String userPassword) {
        return false;
    }

    /*로그인 POST : login()*/
    @Override
    public User login(User user) {
        return sqlSession.selectOne("user.login", user);
    }

}
