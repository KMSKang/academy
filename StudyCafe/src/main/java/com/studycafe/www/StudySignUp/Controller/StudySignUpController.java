package com.studycafe.www.StudySignUp.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudySignUpController {
	
	// 스터디 가입 메인 페이지 - (페이지)
	@RequestMapping("/studySignUpMain")
	public String studySignUpMain() {
		return "/studySignUp/studySignUpMain";
	}
	
//	// 
//	@RequestMapping("/studySignUpOK")
//	public String studySignUpOK() {
//		return "/studySignUp/studySignUpOK";
//	}
	
}
