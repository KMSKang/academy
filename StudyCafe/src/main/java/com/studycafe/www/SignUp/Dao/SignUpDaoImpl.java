package com.studycafe.www.SignUp.Dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.studycafe.www.SignUp.VO.KakaoSignUpVO;
import com.studycafe.www.SignUp.VO.SignUpVO;

@Repository
public class SignUpDaoImpl implements SignUpDaoInt {

	@Inject
	private SqlSession session;

	private String namespace = "com.studycafe.www.mappers.signUpMapper";

	// 회원가입 페이지 OK - (페이지)
	public int create(SignUpVO signUpVO) {
		return session.update(namespace + ".create", signUpVO);
	}

	// 카카오 회원가입 (실행)
	public int kakaoCreate(KakaoSignUpVO kakaoSignUpVO) {
		return session.update(namespace + ".kakaoCreate", kakaoSignUpVO);
	}

}
