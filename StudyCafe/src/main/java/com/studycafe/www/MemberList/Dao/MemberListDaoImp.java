package com.studycafe.www.MemberList.Dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.studycafe.www.MemberList.VO.MemberListVO;
import com.studycafe.www.SignUp.VO.SignUpVO;

@Repository
public class MemberListDaoImp implements MemberListDaoInt {

	@Inject
	SqlSession session;

	private String namespace = "com.studycafe.www.mappers.memberListMapper";

	// 회원 리스트 페이지 - (페이지)
	public List<SignUpVO> selectList() {
		return session.selectList(namespace + ".selectList");
	}

	// 회원리스트 강제탈퇴 - (실행)
	public int delete(MemberListVO memberListVO) {
		return session.delete(namespace + ".delete", memberListVO);
	}
}
