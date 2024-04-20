package com.studycafe.www.MemberList.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studycafe.www.MemberList.Dao.MemberListDaoInt;
import com.studycafe.www.MemberList.VO.MemberListVO;
import com.studycafe.www.SignUp.VO.SignUpVO;

@Service
public class MemberListServiceImpl implements MemberListServiceInt {

	@Autowired
	MemberListDaoInt memberListDaoInt;

	// 회원 리스트 페이지 - (페이지)
	public List<SignUpVO> selectList() {
		return memberListDaoInt.selectList();
	}

	// 회원리스트 강제탈퇴 - (실행)
	public int delete(MemberListVO memberListVO) {
		return memberListDaoInt.delete(memberListVO);
	}

}
