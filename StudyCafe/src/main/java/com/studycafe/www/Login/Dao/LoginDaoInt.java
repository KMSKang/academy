package com.studycafe.www.Login.Dao;

import com.studycafe.www.Login.VO.KakaoLoginVO;
import com.studycafe.www.Login.VO.LoginVO;

public interface LoginDaoInt {
	
	// 로그인 (실행) - 닉네임
	public String selectOne(LoginVO loginVO);
	
	// 로그인 (실행) - 사진
	public String selectTwo(LoginVO loginVO);
	
	// 로그인 (실행) - 번호
	public int selectThree(LoginVO loginVO);
	
	// 카카오 로그인
	public int selectFour(KakaoLoginVO kakaoLoginVO);
}
