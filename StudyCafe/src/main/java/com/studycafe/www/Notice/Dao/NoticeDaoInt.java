package com.studycafe.www.Notice.Dao;

import java.util.List;

import com.studycafe.www.Notice.VO.NoticeVO;
import com.studycafe.www.Notice.VO.Pagination;

public interface NoticeDaoInt {

	// 공지사항 페이지징처리 - (실행)
	public int selectListCnt() throws Exception;

	// 공지사항 리스트 - (페이지 리스트)
	public List<NoticeVO> selectList(Pagination pagination) throws Exception;

	// 공지사항 작성 페이지 - (실행)
	public int create(NoticeVO noticeVO);
}
