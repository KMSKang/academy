package com.studycafe.www.SignUp.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.studycafe.www.Login.Dao.LoginDaoImp;
import com.studycafe.www.Login.VO.KakaoLoginVO;
import com.studycafe.www.SignUp.Service.SignUpServiceInt;
import com.studycafe.www.SignUp.VO.KakaoSignUpVO;

@RestController
public class KakaoSignUpRestController {

	@Autowired
	SignUpServiceInt service;

	@Autowired
	LoginDaoImp dao;

	// 카카오 회원가입 (실행)
	@PostMapping("/kakaoWrite")
	public String kakaoSignUp(KakaoSignUpVO kakaoSignUpVO) {
		
		// 빈 공간 변수 생성
		int result = 0;
		
		// 로그인 객체 생성
		KakaoLoginVO kakaoLoginVO = new KakaoLoginVO();

		// 로그인 객체에 카카오톡 로그인시 입력한 값 저장
		kakaoLoginVO.setEmail(kakaoSignUpVO.getEmail());
		kakaoLoginVO.setName(kakaoSignUpVO.getName());
		kakaoLoginVO.setPhoto(kakaoSignUpVO.getPhoto());
		
		// 디비로 가서 아이디 정보가 있는지 확인 (있으면 그대로 실행 / 없으면 catch로 이동)
		try {
			dao.selectFour(kakaoLoginVO);
			// 디비에 가서 아이디 정보가 있는지 
		} catch (Exception e) {
			// 계정 생성
			e.printStackTrace();
			result = service.kakaoCreate(kakaoSignUpVO);
		}

		return result == 0 ? "fail" : "success";
	}

}