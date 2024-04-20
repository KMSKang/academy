package com.studycafe.www.SignUp.Dao;

import com.studycafe.www.SignUp.VO.KakaoSignUpVO;
import com.studycafe.www.SignUp.VO.SignUpVO;

public interface SignUpDaoInt {

	// 회원가입 페이지 OK - (페이지)
	public int create(SignUpVO signUpVO);
	
	// 카카오 회원가입 페이지 (실행)
	public int kakaoCreate(KakaoSignUpVO kakaoSignUpVO);

}
