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
	MypageDaoInt mypageDaoInt;

	// 마이페이지 - (페이지)
	@Override
	public MypageVO selectOne(String email) {
		return mypageDaoInt.selectOne(email);
	}

	// 마이페이지 수정 - (실행)
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
		return mypageDaoInt.update(mypageVO);
	}
	
	// 마이페이지 탈퇴 - (실행)
	@Override
	public int delete(MypageVO mypageVO) {
		return mypageDaoInt.delete(mypageVO);
	}
	
	// 마이페이지 탈퇴 [아이디,패스워드] - (실행)
	@Override
	public String selectOneCheck(MypageVO mypageVO) {
		return mypageDaoInt.selectOneCheck(mypageVO);
	}

}
