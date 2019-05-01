package com.studycafe.www.Mypage.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.studycafe.www.Login.Service.LoginServiceInt;
import com.studycafe.www.Mypage.Service.MypageServiceInt;
import com.studycafe.www.Mypage.VO.MypageVO;

@Controller
public class MypageController {

	@Autowired
	MypageServiceInt mypageServiceInt;

	@Autowired
	LoginServiceInt loginServiceInt;

	// 마이페이지 - (페이지)
	@RequestMapping("/mypage/main")
	public String main(Model model, MypageVO mypageVO, HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		HttpSession session = request.getSession();

		if (session.getAttribute("email") == null) {

			response.setContentType("text/html; charset=UTF-8");

			PrintWriter out = response.getWriter();

			out.println("<script>alert('로그인이 필요합니다!');</script>");

			out.flush();

			return "/login/main";

		} else {

			String email = (String) session.getAttribute("email");

			model.addAttribute("mypage", mypageServiceInt.selectOne(email));

			return "/mypage/main";

		}
	}

	// 마이페이지 수정 - (페이지)
	@RequestMapping("/mypage/modify")
	public String modify(Model model, HttpServletRequest request) {

		HttpSession session = request.getSession();

		String email = (String) session.getAttribute("email");

		model.addAttribute("mypage", mypageServiceInt.selectOne(email));

		return "/mypage/modify";
	}

	// 마이페이지 수정 - (실행)
	@RequestMapping(value = "/mypage/modifyOK", method = RequestMethod.POST)
	public String modifyOK(MypageVO mypageVO, HttpServletRequest request, HttpSession session) throws Exception {

		mypageServiceInt.update(mypageVO, request);

		session.setAttribute("photo", mypageVO.getPhoto());

		return "redirect:/mypage/main";
	}

	// 마이페이지 삭제 - (페이지)
	@RequestMapping("/mypage/delete")
	public String delete(Model model, HttpServletRequest request) {

		HttpSession session = request.getSession();

		String email = (String) session.getAttribute("email");

		model.addAttribute("mypage", mypageServiceInt.selectOne(email));

		return "/mypage/delete";
	}

	// 마이페이지 탈퇴 - (실행)
	@RequestMapping("/mypage/deleteOK")
	public String deleteOK(MypageVO mypageVO, HttpServletRequest request) {

		HttpSession session = request.getSession();

		String email = (String) session.getAttribute("email");

		String pw = (String) session.getAttribute("pw");

		mypageVO.setPw(pw);
		
		mypageVO.setEmail(email);

		if (email != null) {
			
			System.out.println("삭제 성공 111");
			
			mypageServiceInt.delete(mypageVO);
			
		} else {
			
		}

		return "redirect:/logout";
	}

}
