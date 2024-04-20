package com.studycafe.www.SignUp.Service;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.studycafe.www.SignUp.Dao.SignUpDaoInt;
import com.studycafe.www.SignUp.VO.KakaoSignUpVO;
import com.studycafe.www.SignUp.VO.SignUpVO;

@Service
public class SignUpServiceImp implements SignUpServiceInt {

	@Autowired
	SignUpDaoInt signUpDaoInt;

	// 회원가입 페이지 OK - (페이지)
	@Transactional
	public void create(SignUpVO signUpVO, HttpServletRequest request) throws Exception {
		String imgName = "";
		String uploadUri = "/uploadFile/memberPhoto";
		String dir = request.getSession().getServletContext().getRealPath(uploadUri);

		System.out.println(dir);

		if (!signUpVO.getPhotoFile().isEmpty()) {

			imgName = signUpVO.getEmail() + "_" + signUpVO.getPhotoFile().getOriginalFilename();

			signUpVO.getPhotoFile().transferTo(new File(dir, imgName));

			signUpVO.setPhoto(imgName);
		}

		int result = signUpDaoInt.create(signUpVO);

		if (result == 0) {
			System.out.println("Join Fail!!");
		} else {
			System.out.println("Join Success!!");
		}
	}

	// 카카오 회원가입 (실행)
	@Override
	public int kakaoCreate(KakaoSignUpVO kakaoSignUpVO) {

		int result = signUpDaoInt.kakaoCreate(kakaoSignUpVO);

		return result;

	}

}
