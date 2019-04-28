package com.studycafe.www.Mypage.Dao;

import com.studycafe.www.Mypage.VO.MypageVO;

public interface MypageDaoInt {
	
	// 마이페이지 (마이페이지)
	public MypageVO selectOne(int no);
	
	// 마이페이지 수정 (실행)
	public int update(MypageVO mypageVO);

}
