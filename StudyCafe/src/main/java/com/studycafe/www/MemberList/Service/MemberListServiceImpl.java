package com.studycafe.www.MemberList.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studycafe.www.MemberList.Dao.MemberListDaoInt;
import com.studycafe.www.SignUp.VO.SignUpVO;

@Service
public class MemberListServiceImpl implements MemberListServiceInt{
	
	@Autowired
	MemberListDaoInt dao;
	
	// 회원 리스트 (페이지)
	public List<SignUpVO> selectList(){
		return dao.selectList();
	}

}
