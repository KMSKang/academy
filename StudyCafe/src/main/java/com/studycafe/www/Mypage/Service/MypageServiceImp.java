package com.studycafe.www.Mypage.Service;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studycafe.www.Mypage.Dao.MypageDaoInt;
import com.studycafe.www.Mypage.VO.MypageVO;

@Service
public class MypageServiceImp implements MypageServiceInt {

	@Autowired
	MypageDaoInt dao;

	// 마이페이지 (페이지)
	public MypageVO selectOne(int no) {
		return dao.selectOne(no);
	}

	// 마이페이지 수정 (실행)
	@Override
	public int update(MypageVO mypageVO, HttpServletRequest request) throws Exception {
		
		String imgName = "";
		String uploadUri = "/uploadFile/memberPhoto";
		String dir = request.getSession().getServletContext().getRealPath(uploadUri);

		if (!mypageVO.getPhotoFile().isEmpty()) {

			imgName = mypageVO.getEmail() + "_" + mypageVO.getPhotoFile().getOriginalFilename();

			mypageVO.getPhotoFile().transferTo(new File(dir, imgName));

			mypageVO.setPhoto(imgName);
		}
		return dao.update(mypageVO);
	}

}
