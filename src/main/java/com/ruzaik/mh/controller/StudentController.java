package com.ruzaik.mh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ruzaik.mh.dao.CourseRepo;
import com.ruzaik.mh.dao.StudentRepo;
import com.ruzaik.mh.model.Course;
import com.ruzaik.mh.model.Student;

@Controller
public class StudentController {

	@Autowired
	StudentRepo repo;
	
	@Autowired
	CourseRepo courseRepo;
	
	@RequestMapping("/new-student")
	public ModelAndView newStudent() 
	{
		List<Course> courseList = courseRepo.findAll();
		ModelAndView mv = new ModelAndView("new-student");
		mv.addObject("courseList", courseList);
		return mv;
	}
	
	@RequestMapping("/add-new-student")
	public ModelAndView addNewStudent(Student student) 
	{
		List<Student> studentList = repo.findAll();
		boolean result = false;
		
		for(Student s : studentList) {
			if(s.getRegistrationNumber() == student.getRegistrationNumber()) {
				result = false;
			}
			else {
				result = true;
				
			}
		}
		
		if(result) {
			repo.save(student);
			return addNewStudentSuccess();
		}else {
			return addNewStudentFail();
		}
	}
	
	@RequestMapping("/add-new-student-success")
	public ModelAndView addNewStudentSuccess()
	{
		List<Course> courseList = courseRepo.findAll();
		ModelAndView mv = new ModelAndView("new-student");
		mv.addObject("courseList", courseList);
		mv.addObject("alertMsg", "Success");
		return mv;
	}
	
	@RequestMapping("/add-new-student-Fail")
	public ModelAndView addNewStudentFail()
	{
		List<Course> courseList = courseRepo.findAll();
		ModelAndView mv = new ModelAndView("new-student");
		mv.addObject("courseList", courseList);
		mv.addObject("alertMsg", "Failed");
		return mv;
	}
	
}
