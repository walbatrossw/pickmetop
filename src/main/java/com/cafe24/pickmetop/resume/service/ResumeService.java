package com.cafe24.pickmetop.resume.service;

import com.cafe24.pickmetop.resume.domain.Resume;

public interface ResumeService {
    boolean isSameResume(Long userId);
    void create(Resume resume);
    void update(Resume resume);
}
