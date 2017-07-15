package com.cafe24.pickmetop.admin.repository;

import com.cafe24.pickmetop.admin.domain.Admin;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AdminDaoImpl implements AdminDao {

    @Autowired
    SqlSession sqlSession;

    /*회원가입 POST : create()*/
    @Override
    public void create(Admin admin) {
        sqlSession.insert("admin.createAdmin", admin);
    }

    /*회원 이메일 중복 확인*/
    @Override
    public int findOneByEmail(String email) {
        return sqlSession.selectOne("admin.findOneByEmail", email);
    }

    /*회원 이름 중복 확인*/
    @Override
    public int findOneByName(String name) {
        return sqlSession.selectOne("admin.findOneByName", name);
    }

    /*회원 목록 : list()*/
    @Override
    public List<Admin> list() {
        return sqlSession.selectList("admin.list");
    }

    /*회원 정보 상세조회 : findOneById()*/
    @Override
    public Admin findOneById(Long id) {
        return null;
    }

    /*회원 정보 수정 POST : update()*/
    @Override
    public void update(Admin admin) {

    }

    /*회원 삭제, 탈퇴 : delete()*/
    @Override
    public void delete(Admin admin) {

    }

    /*회원 정보 수정, 삭제를 위한 비밀번호 확인 : checkPassword()*/
    @Override
    public boolean checkPassword(String email, String password) {
        return false;
    }

    /*로그인 POST : login()*/
    @Override
    public Admin login(Admin admin) {
        return sqlSession.selectOne("admin.login", admin);
    }
}
