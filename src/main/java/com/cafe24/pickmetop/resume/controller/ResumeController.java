package com.cafe24.pickmetop.resume.controller;

import com.cafe24.pickmetop.resume.domain.Resume;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/resume")
public class ResumeController {

    // 이력서 작성화면
    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String create() {
        return "resume/create";
    }

    // 이력서 작성처리
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(@RequestParam Resume resume) {
        return "redirect:/resume/view";
    }

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
    public String update(@RequestParam Resume resume) {
        return "redirect:/resume/view";
    }
}
