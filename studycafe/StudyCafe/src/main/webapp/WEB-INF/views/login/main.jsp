<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 카카오계정으로 로그인 -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

</head>
<body>

	<div>
		<jsp:include page="/WEB-INF/views/category/userCategory.jsp"
			flush="false" />
	</div>



	<form action="/loginOK" style="margin: 0 auto; width: 400px;"
		enctype="multipart/form-data" method="POST" name=form_name>

		<div>
			<p style="font-size: 20px; font-weight: 900; margin-left: 20px;">로그인</p>
			<hr style="border: 0; height: 3px; background: #ccc;">
		</div>

		<div class="form-group">
			<label for="email">이메일</label> <input type="email"
				class="form-control" placeholder="이메일을 입력주세요" name="email">
		</div>

		<div class="form-group">
			<label for="password">비밀번호</label> <input type="password"
				class="form-control" id="content" placeholder="비밀번호를 입력주세요"
				name="pw">
		</div>

		<div class="form-group" style="margin-left: 5%;">
			<button type="submit" class="btn btn-default btn-sm"
				style="display: block; float: left; margin-left: 150px; margin-top: 20px; margin-bottom: 30px;">로그인</button>
		</div>

		<div class="form-group">
			<!-- 			<a id="kakao-login-btn"></a> <a
				href="http://developers.kakao.com/logout"></a> -->
			<a id="custom-login-btn" href="javascript:loginWithKakao()"> <img
				src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg"
				width="300" /></a>
		</div>

	</form>

	<script type='text/javascript'>
		//<![CDATA[
		// 사용할 앱의 JavaScript 키를 설정해 주세요.
		Kakao.init('cc84e86d65eee9754a6074c7329a9302');
		// 카카오 로그인 버튼을 생성합니다.
		function loginWithKakao() {
      // 로그인 창을 띄웁니다.
	      Kakao.Auth.loginForm({
	        success: function(authObj) {
	        	Kakao.API.request({

					url : '/v1/user/me',

					success : function(res) {

						/* alert(JSON.stringify(res)); //<---- kakao.api.request 에서 불러온 결과값 json형태로 출력 */
						
						console.log(res)//<---- 회원의 모든 정보

						// res.properties.nickname으로도 접근 가능 )

						console.log(authObj.access_token);//<---- 콘솔 로그에 토큰값 출력
						
						$.ajax({ // ajax
							url : 'http://localhost/kakaoWrite', // 요청 보내기
							method : 'POST',
							data : { // Controller로 보낼 데이터 (Favorite에 있는 형식으로 보내야돼)
								email : res.id,
								name : res.properties['nickname'],
								photo : res.properties['profile_image']
							}
						}).done(() => {
							
							$.ajax({ // ajax
								url : 'http://localhost/kakaoLogin', // 요청 보내기
								method : 'POST',
								data : { // Controller로 보낼 데이터 (Favorite에 있는 형식으로 보내야돼)
									email : res.id,
									name : res.properties['nickname'],
									photo : res.properties['profile_image']
								}
							}).done((data) => {
								if(data=="success") location.href="http://localhost/"
								else alert("로그인 실패")
							})
							
						})
						
						
					}

				})
	        },
	        fail: function(err) {
	          alert(JSON.stringify(err));
	        }
	      });
	    };
	   
		//]]>
	</script>

</body>
</html>