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
import com.ruzaik.mh.model.Attendance;

@Controller
public class attendanceController {

	@Autowired
	CourseRepo courseRepo;
	
	@Autowired
	StudentRepo studentRepo;
	
	@RequestMapping("/new-attendance")
	public ModelAndView newAttendance() {
		List<Course> coursList = courseRepo.findAll();
		
		ModelAndView mv = new ModelAndView("new-attendance");
		mv.addObject("courseList", coursList);
		return mv;
	}
	
	@RequestMapping("/attendance-list")
	public ModelAndView attendanceList(Attendance attendance) {
		List<Student> students = studentRepo.findByCourse(attendance.getCourse());
		ModelAndView mv = new ModelAndView("new-attendance-mark");
		mv.addObject("studentList", students);
		mv.addObject("attendance", attendance);
		return mv;
	}
}
