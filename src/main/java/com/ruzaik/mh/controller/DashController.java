package com.ruzaik.mh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DashController {

	@RequestMapping("/")
	public String dash() {
		return "index";
	}
}
