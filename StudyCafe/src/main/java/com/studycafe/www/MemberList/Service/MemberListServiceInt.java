package com.studycafe.www.MemberList.Service;

import java.util.List;

import com.studycafe.www.SignUp.VO.SignUpVO;

public interface MemberListServiceInt {
	
	// 회원 리스트 (페이지)
	public List<SignUpVO> selectList();

}
