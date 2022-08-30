package com.ruzaik.mh.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ruzaik.mh.model.Student;

public interface StudentRepo extends JpaRepository<Student, String> {

	
}
