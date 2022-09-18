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
	
	@RequestMapping("/view-fee")
	public ModelAndView viewFee() {
		List<Fee> feeList = repo.findAll();
		
		ModelAndView mv = new ModelAndView("view-fee");
		mv.addObject("feeList", feeList);
		
		return mv;
	}
	
	@RequestMapping("/searchFee")
	public ModelAndView search(String search)
	{
		List<Fee> studentFees = repo.findByStudentRegistrationNumberLike(search);
		ModelAndView mv = new ModelAndView("view-fee");
		mv.addObject("feeList", studentFees);
		return mv;
	}
	
	@RequestMapping("/deleteFee")
	public ModelAndView deleteFee(String id)
	{
		repo.deleteById(id);
		return viewFee();
	}
	
	@RequestMapping("/updateFeePage")
	public ModelAndView updateFeePage(String id)
	{
		Fee studentFee = repo.getReferenceById(id);
		ModelAndView mv = new ModelAndView("update-fee");
		mv.addObject("studentFee", studentFee);
		return mv;
	}
	
	@RequestMapping("/updateFee")
	public ModelAndView updateStudentFee(Fee studentFee)
	{
		repo.save(studentFee);
		return viewFee();
	}
}
