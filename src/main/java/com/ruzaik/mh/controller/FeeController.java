package com.ruzaik.mh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ruzaik.mh.dao.FeeRepo;
import com.ruzaik.mh.dao.StudentRepo;
import com.ruzaik.mh.model.Fee;
import com.ruzaik.mh.model.Student;

@Controller
public class FeeController {

	@Autowired
	StudentRepo studentRepo;
	
	@Autowired
	FeeRepo repo;
	
	@RequestMapping("/new-fee")
	public ModelAndView newFee() {
		List<Student> students = studentRepo.findAll();
		
		ModelAndView mv = new ModelAndView("new-fee");
		mv.addObject("studentList", students);
		
		return mv;
	}
	
	@RequestMapping("/add-new-fee")
	public ModelAndView addNewFee(Fee fee) {
		repo.save(fee);
		return newFeeSuccess();
	}
	
	@RequestMapping("/new-fee-success")
	public ModelAndView newFeeSuccess() {
		List<Student> students = studentRepo.findAll();
		
		ModelAndView mv = new ModelAndView("new-fee");
		mv.addObject("studentList", students);
		mv.addObject("alertMsg", "Success");
		
		return mv;
	}
}
