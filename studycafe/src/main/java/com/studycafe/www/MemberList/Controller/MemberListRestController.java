package com.studycafe.www.MemberList.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.studycafe.www.MemberList.Service.MemberListServiceInt;
import com.studycafe.www.MemberList.VO.MemberListVO;

@RestController
public class MemberListRestController {
	
	@Autowired
	MemberListServiceInt memberListServiceInt;
	
	// 회원 리스트 강제탈퇴 - (실행)
	@PostMapping("/memberList/delete")
	public String memberListDelete(MemberListVO memberListVO) {
		
		int result = memberListServiceInt.delete(memberListVO);
		
		return result == 0 ? "fail" : "success";
	}
}
