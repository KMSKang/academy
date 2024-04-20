package com.studycafe.www.Management;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManagementController {

	// 메인
	@RequestMapping("/management/main")
	public String main() {
		return "/management/main";
	}

	// 공지사항 관리 (메인) - (페이지)
	@RequestMapping("/management/notice")
	public String NoticeMain() {
		return "/management/notice";
	}

	// 이벤트 관리 (메인) - (페이지)
	@RequestMapping("/management/event")
	public String eventMain() {
		return "/management/event";
	}

	// 스터디 예약 관리 (메인) - (페이지)
	@RequestMapping("/management/studyReservation")
	public String studyReservationMain() {
		return "/management/studyReservation";
	}

	// 스터디 모집 관리 (메인) - (페이지)
	@RequestMapping("/management/studyRecuitment")
	public String studyRecuitmentMain() {
		return "/management/studyRecuitment";
	}

	// 스터디 가입 관리 (메인) - (페이지)
	@RequestMapping("/management/studySignUp")
	public String studySignUpMain() {
		return "/management/studySignUp";
	}

	// 회원 관리 (메인) - (페이지)
	@RequestMapping("/management/memberList")
	public String memberListMain() {
		return "/management/memberList";
	}

	// 고객센터 관리 (메인) - (페이지)
	@RequestMapping("/management/serviceCenter")
	public String serviceCenterMain() {
		return "/management/serviceCenter";
	}
}
