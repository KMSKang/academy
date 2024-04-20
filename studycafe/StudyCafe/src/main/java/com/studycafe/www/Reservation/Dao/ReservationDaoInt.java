package com.studycafe.www.Reservation.Dao;

import java.util.List;

import com.studycafe.www.Reservation.VO.InfoVO;

public interface ReservationDaoInt {

	// 스터디카페 예약 작성 페이지 - (실행)
	public int create(InfoVO infoVO);

	// 스터디카페 홍보사진 작성 페이지 - (페이지)
	public List<InfoVO> selectList();

	// 스터디카페 예약 상세 페이지 - (페이지)
	public InfoVO selectOne(int no);

}
