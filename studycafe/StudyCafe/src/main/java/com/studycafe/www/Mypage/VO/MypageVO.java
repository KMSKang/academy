package com.studycafe.www.Mypage.VO;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MypageVO {
	
	private int no;
	private String email;
	private String nickname;
	private String pw;
	private String photo;
	private MultipartFile photoFile;
}
