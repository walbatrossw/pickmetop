package com.cafe24.pickmetop.resume.controller;

import com.cafe24.pickmetop.resume.domain.Resume;
import com.cafe24.pickmetop.resume.domain.ResumePersonal;
import com.cafe24.pickmetop.resume.repository.ResumeDao;
import com.cafe24.pickmetop.resume.service.ResumeService;
import com.cafe24.pickmetop.resume.service.ResumeServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/resume")
public class ResumeController {

    @Autowired
    ResumeService resumeService;

    // 이력서 작성화면
    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String create() {
        return "resume/create";
    }

    // 이력서 작성 처리
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public void create(@ModelAttribute Resume resume, HttpSession session) {
        // session 에 저장된 userId 로 이력서 작성 유무를 조회
        long userId = 1;
        resume.setUserId(userId);
        // int userId = (Integer) session.getAttribute("id");
        // 이력서 작성 유무 조회 : 있으면 update / 없으면 update
        if (resumeService.isSameResume(userId)) {
            // update...
            resumeService.update(resume);
            System.out.println("update...");
        } else {
            // insert...
            resumeService.create(resume);
            System.out.println("insert...");
        }
    }

    // 이력서 개인신상 입력 처리
    // 이력서 병역 입력 처리
    // 이력서 개인신상 입력 처리
    // 이력서 학력 입력 처리
    // 이력서 동아리/학생회 입력 처리
    // 이력서 자격/면허 입력 처리
    // 이력서 어학 입력 처리
    // 이력서 직무활동경험 입력 처리
    // 이력서 경력 입력 처리
    // 이력서 수상경력 입력 처리

    // 이력서 보기
    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public String view() {
        return "resume/view";
    }

    // 이력서 수정화면
    @RequestMapping(value = "/update", method = RequestMethod.GET)
    public String update() {
        return "resume/update";
    }

    // 이력서 수정처리
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@ModelAttribute Resume resume) {
        return "redirect:/resume/view";
    }
}
