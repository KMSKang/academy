package com.studycafe.www.Login.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.studycafe.www.Login.Service.LoginServiceInt;
import com.studycafe.www.Login.VO.KakaoLoginVO;

@RestController
public class KakaoLoginRestController {

	@Autowired
	LoginServiceInt service;

	@PostMapping("/kakaoLogin")
	public String kakaoLogin(KakaoLoginVO kakaoLoginVO, HttpSession session) {

		int result = service.selectFour(kakaoLoginVO);

		if (result != 0) {
			session.setAttribute("no", result);
			session.setAttribute("uid", kakaoLoginVO.getEmail()); // 관리자의 아이디이름
			session.setAttribute("nickname", kakaoLoginVO.getName()); // 관리자의 아이디이름
			session.setAttribute("photo", kakaoLoginVO.getPhoto()); // 관리자의 아이디이름
		}

		return result == 0 ? "fail" : "success";

	}

}
