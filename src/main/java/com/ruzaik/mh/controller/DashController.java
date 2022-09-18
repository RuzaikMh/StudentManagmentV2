package com.ruzaik.mh.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ruzaik.mh.dao.AttendaceRepo;
import com.ruzaik.mh.dao.CourseRepo;
import com.ruzaik.mh.dao.FeeRepo;
import com.ruzaik.mh.dao.StudentRepo;
import com.ruzaik.mh.model.Attendance;
import com.ruzaik.mh.model.Fee;
import com.ruzaik.mh.model.Student;

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
		
		List<Student> studentsList = studentRepo.orderByDate();
		List<Student> studentListSorted = new ArrayList<>();
		
		if(studentsList.size() <= 5) {
			for(Student s : studentsList) {
				studentListSorted.add(s);
			}
		}else {
			for(int i = 0; i <= 4; i++) {
				studentListSorted.add(studentsList.get(i));
			}
		}
		
		List<Fee> fList = feeRepo.orderByDate();
		List<Fee> fListSort = new ArrayList<>();
		
		if(fList.size() <= 5) {
			for(Fee f : fList) {
				fListSort.add(f);
			}
		}else {
			for(int i = 0; i <= 4; i++) {
				fListSort.add(fList.get(i));
			}
		}
		
		DateTimeFormatter currentDate = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDateTime currentDateNow = LocalDateTime.now();
		String currentDateStr = currentDate.format(currentDateNow);

		List<Attendance> attendanceToday = attendaceRepo.findByDate(currentDateStr);
		int attendanceCount = attendanceToday.size();
		
		
		List<String> paymentByMonth = feeRepo.totalSalesByMonths();
		LocalDate current_date = LocalDate.now();
		String current_year = Integer.toString(current_date.getYear());
		
		String year;
		String month;
		String amount;
		String[] strSplit;
		
		for(String s : paymentByMonth) {
			strSplit = s.split(",");
			year = strSplit[0];
			month = strSplit[1];
			amount = strSplit[2];
			
			if(year.equals(current_year)) {
				
				switch(month) {
					case "1" :
						String monthJan = amount;
						break;
					case "2" :
						String monthFeb = amount;
						break;
					case "3" :
						String monthMar = amount;
						break;
					
				}
			}
		}
 		
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("studentCount", studentCount);
		mv.addObject("courseCount", courseCount);
		mv.addObject("feeAmount", roundedAmount);
		mv.addObject("studentsList", studentListSorted);
		mv.addObject("feeList", fListSort);
		mv.addObject("attendanceCount", attendanceCount);
		return mv;
	}
}
