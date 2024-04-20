package com.studycafe.www.Event.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EventController {

	// 이벤트 메인 페이지 - (페이지)
	@RequestMapping("/event/main")
	public String noticeMain() {
		return "/event/eventMain";
	}

}
