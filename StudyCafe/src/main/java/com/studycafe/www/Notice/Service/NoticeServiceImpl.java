package com.studycafe.www.Notice.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studycafe.www.Notice.Dao.NoticeDaoInt;
import com.studycafe.www.Notice.VO.NoticeVO;

@Service
public class NoticeServiceImpl implements NoticeServiceInt {

	@Autowired
	NoticeDaoInt noticeDaoInt;

	// 공지사항 페이지 - (페이지)
	@Override
	public List<NoticeVO> selectList() {
		return noticeDaoInt.selectList();
	}

	// 공지사항 작성 페이지 - (실행)
	@Override
	public void create(NoticeVO noticeVO) {

		int result = noticeDaoInt.create(noticeVO);
	}

}
