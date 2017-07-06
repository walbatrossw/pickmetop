package com.cafe24.pickmetop.resume.service;

import com.cafe24.pickmetop.resume.domain.Resume;
import com.cafe24.pickmetop.resume.repository.ResumeDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ResumeServiceImpl implements ResumeService {

    @Autowired
    ResumeDao resumeDao;

    @Override
    public boolean isSameResume(Long userId) {
        System.out.println(resumeDao.isSameResume(userId));
        return resumeDao.isSameResume(userId);
    }

    @Override
    public void create(Resume resume) {
        resumeDao.create(resume);
    }

    @Override
    public void update(Resume resume) {
        resumeDao.update(resume);
    }
}
