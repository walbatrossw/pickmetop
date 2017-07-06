package com.cafe24.pickmetop.resume.repository;

import com.cafe24.pickmetop.resume.domain.Resume;

public interface ResumeDao {
    boolean isSameResume(Long userId);
    void create(Resume resume);
    void update(Resume resume);
}
