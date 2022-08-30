package com.ruzaik.mh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ruzaik.mh.dao.CourseRepo;
import com.ruzaik.mh.model.Course;

@Controller
public class CourseController {
	
	@Autowired
	CourseRepo repo;
	
	@RequestMapping("/new-course")
	public String newCourse()
	{
		return "new-course";
	}
	
	@RequestMapping("add-new-course")
	public String addNewCourse(Course course) {
		repo.save(course);
		return newCourse();
	}
}
