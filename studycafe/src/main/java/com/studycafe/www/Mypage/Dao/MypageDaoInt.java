package com.studycafe.www.Mypage.Dao;

import com.studycafe.www.Mypage.VO.MypageVO;

public interface MypageDaoInt {
	
	// 마이페이지 - (페이지)
	public MypageVO selectOne(String email);
	
	// 마이페이지 수정 - (실행)
	public int update(MypageVO mypageVO);
	
	// 마이페이지 탈퇴 - (실행)
	public int delete(MypageVO mypageVO);
	
	// 마이페이지 탈퇴 [아이디,패스워드] - (실행)
	public String selectOneCheck(MypageVO mypageVO);
	
}
