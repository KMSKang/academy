package com.studycafe.www.Login.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.studycafe.www.Login.Service.LoginServiceInt;
import com.studycafe.www.Login.VO.LoginVO;

@Controller
public class LoginController {

	@Autowired
	LoginServiceInt loginServiceInt;
	
	// 로그인 (페이지)
	@RequestMapping("/login/main")
	public String Login() {
		return "/login/main";
	}

	// 로그인 (실행)
	@RequestMapping(value = "/loginOK", method = RequestMethod.POST)
	public ModelAndView LoginOK(@ModelAttribute LoginVO loginVO, HttpSession session, ModelAndView mav) {
		
		// 접속한 닉네임
		String name = loginServiceInt.selectOne(loginVO);
		// 접속한 프로필사진
		String photo = loginServiceInt.selectTwo(loginVO);
		
		int no = loginServiceInt.selectThree(loginVO);

		// 로그인 성공
		if (name != null) {
			session.setAttribute("uid", loginVO.getEmail()); // 관리자의 아이디 이름
			session.setAttribute("no", no);
			session.setAttribute("nickname", name); // 관리자의 이름
			session.setAttribute("photo", photo); // 관리자의 이름
			mav.setViewName("/home"); // 맞으면 admin/admin.jsp로 이동
			mav.addObject("message", "success");
		// 로그인 실패
		} else {
			mav.setViewName("/login/main"); // 틀리면 admin/login.jsp로 이동
			mav.addObject("message", "error");
		}
		return mav;
	}
	
	// 로그아웃 (실행)
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/";
	}

}
