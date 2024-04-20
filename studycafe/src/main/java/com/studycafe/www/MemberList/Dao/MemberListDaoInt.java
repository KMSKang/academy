package com.studycafe.www.MemberList.Dao;

import java.util.List;

import com.studycafe.www.MemberList.VO.MemberListVO;
import com.studycafe.www.SignUp.VO.SignUpVO;

public interface MemberListDaoInt {
	
	// 회원 리스트 페이지 -(페이지)
	public List<SignUpVO> selectList();
	
	// 회원 리스트 강제탈퇴 - (실행)
	public int delete(MemberListVO memberListVO);

}
