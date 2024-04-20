package com.studycafe.www.Recruitment.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RecruitmentController {

	// 스터디 모집 페이지 - 메인 (페이지)
	@RequestMapping("/recruitmentMain")
	public String recruitmentMain() {
		return "/recruitment/recruitmentMain";
	}

	// 스터디 모집 페이지 - 글쓰기 (페이지)
	@RequestMapping("/recruitmentWrite")
	public String recruitmentWrite() {
		return "/recruitment/recruitmentWrite";
	}

}
