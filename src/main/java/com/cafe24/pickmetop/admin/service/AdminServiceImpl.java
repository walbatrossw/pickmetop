package com.cafe24.pickmetop.admin.service;

import com.cafe24.pickmetop.admin.domain.Admin;
import com.cafe24.pickmetop.admin.repository.AdminDao;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class AdminServiceImpl implements  AdminService {

    @Autowired
    AdminDao adminDao;

    /*관리자가입 POST : create()*/
    @Override
    public void create(Admin admin) {
        adminDao.create(admin);
    }

    /*관리자 이메일중복 확인*/
    @Override
    public int findOneByEmail(String email) {
        return adminDao.findOneByEmail(email);
    }

    /*관리자 이메일중복 확인*/
    @Override
    public int findOneByName(String name) {
        return adminDao.findOneByName(name);
    }

    /*관리자 목록 : list()*/
    @Override
    public List<Admin> list() {
        return adminDao.list();
    }

    /*관리자 정보 상세조회 : findOneById()*/
    @Override
    public Admin findOneById(Long id) {
        return null;
    }

    /*관리자 정보 수정 POST : update()*/
    @Override
    public void update(Admin admin) {

    }

    /*관리자 삭제, 탈퇴 : delete()*/
    @Override
    public void delete(Admin admin) {

    }

    /*관리자 정보 수정, 삭제를 위한 비밀번호 확인 : checkPassword()*/
    @Override
    public boolean checkPassword(String email, String password) {
        return false;
    }

    /*관리자 로그인 POST : login()*/
    @Override
    public boolean login(Admin admin, HttpSession session) {
        Admin loginAdmin = adminDao.login(admin);
        if (loginAdmin != null && BCrypt.checkpw(admin.getPassword(), loginAdmin.getPassword())) {
            session.setAttribute("adminId", loginAdmin.getId()); // 관리자 번호(기본키)
            session.setAttribute("adminEmail", loginAdmin.getEmail()); // 관리자 이메일(아이디)
            session.setAttribute("adminName", loginAdmin.getAdminName()); // 관리자 이름
            return true;
        }
        return false;
    }

    /*관리자 로그아웃 : logout()*/
    @Override
    public void logout(HttpSession session) {
        session.invalidate();
    }
}
