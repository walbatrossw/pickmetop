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

    /*관리자 가입 POST : create()*/
    @Override
    public void create(Admin admin) {
        sqlSession.insert("admin.createAdmin", admin);
    }

    /*관리자  이메일 중복 확인*/
    @Override
    public int findOneByEmail(String adminEmail) {
        return sqlSession.selectOne("admin.findOneByEmail", adminEmail);
    }

    /*관리자  이름 중복 확인*/
    @Override
    public int findOneByName(String adminName) {
        return sqlSession.selectOne("admin.findOneByName", adminName);
    }

    /*관리자  목록 : list()*/
    @Override
    public List<Admin> list() {
        return sqlSession.selectList("admin.list");
    }

    /*관리자  정보 상세조회 : findOneById()*/
    @Override
    public Admin findOneById(int adminId) {
        return null;
    }

    /*관리자  정보 수정 POST : update()*/
    @Override
    public void update(Admin admin) {

    }

    /*관리자  삭제, 탈퇴 : delete()*/
    @Override
    public void delete(Admin admin) {

    }

    /*관리자  정보 수정, 삭제를 위한 비밀번호 확인 : checkPassword()*/
    @Override
    public boolean checkPassword(String adminEmail, String adminPassword) {
        return false;
    }

    /*로그인 POST : login()*/
    @Override
    public Admin login(Admin admin) {
        return sqlSession.selectOne("admin.login", admin);
    }
}
