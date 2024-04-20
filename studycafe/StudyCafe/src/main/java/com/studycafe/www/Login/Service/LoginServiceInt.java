package com.studycafe.www.Login.Service;

import com.studycafe.www.Login.VO.KakaoLoginVO;
import com.studycafe.www.Login.VO.LoginVO;

public interface LoginServiceInt {

	// 로그인 (실행) - 닉네임
	public String selectOne(LoginVO loginVO);

	// 로그인 (실행) - 사진
	public String selectTwo(LoginVO loginVO);
	
	// 로그인 (실행) - 번호
	public int selectThree(LoginVO loginVO);
	
	// 카카오 로그인 (실행)
	public int selectFour(KakaoLoginVO kakaoLoginVO);
	
	// 로그인 (실행) - 비밀번호
	public String selectFive(LoginVO loginVO);

}
