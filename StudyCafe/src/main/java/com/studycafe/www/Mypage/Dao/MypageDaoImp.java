package com.studycafe.www.Mypage.Dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.studycafe.www.Mypage.VO.MypageVO;

@Repository
public class MypageDaoImp implements MypageDaoInt {

	@Inject
	SqlSession session;

	private static String namespace = "com.studycafe.mappers.mypageMapper";

	// 마이페이지 (페이지)
	public MypageVO selectOne(int no) {
		return session.selectOne(namespace + ".selectOne", no);
	}

	// 마이페이지 수정 (실행)
	public int update(MypageVO mypageVO) {
		return session.update(namespace + ".update", mypageVO);
	}

}
