package com.studycafe.www.Login.Dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.studycafe.www.Login.VO.KakaoLoginVO;
import com.studycafe.www.Login.VO.LoginVO;

@Repository
public class LoginDaoImp implements LoginDaoInt {

	@Inject
	SqlSession session;

	private String namespace = "com.studycafe.www.mappers.loginMapper";

	// 로그인 (실행) - 닉네임
	@Override
	public String selectOne(LoginVO loginVO) {
		return session.selectOne(namespace + ".selectOne", loginVO);
	}

	// 로그인 (실행) - 사진
	@Override
	public String selectTwo(LoginVO loginVO) {
		return session.selectOne(namespace + ".selectTwo", loginVO);
	}
	
	// 로그인 (실행) - 번호
	@Override
	public int selectThree(LoginVO loginVO) {
		return session.selectOne(namespace + ".selectThree", loginVO);
	}
	
	// 로그인 (실행) - 비밀번호
	@Override
	public String selectFive(LoginVO loginVO) {
		return session.selectOne(namespace + ".selectFive", loginVO);
	}
	
	// 카카오 로그인 (실행)
	@Override
	public int selectFour(KakaoLoginVO kakaoLoginVO) {
		return session.selectOne(namespace + ".selectFour", kakaoLoginVO);
	}
}
