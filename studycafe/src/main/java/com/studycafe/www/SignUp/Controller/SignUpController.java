package com.studycafe.www.SignUp.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.studycafe.www.SignUp.Service.SignUpServiceInt;
import com.studycafe.www.SignUp.VO.SignUpVO;

@Controller
public class SignUpController {

	@Autowired
	SignUpServiceInt signUpServiceInt;

	// 회원가입 페이지 - (페이지)
	@RequestMapping("/signUp")
	public String signUp() {
		return "/signUp/signUp";
	}

	// 회원가입 페이지 OK - (페이지)
	@RequestMapping(value = "/signUpOK", method = RequestMethod.POST)
	public String signUpOK(SignUpVO signUpVO, HttpServletRequest request, Model model) throws Exception {

		signUpServiceInt.create(signUpVO, request);
		
		model.addAttribute("SignUpInfo", signUpVO);

		return "/signUp/signUpOK";
	}
}
