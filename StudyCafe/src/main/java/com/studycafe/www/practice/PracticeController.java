package com.studycafe.www.practice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PracticeController {

	@RequestMapping("/pt/pt")
	public String practice() {
		return "/pt/pt";
	}
}
