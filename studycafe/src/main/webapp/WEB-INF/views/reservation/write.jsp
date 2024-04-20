<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#roomPhoto input::placeholder {
	text-align: center;
}
</style>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap-theme.css" />

</head>
<body>

	<div>
		<jsp:include page="/WEB-INF/views/category/userCategory.jsp"
			flush="false" />
	</div>



	<div class="container" style="width: 700px">
		<div class="row">



			<div id="carousel-example-generic" class="carousel slide"
				data-ride="carousel">

				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0"
						class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					<li data-target="#carousel-example-generic" data-slide-to="3"></li>
					<li data-target="#carousel-example-generic" data-slide-to="4"></li>
					<li data-target="#carousel-example-generic" data-slide-to="5"></li>
					<li data-target="#carousel-example-generic" data-slide-to="6"></li>
					<li data-target="#carousel-example-generic" data-slide-to="7"></li>
					<li data-target="#carousel-example-generic" data-slide-to="8"></li>
					<li data-target="#carousel-example-generic" data-slide-to="9"></li>
					<li data-target="#carousel-example-generic" data-slide-to="10"></li>
				</ol>

				<div class="carousel-inner" role="listbox">

					<!-- 이미지 1 -->
					<div class="item active">
						<img src="" alt="..."
							style="width: 700px; height: 500px; object-fit: cover;">
						<div class="carousel-caption">...</div>
					</div>

					<!-- 이미지 2 -->
					<div class="item">
						<img src="" alt="..."
							style="width: 700px; height: 500px; object-fit: cover;">
						<div class="carousel-caption">...</div>
					</div>

					<!-- 이미지 3 -->
					<div class="item">
						<img src="" alt="..."
							style="width: 700px; height: 500px; object-fit: cover;">
						<div class="carousel-caption">...</div>
					</div>

					<!-- 이미지 4 -->
					<div class="item">
						<img src="" alt="..."
							style="width: 700px; height: 500px; object-fit: cover;">
						<div class="carousel-caption">...</div>
					</div>

					<!-- 이미지 5 -->
					<div class="item">
						<img src="" alt="..."
							style="width: 700px; height: 500px; object-fit: cover;">
						<div class="carousel-caption">...</div>
					</div>

					<!-- 이미지 6 -->
					<div class="item">
						<img src="" alt="..."
							style="width: 700px; height: 500px; object-fit: cover;">
						<div class="carousel-caption">...</div>
					</div>

					<!-- 이미지 7 -->
					<div class="item">
						<img src="" alt="..."
							style="width: 700px; height: 500px; object-fit: cover;">
						<div class="carousel-caption">...</div>
					</div>

					<!-- 이미지 8 -->
					<div class="item">
						<img src="" alt="..."
							style="width: 700px; height: 500px; object-fit: cover;">
						<div class="carousel-caption">...</div>
					</div>

					<!-- 이미지 9 -->
					<div class="item">
						<img src="" alt="..."
							style="width: 700px; height: 500px; object-fit: cover;">
						<div class="carousel-caption">...</div>
					</div>

					<!-- 이미지 10 -->
					<div class="item">
						<img src="" alt="..."
							style="width: 700px; height: 500px; object-fit: cover;">
						<div class="carousel-caption">...</div>
					</div>
				</div>

				<a class="left carousel-control" href="#carousel-example-generic"
					role="button" data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#carousel-example-generic"
					role="button" data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>

			<form action="/reservation/writeOK" enctype="multipart/form-data"
				method="POST">

				<div class="panel" style="border: 1px solid black; margin-top: 3%;">

					<div class="panel-footer"
						style="background: black; border: black; color: #fff; font-weight: bold;">
						사진 <span class="label"
							style="cursor: pointer; border: 1px solid; margin-left: 1%;"></span>
					</div>

					<div class="panel-body" style="background: ghostwhite;">
						<div class="form-group">
							<span style="font-weight: bold;">1 :</span> <input type="file"
								name="photoFile1" style="display: inline;">

							<hr
								style="border-width: 1px 0px 0px 0px; border-style: solid; border-color: #808080; height: 1px;">

							<span style="font-weight: bold;">2 :</span> <input type="file"
								name="photoFile2" style="display: inline;">

							<hr
								style="border-width: 1px 0px 0px 0px; border-style: solid; border-color: #808080; height: 1px;">

							<span style="font-weight: bold;">3 :</span> <input type="file"
								name="photoFile3" style="display: inline;">

							<hr
								style="border-width: 1px 0px 0px 0px; border-style: solid; border-color: #808080; height: 1px;">

							<span style="font-weight: bold;">4 :</span> <input type="file"
								name="photoFile4" style="display: inline;">

							<hr
								style="border-width: 1px 0px 0px 0px; border-style: solid; border-color: #808080; height: 1px;">

							<span style="font-weight: bold;">5 :</span> <input type="file"
								name="photoFile5" style="display: inline;">

							<hr
								style="border-width: 1px 0px 0px 0px; border-style: solid; border-color: #808080; height: 1px;">

							<span style="font-weight: bold;">6 :</span> <input type="file"
								name="photoFile6" style="display: inline;">

							<hr
								style="border-width: 1px 0px 0px 0px; border-style: solid; border-color: #808080; height: 1px;">

							<span style="font-weight: bold;">7 :</span> <input type="file"
								name="photoFile7" style="display: inline;">

							<hr
								style="border-width: 1px 0px 0px 0px; border-style: solid; border-color: #808080; height: 1px;">

							<span style="font-weight: bold;">8 :</span> <input type="file"
								name="photoFile8" style="display: inline;">

							<hr
								style="border-width: 1px 0px 0px 0px; border-style: solid; border-color: #808080; height: 1px;">

							<span style="font-weight: bold;">9 :</span> <input type="file"
								name="photoFile9" style="display: inline;">

							<hr
								style="border-width: 1px 0px 0px 0px; border-style: solid; border-color: #808080; height: 1px;">

							<span style="font-weight: bold;">10 :</span> <input type="file"
								name="photoFile10" style="display: inline;">

							<hr
								style="border-width: 1px 0px 0px 0px; border-style: solid; border-color: #808080; height: 1px;">
						</div>
					</div>

				</div>



				<div class="span4" style="margin-top: 5%;">

					<div class="panel" style="border: 1px solid black;">

						<div class="panel-footer"
							style="background: black; border: black; color: #fff; font-weight: bold;">상호명</div>

						<div class="panel-body" style="background: ghostwhite;">
							<input type="text" class="form-control" placeholder="상호명을 입력해주세요"
								name="name">
						</div>

					</div>

					<div class="panel" style="border: 1px solid black;">

						<div class="panel-footer"
							style="background: black; border: black; color: #fff; font-weight: bold;">주소</div>

						<div class="panel-body" style="background: ghostwhite;">
							<div class="form-group">
								<label for="text">동/읍/로</label> <input type="text"
									class="form-control" placeholder="동/읍/로 입력해주세요" name="position"
									style="margin-bottom: 3%;">
								<hr
									style="border-width: 1px 0px 0px 0px; border-style: solid; border-color: #808080; height: 1px;">
								<label for="text">상세주소</label> <input type="text"
									class="form-control" placeholder="상세주소를 입력해주세요"
									name="infoPosition">
							</div>
						</div>

					</div>

					<div class="panel" style="border: 1px solid black;">
						<div class="panel-footer"
							style="background: black; border: black; color: #fff; font-weight: bold;">전화번호</div>

						<div class="panel-body" style="background: ghostwhite;">
							<input type="text" class="form-control" placeholder="전화번호를 입력주세요"
								name="phoneNumber">
						</div>
					</div>

					<div class="panel" style="border: 1px solid black;">
						<div class="panel-footer"
							style="background: black; border: black; color: #fff; font-weight: bold;">영업시간</div>
						<div class="panel-body" style="background: ghostwhite;">

							<div class="form-group">
								<label for="text">평일</label> <input type="text"
									class="form-control" placeholder="영업시간을 입력해주세요"
									name="weekdayOperatingTime" style="margin-bottom: 3%;">
								<hr
									style="border-width: 1px 0px 0px 0px; border-style: solid; border-color: #808080; height: 1px;">
								<label for="text">주말</label> <input type="text"
									class="form-control" placeholder="영업시간을 입력해주세요"
									name="weekendOperatingTime" style="margin-bottom: 3%;">
								<hr
									style="border-width: 1px 0px 0px 0px; border-style: solid; border-color: #808080; height: 1px;">
								<label for="text">공휴일</label> <input type="text"
									class="form-control" placeholder="영업시간을 입력해주세요"
									name="holidayOperatingTime" style="margin-bottom: 3%;">
							</div>
						</div>
					</div>

					<div class="panel" style="border: 1px solid black;">
						<div class="panel-footer"
							style="background: black; border: black; color: #fff; font-weight: bold;">요금</div>
						<div class="panel-body" style="background: ghostwhite;">
							<div class="form-group">
								<label for="text">평일</label> <input type="text"
									class="form-control" placeholder="요금을 입력해주세요"
									name="weekdayPrice" style="margin-bottom: 3%;">
								<hr
									style="border-width: 1px 0px 0px 0px; border-style: solid; border-color: #808080; height: 1px;">
								<label for="text">주말</label> <input type="text"
									class="form-control" placeholder="요금을 입력해주세요"
									name="weekendPrice" style="margin-bottom: 3%;">
								<hr
									style="border-width: 1px 0px 0px 0px; border-style: solid; border-color: #808080; height: 1px;">
								<label for="text">공휴일</label> <input type="text"
									class="form-control" placeholder="요금을 입력해주세요"
									name="holidayPrice" style="margin-bottom: 3%;">
							</div>
						</div>
					</div>

					<div class="panel" style="border: 1px solid black;">
						<div class="panel-footer"
							style="background: black; border: black; color: #fff; font-weight: bold;">이용안내</div>
						<div class="panel-body" style="background: ghostwhite;">
							<div class="form-group">
								<label for="text">1.</label> <input type="text"
									class="form-control" placeholder="이용안내를 입력해주세요"
									name="informationUse1" style="margin-bottom: 3%;">
								<hr
									style="border-width: 1px 0px 0px 0px; border-style: solid; border-color: #808080; height: 1px;">
								<label for="text">2.</label> <input type="text"
									class="form-control" placeholder="이용안내를 입력해주세요"
									name="informationUse2" style="margin-bottom: 3%;">
								<hr
									style="border-width: 1px 0px 0px 0px; border-style: solid; border-color: #808080; height: 1px;">
								<label for="text">3.</label> <input type="text"
									class="form-control" placeholder="이용안내를 입력해주세요"
									name="informationUse3" style="margin-bottom: 3%;">
								<hr
									style="border-width: 1px 0px 0px 0px; border-style: solid; border-color: #808080; height: 1px;">
								<label for="text">4.</label> <input type="text"
									class="form-control" placeholder="이용안내를 입력해주세요"
									name="informationUse4" style="margin-bottom: 3%;">
								<hr
									style="border-width: 1px 0px 0px 0px; border-style: solid; border-color: #808080; height: 1px;">
								<label for="text">5.</label> <input type="text"
									class="form-control" placeholder="이용안내를 입력해주세요"
									name="informationUse5" style="margin-bottom: 3%;">
								<hr
									style="border-width: 1px 0px 0px 0px; border-style: solid; border-color: #808080; height: 1px;">
								<label for="text">6.</label> <input type="text"
									class="form-control" placeholder="이용안내를 입력해주세요"
									name="informationUse6" style="margin-bottom: 3%;">
								<hr
									style="border-width: 1px 0px 0px 0px; border-style: solid; border-color: #808080; height: 1px;">
								<label for="text">7.</label> <input type="text"
									class="form-control" placeholder="이용안내를 입력해주세요"
									name="informationUse7" style="margin-bottom: 3%;">
								<hr
									style="border-width: 1px 0px 0px 0px; border-style: solid; border-color: #808080; height: 1px;">
								<label for="text">8.</label> <input type="text"
									class="form-control" placeholder="이용안내를 입력해주세요"
									name="informationUse8" style="margin-bottom: 3%;">
								<hr
									style="border-width: 1px 0px 0px 0px; border-style: solid; border-color: #808080; height: 1px;">
								<label for="text">9.</label> <input type="text"
									class="form-control" placeholder="이용안내를 입력해주세요"
									name="informationUse9" style="margin-bottom: 3%;">
								<hr
									style="border-width: 1px 0px 0px 0px; border-style: solid; border-color: #808080; height: 1px;">
								<label for="text">10.</label> <input type="text"
									class="form-control" placeholder="이용안내를 입력해주세요"
									name="informationUse10" style="margin-bottom: 3%;">
							</div>
						</div>
					</div>
					
					<!-- 룸 사진 11 -->
					<div class="row" style="text-align: center;" id="roomPhoto">
						<div class="col-sm-6 col-md-4" style="width: 50%;">
							<div class="thumbnail">
								<img src="/resources/img/reservation/5.png" alt="..."
									style="width: 331px; height: 301px; margin-bottom: -30px;">
								<div class="caption">
									<label for="text">룸명</label>
									<input type="text" class="form-control" placeholder="룸명을 입력해주세요" name="roomName11" style="margin-bottom: 3%;">
										<input class="btn btn-default" type="button" value="파일 선택" id="button11" style=" margin-top: 5%;">
										<input type="file" style="visibility: hidden;" id="photoFile11" name="photoFile11">
								</div>
							</div>
						</div>
						<!-- 룸 사진 12 -->
						<div class="col-sm-6 col-md-4" style="width: 50%;">
							<div class="thumbnail">
								<img src="/resources/img/reservation/5.png" alt="..."
									style="width: 331px; height: 301px; margin-bottom: -30px;">
								<div class="caption">
									<label for="text">룸명</label>
									<input type="text" class="form-control" placeholder="룸명을 입력해주세요" name="roomName12" style="margin-bottom: 3%;">
										<input class="btn btn-default" type="button" value="파일 선택" id="button12" style=" margin-top: 5%;">
										<input type="file" style="visibility: hidden;" id="photoFile12" name="photoFile12">
								</div>
							</div>
						</div>
						
						<!-- 룸 사진 13 -->
						<div class="col-sm-6 col-md-4" style="width: 50%;">
							<div class="thumbnail">
								<img src="/resources/img/reservation/5.png" alt="..."
									style="width: 331px; height: 301px; margin-bottom: -30px;">
								<div class="caption">
									<label for="text">룸명</label>
									<input type="text" class="form-control" placeholder="룸명을 입력해주세요" name="roomName13" style="margin-bottom: 3%;">
										<input class="btn btn-default" type="button" value="파일 선택" id="button13" style=" margin-top: 5%;">
										<input type="file" style="visibility: hidden;" id="photoFile13" name="photoFile13">
								</div>
							</div>
						</div>
						<!-- 룸 사진 14 -->
						<div class="col-sm-6 col-md-4" style="width: 50%;">
							<div class="thumbnail">
								<img src="/resources/img/reservation/5.png" alt="..."
									style="width: 331px; height: 301px; margin-bottom: -30px;">
								<div class="caption">
									<label for="text">룸명</label>
									<input type="text" class="form-control" placeholder="룸명을 입력해주세요" name="roomName14" style="margin-bottom: 3%;">
										<input class="btn btn-default" type="button" value="파일 선택" id="button14" style=" margin-top: 5%;">
										<input type="file" style="visibility: hidden;" id="photoFile14" name="photoFile14">
								</div>
							</div>
						</div>
						<!-- 룸 사진 15 -->
						<div class="col-sm-6 col-md-4" style="width: 50%;">
							<div class="thumbnail">
								<img src="/resources/img/reservation/5.png" alt="..."
									style="width: 331px; height: 301px; margin-bottom: -30px;">
								<div class="caption">
									<label for="text">룸명</label>
									<input type="text" class="form-control" placeholder="룸명을 입력해주세요" name="roomName15" style="margin-bottom: 3%;">
										<input class="btn btn-default" type="button" value="파일 선택" id="button15" style=" margin-top: 5%;">
										<input type="file" style="visibility: hidden;" id="photoFile15" name="photoFile15">
								</div>
							</div>
						</div>
						<!-- 룸 사진 16 -->
						<div class="col-sm-6 col-md-4" style="width: 50%;">
							<div class="thumbnail">
								<img src="/resources/img/reservation/5.png" alt="..."
									style="width: 331px; height: 301px; margin-bottom: -30px;">
								<div class="caption">
									<label for="text">룸명</label>
									<input type="text" class="form-control" placeholder="룸명을 입력해주세요" name="roomName16" style="margin-bottom: 3%;">
										<input class="btn btn-default" type="button" value="파일 선택" id="button16" style=" margin-top: 5%;">
										<input type="file" style="visibility: hidden;" id="photoFile16" name="photoFile16">
								</div>
							</div>
						</div>
						<!-- 룸 사진 17 -->
						<div class="col-sm-6 col-md-4" style="width: 50%;">
							<div class="thumbnail">
								<img src="/resources/img/reservation/5.png" alt="..."
									style="width: 331px; height: 301px; margin-bottom: -30px;">
								<div class="caption">
									<label for="text">룸명</label>
									<input type="text" class="form-control" placeholder="룸명을 입력해주세요" name="roomName17" style="margin-bottom: 3%;">
										<input class="btn btn-default" type="button" value="파일 선택" id="button17" style=" margin-top: 5%;">
										<input type="file" style="visibility: hidden;" id="photoFile17" name="photoFile17">
								</div>
							</div>
						</div>
						<!-- 룸 사진 18 -->
						<div class="col-sm-6 col-md-4" style="width: 50%;">
							<div class="thumbnail">
								<img src="/resources/img/reservation/5.png" alt="..."
									style="width: 331px; height: 301px; margin-bottom: -30px;">
								<div class="caption">
									<label for="text">룸명</label>
									<input type="text" class="form-control" placeholder="룸명을 입력해주세요" name="roomName18" style="margin-bottom: 3%;">
										<input class="btn btn-default" type="button" value="파일 선택" id="button18" style=" margin-top: 5%;">
										<input type="file" style="visibility: hidden;" id="photoFile18" name="photoFile18">
								</div>
							</div>
						</div>
						<!-- 룸 19 -->
						<div class="col-sm-6 col-md-4" style="width: 50%;">
							<div class="thumbnail">
								<img src="/resources/img/reservation/5.png" alt="..."
									style="width: 331px; height: 301px; margin-bottom: -30px;">
								<div class="caption">
									<label for="text">룸명</label>
									<input type="text" class="form-control" placeholder="룸명을 입력해주세요" name="roomName19" style="margin-bottom: 3%;">
										<input class="btn btn-default" type="button" value="파일 선택" id="button19" style=" margin-top: 5%;">
										<input type="file" style="visibility: hidden;" id="photoFile19" name="photoFile19">
								</div>
							</div>
						</div>
						<!-- 룸 20 -->
						<div class="col-sm-6 col-md-4" style="width: 50%;">
							<div class="thumbnail">
								<img src="/resources/img/reservation/5.png" alt="..."
									style="width: 331px; height: 301px; margin-bottom: -30px;">
								<div class="caption">
									<label for="text">룸명</label>
									<input type="text" class="form-control" placeholder="룸명을 입력해주세요" name="roomName20" style="margin-bottom: 3%;">
										<input class="btn btn-default" type="button" value="파일 선택" id="button20" style=" margin-top: 5%;">
										<input type="file" style="visibility: hidden;" id="photoFile20" name="photoFile20">
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-5"></div>
					<div class="col-md-7">
						<button type="submit" class="btn btn-default btn-sm"
							style="margin-bottom: 5%;">등록</button>
					</div>
				</div>

			</form>













<script>
$(document).ready(function(){
	$("#button11").click(function(){
		$("#photoFile11").click();
	});
});

$(document).ready(function(){
	$("#button12").click(function(){
		$("#photoFile12").click();
	});
});

$(document).ready(function(){
	$("#button13").click(function(){
		$("#photoFile13").click();
	});
});

$(document).ready(function(){
	$("#button14").click(function(){
		$("#photoFile14").click();
	});
});

$(document).ready(function(){
	$("#button15").click(function(){
		$("#photoFile15").click();
	});
});

$(document).ready(function(){
	$("#button16").click(function(){
		$("#photoFile16").click();
	});
});

$(document).ready(function(){
	$("#button17").click(function(){
		$("#photoFile17").click();
	});
});

$(document).ready(function(){
	$("#button18").click(function(){
		$("#photoFile18").click();
	});
});

$(document).ready(function(){
	$("#button19").click(function(){
		$("#photoFile19").click();
	});
});

$(document).ready(function(){
	$("#button20").click(function(){
		$("#photoFile20").click();
	});
});
</script>





		</div>
	</div>
</body>
</html>
<!-- <img src="/resources/img/event/event1.jpg" class="img-responsive" style="width: 650px;"> -->