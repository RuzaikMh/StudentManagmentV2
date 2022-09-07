package com.ruzaik.mh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DashController {

	@RequestMapping("/")
	public String dash() {
		return "index";
	}
}
