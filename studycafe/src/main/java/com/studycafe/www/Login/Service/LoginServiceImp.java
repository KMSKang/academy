package com.studycafe.www.Login.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studycafe.www.Login.Dao.LoginDaoInt;
import com.studycafe.www.Login.VO.KakaoLoginVO;
import com.studycafe.www.Login.VO.LoginVO;

@Service
public class LoginServiceImp implements LoginServiceInt {

	@Autowired
	LoginDaoInt dao;

	// 로그인 (실행) - 닉네임
	@Override
	public String selectOne(LoginVO loginVO) {
		return dao.selectOne(loginVO);
	}

	// 로그인 (실행) - 사진
	@Override
	public String selectTwo(LoginVO loginVO) {
		return dao.selectTwo(loginVO);
	}

	// 로그인 (실행) - 번호
	@Override
	public int selectThree(LoginVO loginVO) {
		return dao.selectThree(loginVO);
	}
	
	// 로그인 (실행) - 비밀번호
	@Override
	public String selectFive(LoginVO loginVO) {
		return dao.selectFive(loginVO);
	}

	// 카카오 로그인 (실행)
	@Override
	public int selectFour(KakaoLoginVO kakaoLoginVO) {
		return dao.selectFour(kakaoLoginVO);
	}

}
