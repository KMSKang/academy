package com.studycafe.www.MemberList.VO;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MemberListVO {

	private int no; // 번호
	private String email; // 이메일
	private String pw; // 패스워드
	private String nickname; // 닉네임
	private String photo; // 사진
	private MultipartFile photoFile; // 사진 업로드
	private String date; // 날짜
	
}
