package com.ruzaik.mh.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ruzaik.mh.model.Course;

public interface CourseRepo extends JpaRepository<Course, String>{

}
