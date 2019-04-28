package com.studycafe.www.Reservation.Dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.studycafe.www.Reservation.VO.InfoVO;

@Repository
public class ReservationDaoImp implements ReservationDaoInt {

	@Inject
	SqlSession session;

	private String namespace = "com.studycafe.www.mappers.reservationMapper";

	// 스터디카페 예약 작성 페이지 - (실행)
	public int create(InfoVO infoVO) {
		return session.update(namespace + ".create", infoVO);
	}

	// 스터디카페 예약 메인 페이지 - (실행)
	public List<InfoVO> selectList() {
		return session.selectList(namespace + ".selectList");
	}

	// 스터디카페 예약 상세 페이지 - (페이지)
	public InfoVO selectOne(int no) {
		return session.selectOne(namespace + ".selectOne", no);
	}

}
