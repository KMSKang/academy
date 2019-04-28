package com.studycafe.www.Notice.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {
	
	// 공지사항 메인 페이지 - (페이지)
	@RequestMapping("/notice/main")
	public String noticeMain() {
		return "/notice/main";
	}
	
}
