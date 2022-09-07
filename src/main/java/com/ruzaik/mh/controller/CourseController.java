package com.ruzaik.mh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	public ModelAndView addNewCourse(Course course) {
		List<Course> courseList = repo.findAll();
		boolean result = false;
		
		for(Course c : courseList) {
			
			if((c.getCourseID()).equals(course.getCourseID())) {
				result = false;
			}
			else {
				result = true;
			}
		}
		
		if(result) {
			repo.save(course);
			return addNewCourseSuccess();
		}else {
			return addNewCoursetFail();
		}
	}
	
	@RequestMapping("/add-new-course-success")
	public ModelAndView addNewCourseSuccess()
	{
		ModelAndView mv = new ModelAndView("new-course");
		mv.addObject("alertMsg", "Success");
		return mv;
	}
	
	@RequestMapping("/add-new-course-Fail")
	public ModelAndView addNewCoursetFail()
	{
		ModelAndView mv = new ModelAndView("new-course");
		mv.addObject("alertMsg", "Failed");
		return mv;
	}
	
	@RequestMapping("/view-course")
	public ModelAndView viewCourse() {
		List<Course> courseList = repo.findAll();
		
		ModelAndView mv = new ModelAndView("view-course");
		mv.addObject("courseList", courseList);
		
		return mv;
	}
	
	@RequestMapping("/serachCourse")
	public ModelAndView search(String search)
	{
		List<Course> courses = repo.findByCourseNameLike(search);
		ModelAndView mv = new ModelAndView("view-course");
		mv.addObject("courseList", courses);
		return mv;
	}
	
	@RequestMapping("/deleteCourse")
	public ModelAndView delete(String delete) 
	{
		repo.deleteById(delete);
		return viewCourse();
	}
	
	@RequestMapping("/updateCoursePage")
	public ModelAndView updatePage(String update) 
	{
		ModelAndView mv = new ModelAndView("update-course");
		Course course = repo.getReferenceById(update);
		mv.addObject("course", course);
		return mv;
	}
	
	@RequestMapping("/update-course")
	public ModelAndView updateCourse(Course course)
	{
		repo.save(course);
		return viewCourse();
	}
}
