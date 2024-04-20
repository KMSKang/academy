package com.studycafe.www.Notice.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.studycafe.www.Notice.Service.NoticeServiceInt;
import com.studycafe.www.Notice.VO.NoticeVO;
import com.studycafe.www.Notice.VO.Pagination;

@Controller
public class NoticeController {

	@Autowired
	NoticeServiceInt noticeServiceInt;

	// 공지사항 메인 페이지 - (페이지)
	@RequestMapping("/notice/main")
	public String noticeMain(Model model, @RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "1") int range) throws Exception {

		// 전체 게시글 개수
		int listCnt = noticeServiceInt.selectListCnt();

		// Pagination 객체 생성
		Pagination pagination = new Pagination();
		pagination.pageInfo(page, range, listCnt);
		
		// 공지사항 페이징처리
		model.addAttribute("pagination", pagination);
		
		// 공지사항 리스트
		model.addAttribute("noticeList", noticeServiceInt.selectList(pagination));

		return "/notice/main";
	}

	// 공지사항 작성 페이지 - (페이지)
	@RequestMapping("/notice/write")
	public String noticeWrite(NoticeVO noticeVO, HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		HttpSession session = request.getSession();

		// 만약 세션이 없으면?

		if (session.getAttribute("nickname") == null) {

			response.setContentType("text/html; charset=UTF-8");

			PrintWriter out = response.getWriter();

			out.println("<script>alert('로그인이 필요합니다!');</script>");

			out.flush();

			return "/login/main";

			// 만약 세션이 있으면?

		} else {

			String nickname = "관리자";

			// 만약 세션의 값이 "관리자" OK

			if (nickname.equals(session.getAttribute("nickname"))) {

				return "/notice/write";

				// 만약 세션의 값이 "관리자" NO

			} else {

				response.setContentType("text/html; charset=UTF-8");

				PrintWriter out = response.getWriter();

				out.println("<script>alert('권한이 없습니다!\\n관리자 아이디로 접속해주세요!'); history.go(-1);</script>");

				out.flush();

			}

		}
		return null;

	}

	// 공지사항 작성 페이지 - (실행)
	@RequestMapping("/notice/writeOK")
	public String noticeWriteOK(NoticeVO noticeVO, HttpServletRequest request) {

		HttpSession session = request.getSession();

		noticeVO.setNickname(session.getAttribute("nickname").toString());

		noticeServiceInt.create(noticeVO);

		return "redirect:/notice/main";
	}

}
