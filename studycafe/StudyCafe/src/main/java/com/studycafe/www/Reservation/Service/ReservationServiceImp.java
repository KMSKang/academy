package com.studycafe.www.Reservation.Service;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studycafe.www.Reservation.Dao.ReservationDaoInt;
import com.studycafe.www.Reservation.VO.InfoVO;

@Service
public class ReservationServiceImp implements ReservationServiceInt {

	@Autowired
	ReservationDaoInt reservationDaoInt;

	// 스터디카페 예약 작성 페이지 - (실행)

	public void create(InfoVO infoVO, HttpServletRequest request) throws Exception {

		String imgName = "";
		String uploadUri = "/uploadFile/reservationPhoto";
		String dir = request.getSession().getServletContext().getRealPath(uploadUri);

		// 업로드 1
		if (!infoVO.getPhotoFile1().isEmpty()) {

			imgName = infoVO.getName() + "_" + infoVO.getPhotoFile1().getOriginalFilename();

			infoVO.getPhotoFile1().transferTo(new File(dir, imgName));

			infoVO.setPhoto1(imgName);

		}

		// 업로드 2
		if (!infoVO.getPhotoFile2().isEmpty()) {

			imgName = infoVO.getName() + "_" + infoVO.getPhotoFile2().getOriginalFilename();

			infoVO.getPhotoFile2().transferTo(new File(dir, imgName));

			infoVO.setPhoto2(imgName);
		}

		// 업로드 3
		if (!infoVO.getPhotoFile3().isEmpty()) {

			imgName = infoVO.getName() + "_" + infoVO.getPhotoFile3().getOriginalFilename();

			infoVO.getPhotoFile3().transferTo(new File(dir, imgName));

			infoVO.setPhoto3(imgName);
		}

		// 업로드 4
		if (!infoVO.getPhotoFile4().isEmpty()) {

			imgName = infoVO.getName() + "_" + infoVO.getPhotoFile4().getOriginalFilename();

			infoVO.getPhotoFile4().transferTo(new File(dir, imgName));

			infoVO.setPhoto4(imgName);
		}

		// 업로드 5
		if (!infoVO.getPhotoFile5().isEmpty()) {

			imgName = infoVO.getName() + "_" + infoVO.getPhotoFile5().getOriginalFilename();

			infoVO.getPhotoFile5().transferTo(new File(dir, imgName));

			infoVO.setPhoto5(imgName);
		}

		// 업로드 6
		if (!infoVO.getPhotoFile6().isEmpty()) {

			imgName = infoVO.getName() + "_" + infoVO.getPhotoFile6().getOriginalFilename();

			infoVO.getPhotoFile6().transferTo(new File(dir, imgName));

			infoVO.setPhoto6(imgName);
		}

		// 업로드 7
		if (!infoVO.getPhotoFile7().isEmpty()) {

			imgName = infoVO.getName() + "_" + infoVO.getPhotoFile7().getOriginalFilename();

			infoVO.getPhotoFile7().transferTo(new File(dir, imgName));

			infoVO.setPhoto7(imgName);
		}

		// 업로드 8
		if (!infoVO.getPhotoFile8().isEmpty()) {

			imgName = infoVO.getName() + "_" + infoVO.getPhotoFile8().getOriginalFilename();

			infoVO.getPhotoFile8().transferTo(new File(dir, imgName));

			infoVO.setPhoto8(imgName);
		}

		// 업로드 9
		if (!infoVO.getPhotoFile9().isEmpty()) {

			imgName = infoVO.getName() + "_" + infoVO.getPhotoFile9().getOriginalFilename();

			infoVO.getPhotoFile9().transferTo(new File(dir, imgName));

			infoVO.setPhoto9(imgName);
		}

		// 업로드 10
		if (!infoVO.getPhotoFile10().isEmpty()) {

			imgName = infoVO.getName() + "_" + infoVO.getPhotoFile10().getOriginalFilename();

			infoVO.getPhotoFile10().transferTo(new File(dir, imgName));

			infoVO.setPhoto10(imgName);
		}

		// 업로드 11
		if (!infoVO.getPhotoFile11().isEmpty()) {

			imgName = infoVO.getName() + "_" + infoVO.getPhotoFile11().getOriginalFilename();

			infoVO.getPhotoFile11().transferTo(new File(dir, imgName));

			infoVO.setPhoto11(imgName);
		}

		// 업로드 12
		if (!infoVO.getPhotoFile12().isEmpty()) {

			imgName = infoVO.getName() + "_" + infoVO.getPhotoFile12().getOriginalFilename();

			infoVO.getPhotoFile12().transferTo(new File(dir, imgName));

			infoVO.setPhoto12(imgName);
		}

		// 업로드 13
		if (!infoVO.getPhotoFile13().isEmpty()) {

			imgName = infoVO.getName() + "_" + infoVO.getPhotoFile13().getOriginalFilename();

			infoVO.getPhotoFile13().transferTo(new File(dir, imgName));

			infoVO.setPhoto13(imgName);
		}

		// 업로드 14
		if (!infoVO.getPhotoFile14().isEmpty()) {

			imgName = infoVO.getName() + "_" + infoVO.getPhotoFile14().getOriginalFilename();

			infoVO.getPhotoFile14().transferTo(new File(dir, imgName));

			infoVO.setPhoto14(imgName);
		}

		// 업로드 15
		if (!infoVO.getPhotoFile15().isEmpty()) {

			imgName = infoVO.getName() + "_" + infoVO.getPhotoFile15().getOriginalFilename();

			infoVO.getPhotoFile15().transferTo(new File(dir, imgName));

			infoVO.setPhoto15(imgName);
		}

		// 업로드 16
		if (!infoVO.getPhotoFile16().isEmpty()) {

			imgName = infoVO.getName() + "_" + infoVO.getPhotoFile16().getOriginalFilename();

			infoVO.getPhotoFile16().transferTo(new File(dir, imgName));

			infoVO.setPhoto16(imgName);
		}

		// 업로드 17
		if (!infoVO.getPhotoFile17().isEmpty()) {

			imgName = infoVO.getName() + "_" + infoVO.getPhotoFile17().getOriginalFilename();

			infoVO.getPhotoFile17().transferTo(new File(dir, imgName));

			infoVO.setPhoto17(imgName);
		}

		// 업로드 18
		if (!infoVO.getPhotoFile18().isEmpty()) {

			imgName = infoVO.getName() + "_" + infoVO.getPhotoFile18().getOriginalFilename();

			infoVO.getPhotoFile18().transferTo(new File(dir, imgName));

			infoVO.setPhoto18(imgName);
		}

		// 업로드 19
		if (!infoVO.getPhotoFile19().isEmpty()) {

			imgName = infoVO.getName() + "_" + infoVO.getPhotoFile19().getOriginalFilename();

			infoVO.getPhotoFile19().transferTo(new File(dir, imgName));

			infoVO.setPhoto19(imgName);
		}

		// 업로드 20
		if (!infoVO.getPhotoFile20().isEmpty()) {

			imgName = infoVO.getName() + "_" + infoVO.getPhotoFile20().getOriginalFilename();

			infoVO.getPhotoFile20().transferTo(new File(dir, imgName));

			infoVO.setPhoto20(imgName);
		}

		int result = reservationDaoInt.create(infoVO);
	}

	// 스터디카페 예약 메인 페이지 - (실행)
	public List<InfoVO> selectList() {
		return reservationDaoInt.selectList();
	}

	// 스터디카페 예약 상세 페이지 - (페이지)
	public InfoVO selectOne(int no) {
		return reservationDaoInt.selectOne(no);
	}

}
