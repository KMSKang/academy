package com.studycafe.www.Login.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.studycafe.www.Login.Service.LoginServiceInt;
import com.studycafe.www.Login.VO.LoginVO;

@Controller
public class LoginController {

	@Autowired
	LoginServiceInt loginServiceInt;

	// 로그인 - (페이지)
	@RequestMapping("/login/main")
	public String Login() {
		return "/login/main";
	}

	// 로그인 - (실행)
	@RequestMapping(value = "/loginOK", method = RequestMethod.POST)
	public String LoginOK(@ModelAttribute LoginVO loginVO, HttpSession session, HttpServletResponse response) throws IOException {

		// 아이디 있는지 확인
		String nickName = loginServiceInt.selectOne(loginVO);

		// 아이디의 사진 가져오기
		String photo = loginServiceInt.selectTwo(loginVO);
		
		// 접속한 아이디의 넘버 가져오기
//		int no = loginServiceInt.selectThree(loginVO);
		
		// 접속한 아이디의 pw 가져오기
		String pw = loginServiceInt.selectFive(loginVO);

		// 로그인 성공
		if (nickName != null) {
//			session.setAttribute("no", no);
			session.setAttribute("email", loginVO.getEmail()); // 접속자의 비밀번호 세션에 저장
			session.setAttribute("pw", pw); // 접속자의 비밀번호 세션에 저장
			session.setAttribute("nickname", nickName); // 접속자의 비밀번호 세션에 저장
			session.setAttribute("photo", photo); // 접속자의 비밀번호 세션에 저장
			return "/home";

		// 로그인 실패
		} else {
			
			response.setContentType("text/html; charset=UTF-8");
			
			PrintWriter out = response.getWriter();
			
			out.println("<script>alert('아이디 또는 비밀번호를 다시 확인해주세요!'); </script>");
			
			out.flush();
			
			return "/login/main";
		}
	}

	// 로그아웃 - (실행)
	@RequestMapping("/logout")
	public String logout(HttpSession session) {

		session.invalidate();

		return "redirect:/";
	}
	
	// 로그아웃  - (실행)
	@RequestMapping("/logoutMemberList")
	public String logoutMemberList(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/memberList/main";
		
	}

}
