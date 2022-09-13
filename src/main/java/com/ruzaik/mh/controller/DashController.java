package com.ruzaik.mh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ruzaik.mh.dao.AttendaceRepo;
import com.ruzaik.mh.dao.CourseRepo;
import com.ruzaik.mh.dao.FeeRepo;
import com.ruzaik.mh.dao.StudentRepo;
import com.ruzaik.mh.model.Fee;

@Controller
public class DashController {

	@Autowired
	StudentRepo studentRepo;
	
	@Autowired
	CourseRepo courseRepo;
	
	@Autowired
	FeeRepo feeRepo;
	
	@Autowired
	AttendaceRepo attendaceRepo;
	
	@RequestMapping("/")
	public ModelAndView dash() {
		long studentCount = studentRepo.count();
		long courseCount = courseRepo.count();
		
		List<Fee> fees = feeRepo.findAll();
		Double feeAmount = 0.0;
		
		for(Fee f : fees) {
			feeAmount = feeAmount + Double.valueOf(f.getPaymentAmount());
		}
		
		String roundedAmount = String.format("%.0f", feeAmount);
		
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("studentCount", studentCount);
		mv.addObject("courseCount", courseCount);
		mv.addObject("feeAmount", roundedAmount);
		return mv;
	}
}
