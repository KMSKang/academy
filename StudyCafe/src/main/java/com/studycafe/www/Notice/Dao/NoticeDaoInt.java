package com.studycafe.www.Notice.Dao;

import java.util.List;

import com.studycafe.www.Notice.VO.NoticeVO;

public interface NoticeDaoInt {
	
	// 공지사항 페이지 - (페이지)
	public List<NoticeVO> selectList();

	// 공지사항 작성 페이지 - (실행)
	public int create(NoticeVO noticeVO);
}
