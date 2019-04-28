package com.studycafe.www.Reservation.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.studycafe.www.Reservation.Service.ReservationServiceInt;
import com.studycafe.www.Reservation.VO.InfoVO;

@Controller
public class ReservationController {

	@Autowired
	ReservationServiceInt reservationServiceInt;

	// 스터디카페 예약 작성 페이지 - (페이지)
	@RequestMapping("/reservation/write")
	public String write() {
		return "/reservation/write";
	}

	// 스터디카페 예약 작성 페이지 - (실행)
	@RequestMapping(value = "/reservation/writeOK", method = RequestMethod.POST)
	public String writeOK(InfoVO infoVO, HttpServletRequest request) throws Exception {

		reservationServiceInt.create(infoVO, request);

		return "redirect:/reservation/main";
	}

	// 스터디카페 예약 메인 페이지 - (페이지)
	@RequestMapping("/reservation/main")
	public String main(Model model) {

		model.addAttribute("reservationList", reservationServiceInt.selectList());

		return "/reservation/main";
	}

	// 스터디카페 예약 상세 페이지 - (페이지)
	@RequestMapping("/reservation/info")
	public String info(Model model, @RequestParam int no) {

		model.addAttribute("reservationOne", reservationServiceInt.selectOne(no));

		return "/reservation/info";
	}

	// 스터리룸 예약 상세 페이지 - (페이지)
	@RequestMapping("/reservation/roomInfo")
	public String roomInfo(Model model, @RequestParam int no) {

		model.addAttribute("reservationOne", reservationServiceInt.selectOne(no));

		return "/reservation/roomInfo";
	}

}
