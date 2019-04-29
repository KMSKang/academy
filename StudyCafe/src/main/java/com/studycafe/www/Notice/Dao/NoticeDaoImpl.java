package com.studycafe.www.Notice.Dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.studycafe.www.Notice.VO.NoticeVO;

@Repository
public class NoticeDaoImpl implements NoticeDaoInt {

	@Inject
	private SqlSession session;

	private String namespace = "com.studycafe.www.mappers.noticeMapper";
	
	// 공지사항 페이지 - (페이지)
	public List<NoticeVO> selectList(){
		return session.selectList(namespace + ".selectList");
	}

	// 공지사항 작성 페이지 - (실행)
	public int create(NoticeVO noticeVO) {
		return session.update(namespace + ".create", noticeVO);
	}

}
