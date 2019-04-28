package com.studycafe.www.SignUp.Service;

import javax.servlet.http.HttpServletRequest;

import com.studycafe.www.SignUp.VO.KakaoSignUpVO;
import com.studycafe.www.SignUp.VO.SignUpVO;

public interface SignUpServiceInt {
	
	// 회원가입 - 페이지
	public void create(SignUpVO signUpVO, HttpServletRequest request) throws Exception;
	
	// 카카오 회원가입 - 페이지
	public int kakaoCreate(KakaoSignUpVO kakaoSignUpVO);
}
