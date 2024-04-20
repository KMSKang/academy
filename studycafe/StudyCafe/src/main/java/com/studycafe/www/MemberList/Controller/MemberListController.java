package com.studycafe.www.MemberList.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.studycafe.www.MemberList.Service.MemberListServiceInt;

@Controller
public class MemberListController {

	@Autowired
	MemberListServiceInt memberListServiceInt;
	
	// 회원 리스트 (페이지)
	@RequestMapping("/memberList/main")
	public String memberList(Model model) {
		
		model.addAttribute("memberList", memberListServiceInt.selectList());
		
		return "/memberList/main";
	}
	
}