package com.studycafe.www.ServiceCenter.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ServiceCenterController {

	// 고객센터 메인 페이지 - (페이지)
	@RequestMapping("/serviceCenter/main")
	public String main() {
		return "/serviceCenter/main";
	}
}
