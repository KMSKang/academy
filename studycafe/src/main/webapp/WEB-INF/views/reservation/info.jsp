<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<!-- 부트스트랩 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap-theme.css" />


<!-- dateFicker -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/datepicker/bootstrap-datetimepicker-standalone.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/datepicker/bootstrap-datetimepicker.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/datepicker/bootstrap-datetimepicker.min.css" />


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

				<!-- 사진 개수 추가 및 삭제 -->
				<ol class="carousel-indicators">
					<c:if test="${reservationOne.photo1 != Null}">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
					</c:if>
					<c:if test="${reservationOne.photo2 != Null}">
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					</c:if>
					<c:if test="${reservationOne.photo3 != Null}">
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</c:if>
					<c:if test="${reservationOne.photo4 != Null}">
						<li data-target="#carousel-example-generic" data-slide-to="3"></li>
					</c:if>
					<c:if test="${reservationOne.photo5 != Null}">
						<li data-target="#carousel-example-generic" data-slide-to="4"></li>
					</c:if>
					<c:if test="${reservationOne.photo6 != Null}">
						<li data-target="#carousel-example-generic" data-slide-to="5"></li>
					</c:if>
					<c:if test="${reservationOne.photo7 != Null}">
						<li data-target="#carousel-example-generic" data-slide-to="6"></li>
					</c:if>
					<c:if test="${reservationOne.photo8 != Null}">
						<li data-target="#carousel-example-generic" data-slide-to="7"></li>
					</c:if>
					<c:if test="${reservationOne.photo9 != Null}">
						<li data-target="#carousel-example-generic" data-slide-to="8"></li>
					</c:if>
					<c:if test="${reservationOne.photo10 != Null}">
						<li data-target="#carousel-example-generic" data-slide-to="9"></li>
					</c:if>
				</ol>

				<!-- 사진 크기 조절 및 종류 -->
				<div class="carousel-inner" role="listbox">
					<c:if test="${reservationOne.photo1 != Null}">
						<div class="item active">
							<img src="/uploadFile/reservationPhoto/${reservationOne.photo1}"
								alt="..."
								style="width: 700px; height: 500px; object-fit: cover;">
							<div class="carousel-caption">...</div>
						</div>
					</c:if>
					<c:if test="${reservationOne.photo2 != Null}">
						<div class="item">
							<img src="/uploadFile/reservationPhoto/${reservationOne.photo2}"
								alt="..."
								style="width: 700px; height: 500px; object-fit: cover;">
							<div class="carousel-caption">...</div>
						</div>
					</c:if>
					<c:if test="${reservationOne.photo3 != Null}">
						<div class="item">
							<img src="/uploadFile/reservationPhoto/${reservationOne.photo3}"
								alt="..."
								style="width: 700px; height: 500px; object-fit: cover;">
							<div class="carousel-caption">...</div>
						</div>
					</c:if>

					<c:if test="${reservationOne.photo4 != Null}">
						<div class="item">
							<img src="/uploadFile/reservationPhoto/${reservationOne.photo4}"
								alt="..."
								style="width: 700px; height: 500px; object-fit: cover;">
							<div class="carousel-caption">...</div>
						</div>
					</c:if>

					<c:if test="${reservationOne.photo5 != Null}">
						<div class="item">
							<img src="/uploadFile/reservationPhoto/${reservationOne.photo5}"
								alt="..."
								style="width: 700px; height: 500px; object-fit: cover;">
							<div class="carousel-caption">...</div>
						</div>
					</c:if>

					<c:if test="${reservationOne.photo6 != Null}">
						<div class="item">
							<img src="/uploadFile/reservationPhoto/${reservationOne.photo6}"
								alt="..."
								style="width: 700px; height: 500px; object-fit: cover;">
							<div class="carousel-caption">...</div>
						</div>
					</c:if>

					<c:if test="${reservationOne.photo7 != Null}">
						<div class="item">
							<img src="/uploadFile/reservationPhoto/${reservationOne.photo7}"
								alt="..."
								style="width: 700px; height: 500px; object-fit: cover;">
							<div class="carousel-caption">...</div>
						</div>
					</c:if>

					<c:if test="${reservationOne.photo8 != Null}">
						<div class="item">
							<img src="/uploadFile/reservationPhoto/${reservationOne.photo8}"
								alt="..."
								style="width: 700px; height: 500px; object-fit: cover;">
							<div class="carousel-caption">...</div>
						</div>
					</c:if>

					<c:if test="${reservationOne.photo9 != Null}">
						<div class="item">
							<img src="/uploadFile/reservationPhoto/${reservationOne.photo9}"
								alt="..."
								style="width: 700px; height: 500px; object-fit: cover;">
							<div class="carousel-caption">...</div>
						</div>
					</c:if>

					<c:if test="${reservationOne.photo10 != Null}">
						<div class="item">
							<img src="/uploadFile/reservationPhoto/${reservationOne.photo10}"
								alt="..."
								style="width: 700px; height: 500px; object-fit: cover;">
							<div class="carousel-caption">...</div>
						</div>
					</c:if>
				</div>

				<!-- Controls -->
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



			<div class="span4" style="margin-top: 5%;">

				<hr style="border: 1px solid silver;">

				<p style="font-size: 30px; text-align: center;">열공 스터디카페</p>

				<hr style="border: 1px solid silver;">

				<!-- 주소 -->
				<div class="panel" style="border: 1px solid black;">
					<div class="panel-footer"
						style="background: black; border: black; color: #fff; font-weight: bold;">
						주소 <span class="label"
							style="cursor: pointer; border: 1px solid; margin-left: 1%;">주소
							복사</span> <span class="label"
							style="cursor: pointer; border: 1px solid;">지도 보기</span>
					</div>
					<div class="panel-body" style="background: ghostwhite;">
						<p>${reservationOne.position}</p>
						<p>${reservationOne.infoPosition}</p>
					</div>
				</div>

				<!-- 전화번호 -->
				<div class="panel" style="border: 1px solid black;">
					<div class="panel-footer"
						style="background: black; border: black; color: #fff; font-weight: bold;">
						전화번호 <span class="label"
							style="cursor: pointer; border: 1px solid; margin-left: 1%;">전화
							걸기</span>
					</div>
					<div class="panel-body" style="background: ghostwhite;">031-554-5967</div>
				</div>

				<!-- 영업시간 -->
				<div class="panel" style="border: 1px solid black;">
					<div class="panel-footer"
						style="background: black; border: black; color: #fff; font-weight: bold;">영업시간</div>
					<div class="panel-body" style="background: ghostwhite;">
						<p>(평일) - ${reservationOne.weekdayOperatingTime}</p>
						<p>(주말) - ${reservationOne.weekendOperatingTime}</p>
						<p>(공휴일) - ${reservationOne.holidayOperatingTime}</p>
					</div>
				</div>

				<!-- 요금 -->
				<div class="panel" style="border: 1px solid black;">
					<div class="panel-footer"
						style="background: black; border: black; color: #fff; font-weight: bold;">요금(시간당)</div>
					<div class="panel-body" style="background: ghostwhite;">
						<p>(평일) - ￦${reservationOne.weekdayPrice}</p>
						<p>(주말) - ￦${reservationOne.weekendPrice}</p>
						<p>(공휴일) - ￦${reservationOne.holidayPrice}</p>
					</div>
				</div>

				<!-- 이용안내 -->
				<div class="panel" style="border: 1px solid black;">
					<div class="panel-footer"
						style="background: black; border: black; color: #fff; font-weight: bold;">이용안내</div>
					<div class="panel-body" style="background: ghostwhite;">

						<c:if test="${reservationOne.informationUse1.length()!=0}">
							<div class="spanNumber" style="margin-bottom: 10px;">
								<span>1)</span><span class="spanContent"
									style="margin-left: 8px;">${reservationOne.informationUse1}</span>
							</div>
						</c:if>
						<c:if test="${reservationOne.informationUse2.length()!=0}">
							<div class="spanNumber" style="margin-bottom: 10px;">
								<span>2)</span><span class="spanContent"
									style="margin-left: 8px;">${reservationOne.informationUse2}</span>
							</div>
						</c:if>
						<c:if test="${reservationOne.informationUse3.length()!=0}">
							<div class="spanNumber" style="margin-bottom: 10px;">
								<span>3)</span><span class="spanContent"
									style="margin-left: 8px;">${reservationOne.informationUse3}</span>
							</div>
						</c:if>
						<c:if test="${reservationOne.informationUse4.length()!=0}">
							<div class="spanNumber" style="margin-bottom: 10px;">
								<span>4)</span><span class="spanContent"
									style="margin-left: 8px;">${reservationOne.informationUse4}</span>
							</div>
						</c:if>
						<c:if test="${reservationOne.informationUse5.length()!=0}">
							<div class="spanNumber" style="margin-bottom: 10px;">
								<span>5)</span><span class="spanContent"
									style="margin-left: 8px;">${reservationOne.informationUse5}</span>
							</div>
						</c:if>
						<c:if test="${reservationOne.informationUse6.length()!=0}">
							<div class="spanNumber" style="margin-bottom: 10px;">
								<span>6)</span><span class="spanContent"
									style="margin-left: 8px;">${reservationOne.informationUse6}</span>
							</div>
						</c:if>
						<c:if test="${reservationOne.informationUse7.length()!=0}">
							<div class="spanNumber" style="margin-bottom: 10px;">
								<span>7)</span><span class="spanContent"
									style="margin-left: 8px;">${reservationOne.informationUse7}</span>
							</div>
						</c:if>
						<c:if test="${reservationOne.informationUse8.length()!=0}">
							<div class="spanNumber" style="margin-bottom: 10px;">
								<span>8)</span><span class="spanContent"
									style="margin-left: 8px;">${reservationOne.informationUse8}</span>
							</div>
						</c:if>
						<c:if test="${reservationOne.informationUse9.length()!=0}">
							<div class="spanNumber" style="margin-bottom: 10px;">
								<span>9)</span><span class="spanContent"
									style="margin-left: 8px;">${reservationOne.informationUse9}</span>
							</div>
						</c:if>
						<c:if test="${reservationOne.informationUse10.length()!=0}">
							<div class="spanNumber" style="margin-bottom: 10px;">
								<span>10)</span><span class="spanContent"
									style="margin-left: 8px;">${reservationOne.informationUse10}</span>
							</div>
						</c:if>
					</div>
				</div>

				<!-- 댓글 -->
				<div class="panel" style="border: 1px solid black;">
					<div class="panel-footer"
						style="background: black; border: black; color: #fff; font-weight: bold;">리뷰(전체)</div>
					<div class="panel-body" style="background: ghostwhite;">
						<div class="media"
							style="border-top: 1px dotted silver; border-bottom: 1px dotted silver;">
							<div class="media-left">
								<a href="#"> <img class="media-object img-circle"
									src="/resources/img/reservation/doramong.png" alt="..."
									style="width: 100px; height: 100px;">
								</a>
							</div>
							<div class="media-body">
								<h4 class="media-heading" style="font-weight: bold;">
									도라에몽<span class="label label-default"
										style="background: black;"><a href="#Redirect"
										style="color: white;">답글</a></span>
								</h4>
								<p>3년째 이용중 ㅇㅇ좋음</p>
							</div>
						</div>

						<div class="media"
							style="border-top: 1px dotted silver; border-bottom: 1px dotted silver;">
							<div class="media-left">
								<a href="#"> <img class="media-object img-circle"
									src="/resources/img/reservation/bonobono.jpg" alt="..."
									style="width: 100px; height: 100px;">
								</a>
							</div>
							<div class="media-body">
								<h4 class="media-heading" style="font-weight: bold;">
									보노보노<span class="label label-default"
										style="background: black;"><a href="#Redirect"
										style="color: white;">답글</a></span>
								</h4>
								<p>시설도 깨끗하고 방음도 잘되고 넓고 티비도 크고 회의했는데 너무 좋았어요</p>
								<p>시설도 깨끗하고 방음도 잘되고 넓고 티비도 크고 회의했는데 너무 좋았어요</p>
								<p>시설도 깨끗하고 방음도 잘되고 넓고 티비도 크고 회의했는데 너무 좋았어요</p>

								<div class="media"
									style="border-top: 1px dotted silver; border-bottom: 1px dotted silver;">
									<div class="media-left">
										<a href="#"> <img class="media-object img-circle"
											src="/resources/img/reservation/porori.jpg" alt="..."
											style="width: 100px; height: 100px;">
										</a>
									</div>
									<div class="media-body">
										<h4 class="media-heading" style="font-weight: bold;">포로리</h4>
										<p>ㅇㅈㅆㅇㅈ</p>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>

				<!-- 스터디룸 사진 -->
				<div class="row">
					<div class="col-sm-6 col-md-4" style="width: 50%;">
						<div class="thumbnail" style="text-align: center;">
							<c:if test="${reservationOne.photo11.length()!=0}">
								<img src="/uploadFile/reservationPhoto/${reservationOne.photo11}" alt="..." style="width: 331px; height: 301px;">
							</c:if>
							<div class="caption">
								<h3>스터디룸A</h3>
								<a href="/reservation/roomInfo.do?no=${reservationOne.no}&roomName11=${reservationOne.roomName11}" class="btn btn-default" role="button" style="margin-top: 10px; margin-bottom: 10px;">예약하기</a>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4" style="width: 50%;">
						<div class="thumbnail" style="text-align: center;">
							<c:if test="${reservationOne.photo12.length()!=0}">
								<img
									src="/uploadFile/reservationPhoto/${reservationOne.photo12}"
									alt="..." style="width: 331px; height: 301px;">
							</c:if>
							<div class="caption">
								<h3>스터디룸B</h3>
								<a href="/reservation/roomInfo.do?no=${reservationOne.no}&roomName12=${reservationOne.roomName12}" class="btn btn-default" role="button" style="margin-top: 10px; margin-bottom: 10px;">예약하기</a>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4" style="width: 50%;">
						<div class="thumbnail" style="text-align: center;">
							<c:if test="${reservationOne.photo13.length()!=0}">
								<img
									src="/uploadFile/reservationPhoto/${reservationOne.photo13}"
									alt="..." style="width: 331px; height: 301px;">
							</c:if>
							<div class="caption">
								<h3>스터디룸C</h3>
								<a href="/reservation/roomInfo.do?no=${reservationOne.no}&roomName13=${reservationOne.roomName13}" class="btn btn-default" role="button" style="margin-top: 10px; margin-bottom: 10px;">예약하기</a>
							</div>
						</div>
					</div>

					<c:if test="${reservationOne.photo14 != Null}">
						<div class="col-sm-6 col-md-4" style="width: 50%;">
							<div class="thumbnail" style="text-align: center;">
								<img
									src="/uploadFile/reservationPhoto/${reservationOne.photo14}"
									alt="..." style="width: 331px; height: 301px;">
								<div class="caption">
									<h3>스터디룸D</h3>
									<a href="/reservation/roomInfo.do?no=${reservationOne.no}&roomName14=${reservationOne.roomName14}" class="btn btn-default" role="button" style="margin-top: 10px; margin-bottom: 10px;">예약하기</a>
								</div>
							</div>
						</div>
					</c:if>

					<c:if test="${reservationOne.photo15 != Null}">
						<div class="col-sm-6 col-md-4" style="width: 50%;">
							<div class="thumbnail" style="text-align: center;">
								<img
									src="/uploadFile/reservationPhoto/${reservationOne.photo15}"
									alt="..." style="width: 331px; height: 301px;">
								<div class="caption">
									<h3>스터디룸E</h3>
									<a href="/reservation/roomInfo.do?no=${reservationOne.no}&roomName15=${reservationOne.roomName15}" class="btn btn-default" role="button" style="margin-top: 10px; margin-bottom: 10px;">예약하기</a>
								</div>
							</div>
						</div>
					</c:if>
					<c:if test="${reservationOne.photo16 != Null}">
						<div class="col-sm-6 col-md-4" style="width: 50%;">
							<div class="thumbnail" style="text-align: center;">
								<img
									src="/uploadFile/reservationPhoto/${reservationOne.photo16}"
									alt="..." style="width: 331px; height: 301px;">
								<div class="caption">
									<h3>스터디룸F</h3>
									<a href="/reservation/roomInfo.do?no=${reservationOne.no}&roomName16=${reservationOne.roomName16}" class="btn btn-default" role="button" style="margin-top: 10px; margin-bottom: 10px;">예약하기</a>
								</div>
							</div>
						</div>
					</c:if>
					<c:if test="${reservationOne.photo17 != Null}">
						<div class="col-sm-6 col-md-4" style="width: 50%;">
							<div class="thumbnail" style="text-align: center;">
								<img
									src="/uploadFile/reservationPhoto/${reservationOne.photo17}"
									alt="..." style="width: 331px; height: 301px;">
								<div class="caption">
									<h3>스터디룸G</h3>
									<a href="/reservation/roomInfo.do?no=${reservationOne.no}&roomName17=${reservationOne.roomName17}" class="btn btn-default" role="button" style="margin-top: 10px; margin-bottom: 10px;">예약하기</a>
								</div>
							</div>
						</div>
					</c:if>
					<c:if test="${reservationOne.photo18 != Null}">
						<div class="col-sm-6 col-md-4" style="width: 50%;">
							<div class="thumbnail" style="text-align: center;">
								<img
									src="/uploadFile/reservationPhoto/${reservationOne.photo18}"
									alt="..." style="width: 331px; height: 301px;">
								<div class="caption">
									<h3>스터디룸H</h3>
									<a href="/reservation/roomInfo.do?no=${reservationOne.no}&roomName18=${reservationOne.roomName18}" class="btn btn-default" role="button" style="margin-top: 10px; margin-bottom: 10px;">예약하기</a>
								</div>
							</div>
						</div>
					</c:if>
					<c:if test="${reservationOne.photo19 != Null}">
						<div class="col-sm-6 col-md-4" style="width: 50%;">
							<div class="thumbnail" style="text-align: center;">
								<img
									src="/uploadFile/reservationPhoto/${reservationOne.photo19}"
									alt="..." style="width: 331px; height: 301px;">
								<div class="caption">
									<h3>스터디룸I</h3>
									<a href="/reservation/roomInfo.do?no=${reservationOne.no}&roomName19=${reservationOne.roomName19}" class="btn btn-default" role="button" style="margin-top: 10px; margin-bottom: 10px;">예약하기</a>
								</div>
							</div>
						</div>
					</c:if>
					<c:if test="${reservationOne.photo20 != Null}">
						<div class="col-sm-6 col-md-4" style="width: 50%;">
							<div class="thumbnail" style="text-align: center;">
								<img
									src="/uploadFile/reservationPhoto/${reservationOne.photo20}"
									alt="..." style="width: 331px; height: 301px;">
								<div class="caption">
									<h3>스터디룸J</h3>
									<a href="/reservation/roomInfo.do?no=${reservationOne.no}&roomName20=${reservationOne.roomName20}" class="btn btn-default" role="button" style="margin-top: 10px; margin-bottom: 10px;">예약하기</a>
								</div>
							</div>
						</div>
					</c:if>
				</div>

			</div>

		</div>
	</div>
	<!-- row 끝 -->
	<!-- container 끝 -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/bootstrap/datepicker/moment-with-locales.js"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/bootstrap/datepicker/ko.js"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/bootstrap/datepicker/bootstrap-datetimepicker.js"></script>
	<script>
		/* 탭 */
		$(function() {
			$('#myTab a:last').tab('show')
		});

		/* 달력 */
		$(function() {
			$('#datetimepicker12').datetimepicker({
				inline : true,
				sideBySide : true
			})
		});
	</script>

	<script>
		$(document).ready(function() {
			if ($(".spanContent").val() == null) {
				($(".spanNumber").hide())
			}
		});
	</script>
</body>
</html>
