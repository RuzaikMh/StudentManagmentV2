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
		Double amountDouble;
		String[] strSplit;
		String monthJan = "0";
		String monthFeb = "0";
		String monthMar = "0";
		String monthApr = "0";
		String monthMay = "0";
		String monthJun = "0";
		String monthJul = "0";
		String monthAug = "0";
		String monthSpt = "0";
		String monthOct = "0";
		String monthNav = "0";
		String monthDec = "0";
		
		for(String s : paymentByMonth) {
			strSplit = s.split(",");
			year = strSplit[0];
			month = strSplit[1];
			amount = strSplit[2];
			amountDouble = Double.valueOf(amount);
			amount = String.format("%.0f", amountDouble);
			
			if(year.equals(current_year)) {
				
				switch(month) {
					case "1" :
						monthJan = amount;
						break;
					case "2" :
						monthFeb = amount;
						break;
					case "3" :
						monthMar = amount;
						break;
					case "4" :
						monthApr = amount;
						break;
					case "5" :
						monthMay = amount;
						break;
					case "6" :
						monthJun = amount;
						break;
					case "7" :
						monthJul = amount;
						break;
					case "8" :
						monthAug = amount;
						break;
					case "9" :
						monthSpt = amount;
						break;
					case "10" :
						monthOct = amount;
						break;
					case "11" :
						monthNav = amount;
						break;
					case "12" :
						monthDec = amount;
						break;		
				}
			}
		}
 		
		System.out.println(
					"Jan " + monthJan +
					" Feb " + monthFeb + 
					" Mar " + monthMar + 
					" Apr " + monthApr +
					" May " + monthMay +
					" Jun " + monthJun +
					" Jul " + monthJul +
					" Aug " + monthAug +
					" Spt " + monthSpt +
					" Oct " + monthOct +
					" Nav " + monthNav +
					" Dec " + monthDec 
				
				);
		
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("studentCount", studentCount);
		mv.addObject("courseCount", courseCount);
		mv.addObject("feeAmount", roundedAmount);
		mv.addObject("studentsList", studentListSorted);
		mv.addObject("feeList", fListSort);
		mv.addObject("attendanceCount", attendanceCount);
		mv.addObject("monthJan", monthJan);
		mv.addObject("monthFeb", monthFeb);
		mv.addObject("monthMar", monthMar);
		mv.addObject("monthApr", monthApr);
		mv.addObject("monthMay", monthMay);
		mv.addObject("monthJun", monthJun);
		mv.addObject("monthJul", monthJul);
		mv.addObject("monthAug", monthAug);
		mv.addObject("monthSpt", monthSpt);
		mv.addObject("monthOct", monthOct);
		mv.addObject("monthNav", monthNav);
		mv.addObject("monthDec", monthDec);
		return mv;
	}
}
