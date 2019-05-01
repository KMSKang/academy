package com.studycafe.www.Mypage.Service;

import javax.servlet.http.HttpServletRequest;

import com.studycafe.www.Mypage.VO.MypageVO;

public interface MypageServiceInt {
	
	// 마이페이지 - (페이지)
	public MypageVO selectOne(String email);

	// 마이페이지 수정 - (수정)
	public int update(MypageVO mypageVO, HttpServletRequest request) throws Exception;
	
	// 마이페이지 탈퇴 - (실행)
	public int delete(MypageVO mypageVO);
	
}
