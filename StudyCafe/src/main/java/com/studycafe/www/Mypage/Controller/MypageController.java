package com.studycafe.www.Mypage.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.studycafe.www.Mypage.Service.MypageServiceInt;
import com.studycafe.www.Mypage.VO.MypageVO;

@Controller
public class MypageController {

	@Autowired
	MypageServiceInt service;

	// 마이페이지 (페이지)
	@RequestMapping("/mypage/main")
	public String main(Model model, MypageVO mypageVO, HttpServletRequest request) {

		HttpSession session = request.getSession();

		int no = (int) session.getAttribute("no");

		model.addAttribute("mypage", service.selectOne(no));

		return "/mypage/main";
	}

	// 마이페이지 수정 (페이지)
	@RequestMapping("/mypage/modify")
	public String modify(Model model, HttpServletRequest request) {

		HttpSession session = request.getSession();

		int no = (int) session.getAttribute("no");

		model.addAttribute("mypage", service.selectOne(no));

		return "/mypage/modify";
	}

	// 마이페이지 수정 (실행)
	@RequestMapping(value = "/mypage/modifyOK", method = RequestMethod.POST)
	public String modifyOK(MypageVO mypageVO, HttpServletRequest request, HttpSession session) throws Exception {

		service.update(mypageVO, request);

		session.setAttribute("photo", mypageVO.getPhoto());

		return "redirect:/mypage/main";
	}

	// 마이페이지 삭제 (페이지)
	@RequestMapping("/mypage/delete")
	public String delete(Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int no = (int) session.getAttribute("no");
		
		model.addAttribute("mypage", service.selectOne(no));
		
		return "/mypage/delete";
	}
	
	// 마이페이지 삭제 (실행)
	@RequestMapping("/mypage/deleteOK")
	public String deleteOK() {
		
		service.delete
		
		return "redirect:/";
	}

}
