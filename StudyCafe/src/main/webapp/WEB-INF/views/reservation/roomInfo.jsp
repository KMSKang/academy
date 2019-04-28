<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#div12 element.style {
	visibility: hidden;
}

.datepicker {
	width: 100%;
	margin-top: -30px;
}
</style>

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

				<!-- 예약 -->

				<div class="panel" style="border: 1px solid black;">

					<div class="panel-footer"
						style="background: black; border: black; color: #fff; font-weight: bold;">예약</div>
					<div class="panel-body" style="background: ghostwhite;">
						<div style="overflow: hidden;" id="div12">
							<div class="form-group">
								<div class="row">
									<div class="col-md-8" style="width: 102%;">
										<input type='text' class="form-control inputDate"
											id="datetimepicker12" style="visibility: hidden;" />
										<div id="datetimepicker12"></div>

										<hr
											style="border-width: 1px 0px 0px 0px; border-style: solid; border-color: #808080; height: 1px;">



										<div>


											<div style="font-size: 15px; text-align: center;">
												<div style="margin-bottom: 2%;">
													<span style="margin-left: 9px;" id="span_time">9:00 ~ 10:00</span>
													<input type="button" value="예약하기" class="btn btn-default" style="font-size: 10px; margin-left: 1%;" id="button_nine">
												</div>


												<script>
											/* 예약 - 9:00 ~ 10:00 시간의 버튼을 클릭하면 */
											$("#button_nine").click(function() {
														
												/* 예약 - 예약하기 버튼의 속성이 disabled로 변경된다. */
												$("#button_nine").attr("disabled","disabled");
														
														/* 예약 - 예약하기 버튼의 값이 예약완료로 변경된다. */
														$("#button_nine").attr("value","예약완료");
														
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 생긴다. */
														$("<input type='button' value='9:00 ~ 10:00 ㅣ ×' class='btn btn-default' id='button_nine_delete'>").appendTo("#reservation_left");
														
														/* 예약 확인 - 예약시간에 있는 버튼의 수를 센다 */
														var time = $("#reservation_left").children("input[type=button]").length;
														
														/* 예약확인 - 총 결제 금액에서 시간(1시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값을 저장한다. */
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
												/* 예약확인 - 인원 수 클릭 시 */
												$("#select_NumberOfPeople").click(function() {
												
														/* 예약확인 - 인원 수의 값이 저장된다. */
														var numberPeople = $("#select_NumberOfPeople").val();
												
														/* 예약확인 - 총 결제 금액에서 명(@명)으로 변경된다. */
														$("#reservation_people").html(numberPeople + "명");
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
														});
														
												/* 예약확인 - 예약하기 누른 시간대의 버튼을 클릭하면 */
												$("#button_nine_delete").on('click', function() {
															
														/* 예약확인 - 누른 시간대의 버튼이 사라진다. */
														$(this).remove();
															
														/* 예약 - 9:00 ~ 10:00 시간의 버튼의 속성의 disabled이 사라진다 */
														$("#button_nine").removeAttr("disabled");
															
														/* 예약 - 예약완료 버튼의 값이 예약하기로 변경된다. */
														$("#button_nine").attr("value","예약하기");
															
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 몇개 있는지 센다. */
														var time = $("#reservation_left").children("input[type=button]").length;
																
														/* 예약확인 - 총 결제 금액에서 시간(0시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값이 저장된다. */
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
																
														});
												
											});
											</script>

												<div style="margin-bottom: 2%;">
													<span>10:00 ~ 11:00</span> <input type="button"
														value="예약하기" class="btn btn-default"
														style="font-size: 10px; margin-left: 1%;" id="button_ten">
												</div>

												<script>
											/* 예약 - 10:00 ~ 11:00 시간의 버튼을 클릭하면 */
											$("#button_ten").click(function() {
														
												/* 예약 - 예약하기 버튼의 속성이 disabled로 변경된다. */
												$("#button_ten").attr("disabled","disabled");
														
														/* 예약 - 예약하기 버튼의 값이 예약완료로 변경된다. */
														$("#button_ten").attr("value","예약완료");
														
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 생긴다. */
														$("<input type='button' value='10:00 ~ 11:00 ㅣ ×' class='btn btn-default' id='button_ten_delete'>").appendTo("#reservation_left");
														
														/* 예약 확인 - 예약시간에 있는 버튼의 수를 센다 */
														var time = $("#reservation_left").children("input[type=button]").length;
														
														/* 예약확인 - 총 결제 금액에서 시간(1시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값을 저장한다. */
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
												/* 예약확인 - 인원 수 클릭 시 */
												$("#select_NumberOfPeople").click(function() {
												
														/* 예약확인 - 인원 수의 값이 저장된다. */
														var numberPeople = $("#select_NumberOfPeople").val();
												
														/* 예약확인 - 총 결제 금액에서 명(@명)으로 변경된다. */
														$("#reservation_people").html(numberPeople + "명");
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
														});
														
												/* 예약확인 - 예약하기 누른 시간대의 버튼을 클릭하면 */
												$("#button_ten_delete").on('click', function() {
															
														/* 예약확인 - 누른 시간대의 버튼이 사라진다. */
														$(this).remove();
															
														/* 예약 - 10:00 ~ 11:00 시간의 버튼의 속성의 disabled이 사라진다 */
														$("#button_ten").removeAttr("disabled");
															
														/* 예약 - 예약완료 버튼의 값이 예약하기로 변경된다. */
														$("#button_ten").attr("value","예약하기");
															
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 몇개 있는지 센다. */
														var time = $("#reservation_left").children("input[type=button]").length;
																
														/* 예약확인 - 총 결제 금액에서 시간(0시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값이 저장된다. */
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
																
														});
												
											});
											</script>

												<div style="margin-bottom: 2%;">
													<span>11:00 ~ 12:00</span> <input type="button"
														value="예약하기" class="btn btn-default"
														style="font-size: 10px; margin-left: 1%;"
														id="button_eleven">
												</div>

												<script>
											/* 예약 - 11:00 ~ 12:00 시간의 버튼을 클릭하면 */
											$("#button_eleven").click(function() {
														
												/* 예약 - 예약하기 버튼의 속성이 disabled로 변경된다. */
												$("#button_eleven").attr("disabled","disabled");
														
														/* 예약 - 예약하기 버튼의 값이 예약완료로 변경된다. */
														$("#button_eleven").attr("value","예약완료");
														
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 생긴다. */
														$("<input type='button' value='11:00 ~ 12:00 ㅣ ×' class='btn btn-default' id='button_eleven_delete'>").appendTo("#reservation_left");
														
														/* 예약 확인 - 예약시간에 있는 버튼의 수를 센다 */
														var time = $("#reservation_left").children("input[type=button]").length;
														
														/* 예약확인 - 총 결제 금액에서 시간(1시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값을 저장한다. */
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
												/* 예약확인 - 인원 수 클릭 시 */
												$("#select_NumberOfPeople").click(function() {
												
														/* 예약확인 - 인원 수의 값이 저장된다. */
														var numberPeople = $("#select_NumberOfPeople").val();
												
														/* 예약확인 - 총 결제 금액에서 명(@명)으로 변경된다. */
														$("#reservation_people").html(numberPeople + "명");
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
														});
														
												/* 예약확인 - 예약하기 누른 시간대의 버튼을 클릭하면 */
												$("#button_eleven_delete").on('click', function() {
															
														/* 예약확인 - 누른 시간대의 버튼이 사라진다. */
														$(this).remove();
															
														/* 예약 - 11:00 ~ 12:00 시간의 버튼의 속성의 disabled이 사라진다 */
														$("#button_eleven").removeAttr("disabled");
															
														/* 예약 - 예약완료 버튼의 값이 예약하기로 변경된다. */
														$("#button_eleven").attr("value","예약하기");
															
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 몇개 있는지 센다. */
														var time = $("#reservation_left").children("input[type=button]").length;
																
														/* 예약확인 - 총 결제 금액에서 시간(0시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값이 저장된다. */
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
																
														});
												
											});
											</script>

												<div style="margin-bottom: 2%;">
													<span>12:00 ~ 13:00</span> <input type="button"
														value="예약하기" class="btn btn-default"
														style="font-size: 10px; margin-left: 1%;"
														id="button_twelve">
												</div>

												<script>
											/* 예약 - 12:00 ~ 13:00 시간의 버튼을 클릭하면 */
											$("#button_twelve").click(function() {
														
												/* 예약 - 예약하기 버튼의 속성이 disabled로 변경된다. */
												$("#button_twelve").attr("disabled","disabled");
														
														/* 예약 - 예약하기 버튼의 값이 예약완료로 변경된다. */
														$("#button_twelve").attr("value","예약완료");
														
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 생긴다. */
														$("<input type='button' value='12:00 ~ 13:00 ㅣ ×' class='btn btn-default' id='button_twelve_delete'>").appendTo("#reservation_left");
														
														/* 예약 확인 - 예약시간에 있는 버튼의 수를 센다 */
														var time = $("#reservation_left").children("input[type=button]").length;
														
														/* 예약확인 - 총 결제 금액에서 시간(1시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값을 저장한다. */
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
												/* 예약확인 - 인원 수 클릭 시 */
												$("#select_NumberOfPeople").click(function() {
												
														/* 예약확인 - 인원 수의 값이 저장된다. */
														var numberPeople = $("#select_NumberOfPeople").val();
												
														/* 예약확인 - 총 결제 금액에서 명(@명)으로 변경된다. */
														$("#reservation_people").html(numberPeople + "명");
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
														});
														
												/* 예약확인 - 예약하기 누른 시간대의 버튼을 클릭하면 */
												$("#button_twelve_delete").on('click', function() {
															
														/* 예약확인 - 누른 시간대의 버튼이 사라진다. */
														$(this).remove();
															
														/* 예약 - 12:00 ~ 13:00 시간의 버튼의 속성의 disabled이 사라진다 */
														$("#button_twelve").removeAttr("disabled");
															
														/* 예약 - 예약완료 버튼의 값이 예약하기로 변경된다. */
														$("#button_twelve").attr("value","예약하기");
															
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 몇개 있는지 센다. */
														var time = $("#reservation_left").children("input[type=button]").length;
																
														/* 예약확인 - 총 결제 금액에서 시간(0시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값이 저장된다. */
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
																
														});
												
											});
											</script>

												<div style="margin-bottom: 2%;">
													<span>13:00 ~ 14:00</span><input type="button" value="예약하기"
														class="btn btn-default"
														style="font-size: 10px; margin-left: 1%;"
														id="button_thirteen">
												</div>

												<script>
											/* 예약 - 13:00 ~ 14:00 시간의 버튼을 클릭하면 */
											$("#button_thirteen").click(function() {
														
												/* 예약 - 예약하기 버튼의 속성이 disabled로 변경된다. */
												$("#button_thirteen").attr("disabled","disabled");
														
														/* 예약 - 예약하기 버튼의 값이 예약완료로 변경된다. */
														$("#button_thirteen").attr("value","예약완료");
														
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 생긴다. */
														$("<input type='button' value='13:00 ~ 14:00 ㅣ ×' class='btn btn-default' id='button_thirteen_delete'>").appendTo("#reservation_left");
														
														/* 예약 확인 - 예약시간에 있는 버튼의 수를 센다 */
														var time = $("#reservation_left").children("input[type=button]").length;
														
														/* 예약확인 - 총 결제 금액에서 시간(1시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값을 저장한다. */
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
												/* 예약확인 - 인원 수 클릭 시 */
												$("#select_NumberOfPeople").click(function() {
												
														/* 예약확인 - 인원 수의 값이 저장된다. */
														var numberPeople = $("#select_NumberOfPeople").val();
												
														/* 예약확인 - 총 결제 금액에서 명(@명)으로 변경된다. */
														$("#reservation_people").html(numberPeople + "명");
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
														});
														
												/* 예약확인 - 예약하기 누른 시간대의 버튼을 클릭하면 */
												$("#button_thirteen_delete").on('click', function() {
															
														/* 예약확인 - 누른 시간대의 버튼이 사라진다. */
														$(this).remove();
															
														/* 예약 - 13:00 ~ 14:00 시간의 버튼의 속성의 disabled이 사라진다 */
														$("#button_thirteen").removeAttr("disabled");
															
														/* 예약 - 예약완료 버튼의 값이 예약하기로 변경된다. */
														$("#button_thirteen").attr("value","예약하기");
															
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 몇개 있는지 센다. */
														var time = $("#reservation_left").children("input[type=button]").length;
																
														/* 예약확인 - 총 결제 금액에서 시간(0시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값이 저장된다. */
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
																
														});
												
											});
											</script>

												<div style="margin-bottom: 2%;">
													<span>14:00 ~ 15:00</span><input type="button" value="예약하기"
														class="btn btn-default"
														style="font-size: 10px; margin-left: 1%;"
														id="button_fourteen">
												</div>

												<script>
											/* 예약 - 14:00 ~ 15:00 시간의 버튼을 클릭하면 */
											$("#button_fourteen").click(function() {
														
												/* 예약 - 예약하기 버튼의 속성이 disabled로 변경된다. */
												$("#button_fourteen").attr("disabled","disabled");
														
														/* 예약 - 예약하기 버튼의 값이 예약완료로 변경된다. */
														$("#button_fourteen").attr("value","예약완료");
														
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 생긴다. */
														$("<input type='button' value='14:00 ~ 15:00 ㅣ ×' class='btn btn-default' id='button_fourteen_delete'>").appendTo("#reservation_left");
														
														/* 예약 확인 - 예약시간에 있는 버튼의 수를 센다 */
														var time = $("#reservation_left").children("input[type=button]").length;
														
														/* 예약확인 - 총 결제 금액에서 시간(1시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값을 저장한다. */
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
												/* 예약확인 - 인원 수 클릭 시 */
												$("#select_NumberOfPeople").click(function() {
												
														/* 예약확인 - 인원 수의 값이 저장된다. */
														var numberPeople = $("#select_NumberOfPeople").val();
												
														/* 예약확인 - 총 결제 금액에서 명(@명)으로 변경된다. */
														$("#reservation_people").html(numberPeople + "명");
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
														});
														
												/* 예약확인 - 예약하기 누른 시간대의 버튼을 클릭하면 */
												$("#button_fourteen_delete").on('click', function() {
															
														/* 예약확인 - 누른 시간대의 버튼이 사라진다. */
														$(this).remove();
															
														/* 예약 - 14:00 ~ 15:00 시간의 버튼의 속성의 disabled이 사라진다 */
														$("#button_fourteen").removeAttr("disabled");
															
														/* 예약 - 예약완료 버튼의 값이 예약하기로 변경된다. */
														$("#button_fourteen").attr("value","예약하기");
															
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 몇개 있는지 센다. */
														var time = $("#reservation_left").children("input[type=button]").length;
																
														/* 예약확인 - 총 결제 금액에서 시간(0시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값이 저장된다. */
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
																
														});
												
											});
											</script>

												<div style="margin-bottom: 2%;">
													<span>15:00 ~ 16:00</span><input type="button" value="예약하기"
														class="btn btn-default"
														style="font-size: 10px; margin-left: 1%;"
														id="button_fifteen">
												</div>

												<script>
											/* 예약 - 15:00 ~ 16:00 시간의 버튼을 클릭하면 */
											$("#button_fifteen").click(function() {
														
												/* 예약 - 예약하기 버튼의 속성이 disabled로 변경된다. */
												$("#button_fifteen").attr("disabled","disabled");
														
														/* 예약 - 예약하기 버튼의 값이 예약완료로 변경된다. */
														$("#button_fifteen").attr("value","예약완료");
														
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 생긴다. */
														$("<input type='button' value='15:00 ~ 16:00 ㅣ ×' class='btn btn-default' id='button_fifteen_delete'>").appendTo("#reservation_left");
														
														/* 예약 확인 - 예약시간에 있는 버튼의 수를 센다 */
														var time = $("#reservation_left").children("input[type=button]").length;
														
														/* 예약확인 - 총 결제 금액에서 시간(1시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값을 저장한다. */
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
												/* 예약확인 - 인원 수 클릭 시 */
												$("#select_NumberOfPeople").click(function() {
												
														/* 예약확인 - 인원 수의 값이 저장된다. */
														var numberPeople = $("#select_NumberOfPeople").val();
												
														/* 예약확인 - 총 결제 금액에서 명(@명)으로 변경된다. */
														$("#reservation_people").html(numberPeople + "명");
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
														});
														
												/* 예약확인 - 예약하기 누른 시간대의 버튼을 클릭하면 */
												$("#button_fifteen_delete").on('click', function() {
															
														/* 예약확인 - 누른 시간대의 버튼이 사라진다. */
														$(this).remove();
															
														/* 예약 - 15:00 ~ 16:00 시간의 버튼의 속성의 disabled이 사라진다 */
														
														$("#button_fifteen").removeAttr("disabled");
															
														/* 예약 - 예약완료 버튼의 값이 예약하기로 변경된다. */
														
														$("#button_fifteen").attr("value","예약하기");
															
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 몇개 있는지 센다. */
														var time = $("#reservation_left").children("input[type=button]").length;
																
														/* 예약확인 - 총 결제 금액에서 시간(0시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값이 저장된다. */
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
																
														});
												
											});
											</script>

												<div style="margin-bottom: 2%;">
													<span>16:00 ~ 17:00</span> <input type="button"
														value="예약하기" class="btn btn-default"
														style="font-size: 10px; margin-left: 1%;"
														id="button_sixteen">
												</div>

												<script>
											/* 예약 - 16:00 ~ 17:00 시간의 버튼을 클릭하면 */
											$("#button_sixteen").click(function() {
														
												/* 예약 - 예약하기 버튼의 속성이 disabled로 변경된다. */
												$("#button_sixteen").attr("disabled","disabled");
														
														/* 예약 - 예약하기 버튼의 값이 예약완료로 변경된다. */
														
														$("#button_sixteen").attr("value","예약완료");
														
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 생긴다. */
														$("<input type='button' value='16:00 ~ 17:00 ㅣ ×' class='btn btn-default' id='button_sixteen_delete'>").appendTo("#reservation_left");
														
														/* 예약 확인 - 예약시간에 있는 버튼의 수를 센다 */
														var time = $("#reservation_left").children("input[type=button]").length;
														
														/* 예약확인 - 총 결제 금액에서 시간(1시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값을 저장한다. */
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
												/* 예약확인 - 인원 수 클릭 시 */
												$("#select_NumberOfPeople").click(function() {
												
														/* 예약확인 - 인원 수의 값이 저장된다. */
														var numberPeople = $("#select_NumberOfPeople").val();
												
														/* 예약확인 - 총 결제 금액에서 명(@명)으로 변경된다. */
														$("#reservation_people").html(numberPeople + "명");
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
														});
														
												/* 예약확인 - 예약하기 누른 시간대의 버튼을 클릭하면 */
												$("#button_sixteen_delete").on('click', function() {
															
														/* 예약확인 - 누른 시간대의 버튼이 사라진다. */
														$(this).remove();
															
														/* 예약 - 16:00 ~ 17:00 시간의 버튼의 속성의 disabled이 사라진다 */
														$("#button_sixteen").removeAttr("disabled");
															
														/* 예약 - 예약완료 버튼의 값이 예약하기로 변경된다. */
														$("#button_sixteen").attr("value","예약하기");
															
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 몇개 있는지 센다. */
														var time = $("#reservation_left").children("input[type=button]").length;
																
														/* 예약확인 - 총 결제 금액에서 시간(0시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값이 저장된다. */
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
																
														});
												
											});
											</script>

												<div style="margin-bottom: 2%;">
													<span>17:00 ~ 18:00</span> <input type="button"
														value="예약하기" class="btn btn-default"
														style="font-size: 10px; margin-left: 1%;"
														id="button_seventeen">
												</div>

												<script>
											/* 예약 - 17:00 ~ 18:00 시간의 버튼을 클릭하면 */
											$("#button_seventeen").click(function() {
														
												/* 예약 - 예약하기 버튼의 속성이 disabled로 변경된다. */
												$("#button_seventeen").attr("disabled","disabled");
														
														/* 예약 - 예약하기 버튼의 값이 예약완료로 변경된다. */
														$("#button_seventeen").attr("value","예약완료");
														
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 생긴다. */
														$("<input type='button' value='17:00 ~ 18:00 ㅣ ×' class='btn btn-default' id='button_seventeen_delete'>").appendTo("#reservation_left");
														
														/* 예약 확인 - 예약시간에 있는 버튼의 수를 센다 */
														var time = $("#reservation_left").children("input[type=button]").length;
														
														/* 예약확인 - 총 결제 금액에서 시간(1시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값을 저장한다. */
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
												/* 예약확인 - 인원 수 클릭 시 */
												$("#select_NumberOfPeople").click(function() {
												
														/* 예약확인 - 인원 수의 값이 저장된다. */
														var numberPeople = $("#select_NumberOfPeople").val();
												
														/* 예약확인 - 총 결제 금액에서 명(@명)으로 변경된다. */
														$("#reservation_people").html(numberPeople + "명");
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
														});
														
												/* 예약확인 - 예약하기 누른 시간대의 버튼을 클릭하면 */
												
												$("#button_seventeen_delete").on('click', function() {
															
														/* 예약확인 - 누른 시간대의 버튼이 사라진다. */
														$(this).remove();
															
														/* 예약 - 17:00 ~ 18:00 시간의 버튼의 속성의 disabled이 사라진다 */
														$("#button_seventeen").removeAttr("disabled");
															
														/* 예약 - 예약완료 버튼의 값이 예약하기로 변경된다. */
														$("#button_seventeen").attr("value","예약하기");
															
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 몇개 있는지 센다. */
														var time = $("#reservation_left").children("input[type=button]").length;
																
														/* 예약확인 - 총 결제 금액에서 시간(0시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값이 저장된다. */
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
																
														});
												
											});
											</script>

												<div style="margin-bottom: 2%;">
													<span>18:00 ~ 19:00</span> <input type="button"
														value="예약하기" class="btn btn-default"
														style="font-size: 10px; margin-left: 1%;"
														id="button_eighteen">
												</div>

												<script>
											/* 예약 - 18:00 ~ 19:00 시간의 버튼을 클릭하면 */
											$("#button_eighteen").click(function() {
														
												/* 예약 - 예약하기 버튼의 속성이 disabled로 변경된다. */
												$("#button_eighteen").attr("disabled","disabled");
														
														/* 예약 - 예약하기 버튼의 값이 예약완료로 변경된다. */
														$("#button_eighteen").attr("value","예약완료");
														
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 생긴다. */
														$("<input type='button' value='18:00 ~ 19:00 ㅣ ×' class='btn btn-default' id='button_eighteen_delete'>").appendTo("#reservation_left");
														
														/* 예약 확인 - 예약시간에 있는 버튼의 수를 센다 */
														var time = $("#reservation_left").children("input[type=button]").length;
														
														/* 예약확인 - 총 결제 금액에서 시간(1시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값을 저장한다. */
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
												/* 예약확인 - 인원 수 클릭 시 */
												$("#select_NumberOfPeople").click(function() {
												
														/* 예약확인 - 인원 수의 값이 저장된다. */
														var numberPeople = $("#select_NumberOfPeople").val();
												
														/* 예약확인 - 총 결제 금액에서 명(@명)으로 변경된다. */
														$("#reservation_people").html(numberPeople + "명");
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
														});
														
												/* 예약확인 - 예약하기 누른 시간대의 버튼을 클릭하면 */
												$("#button_eighteen_delete").on('click', function() {
															
														/* 예약확인 - 누른 시간대의 버튼이 사라진다. */
														$(this).remove();
															
														/* 예약 - 18:00 ~ 19:00 시간의 버튼의 속성의 disabled이 사라진다 */
														$("#button_eighteen").removeAttr("disabled");
															
														/* 예약 - 예약완료 버튼의 값이 예약하기로 변경된다. */
														$("#button_eighteen").attr("value","예약하기");
															
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 몇개 있는지 센다. */
														var time = $("#reservation_left").children("input[type=button]").length;
																
														/* 예약확인 - 총 결제 금액에서 시간(0시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값이 저장된다. */
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
																
														});
												
											});
											</script>

												<div style="margin-bottom: 2%;">
													<span>19:00 ~ 20:00</span> <input type="button"
														value="예약하기" class="btn btn-default"
														style="font-size: 10px; margin-left: 1%;"
														id="button_nineteen">
												</div>

											<script>
											/* 예약 - 19:00 ~ 20:00 시간의 버튼을 클릭하면 */
											$("#button_nineteen").click(function() {
														
												/* 예약 - 예약하기 버튼의 속성이 disabled로 변경된다. */
												$("#button_nineteen").attr("disabled","disabled");
														
														/* 예약 - 예약하기 버튼의 값이 예약완료로 변경된다. */
														$("#button_nineteen").attr("value","예약완료");
														
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 생긴다. */
														$("<input type='button' value='19:00 ~ 20:00 ㅣ ×' class='btn btn-default' id='button_nineteen_delete'>").appendTo("#reservation_left");
														
														/* 예약 확인 - 예약시간에 있는 버튼의 수를 센다 */
														var time = $("#reservation_left").children("input[type=button]").length;
														
														/* 예약확인 - 총 결제 금액에서 시간(1시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값을 저장한다. */
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
												/* 예약확인 - 인원 수 클릭 시 */
												$("#select_NumberOfPeople").click(function() {
												
														/* 예약확인 - 인원 수의 값이 저장된다. */
														var numberPeople = $("#select_NumberOfPeople").val();
												
														/* 예약확인 - 총 결제 금액에서 명(@명)으로 변경된다. */
														$("#reservation_people").html(numberPeople + "명");
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
														});
														
												/* 예약확인 - 예약하기 누른 시간대의 버튼을 클릭하면 */
												$("#button_nineteen_delete").on('click', function() {
															
														/* 예약확인 - 누른 시간대의 버튼이 사라진다. */
														$(this).remove();
															
														/* 예약 - 19:00 ~ 20:00 시간의 버튼의 속성의 disabled이 사라진다 */
														$("#button_nineteen").removeAttr("disabled");
															
														/* 예약 - 예약완료 버튼의 값이 예약하기로 변경된다. */
														$("#button_nineteen").attr("value","예약하기");
															
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 몇개 있는지 센다. */
														var time = $("#reservation_left").children("input[type=button]").length;
																
														/* 예약확인 - 총 결제 금액에서 시간(0시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값이 저장된다. */
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
																
														});
												
											});
											</script>

												<div style="margin-bottom: 2%;">
													<span>20:00 ~ 21:00</span> <input type="button"
														value="예약하기" class="btn btn-default"
														style="font-size: 10px; margin-left: 1%;"
														id="button_twenty">
												</div>

												<script>
											/* 예약 - 20:00 ~ 21:00 시간의 버튼을 클릭하면 */
											$("#button_twenty").click(function() {
														
												/* 예약 - 예약하기 버튼의 속성이 disabled로 변경된다. */
												$("#button_twenty").attr("disabled","disabled");
														
														/* 예약 - 예약하기 버튼의 값이 예약완료로 변경된다. */
														$("#button_twenty").attr("value","예약완료");
														
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 생긴다. */
														$("<input type='button' value='20:00 ~ 21:00 ㅣ ×' class='btn btn-default' id='button_twenty_delete'>").appendTo("#reservation_left");
														
														/* 예약 확인 - 예약시간에 있는 버튼의 수를 센다 */
														var time = $("#reservation_left").children("input[type=button]").length;
														
														/* 예약확인 - 총 결제 금액에서 시간(1시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값을 저장한다. */
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
												/* 예약확인 - 인원 수 클릭 시 */
												$("#select_NumberOfPeople").click(function() {
												
														/* 예약확인 - 인원 수의 값이 저장된다. */
														var numberPeople = $("#select_NumberOfPeople").val();
												
														/* 예약확인 - 총 결제 금액에서 명(@명)으로 변경된다. */
														$("#reservation_people").html(numberPeople + "명");
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
														});
														
												/* 예약확인 - 예약하기 누른 시간대의 버튼을 클릭하면 */
												$("#button_twenty_delete").on('click', function() {
															
														/* 예약확인 - 누른 시간대의 버튼이 사라진다. */
														$(this).remove();
															
														/* 예약 - 20:00 ~ 21:00 시간의 버튼의 속성의 disabled이 사라진다 */
														$("#button_twenty").removeAttr("disabled");
															
														/* 예약 - 예약완료 버튼의 값이 예약하기로 변경된다. */
														$("#button_twenty").attr("value","예약하기");
															
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 몇개 있는지 센다. */
														var time = $("#reservation_left").children("input[type=button]").length;
																
														/* 예약확인 - 총 결제 금액에서 시간(0시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값이 저장된다. ---------------------------*/
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
																
														});
												
											});
											</script>

												<div style="margin-bottom: 2%;">
													<span>21:00 ~ 22:00</span> <input type="button"
														value="예약하기" class="btn btn-default"
														style="font-size: 10px; margin-left: 1%;"
														id="button_twentyOne">
												</div>

											<script>
											/* 예약 - 21:00 ~ 22:00 시간의 버튼을 클릭하면 */
											$("#button_twentyOne").click(function() {
														
												/* 예약 - 예약하기 버튼의 속성이 disabled로 변경된다. */
												$("#button_twentyOne").attr("disabled","disabled");
														
														/* 예약 - 예약하기 버튼의 값이 예약완료로 변경된다. */
														$("#button_twentyOne").attr("value","예약완료");
														
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 생긴다. */
														$("<input type='button' value='21:00 ~ 22:00 ㅣ ×' class='btn btn-default' id='button_twentyOne_delete'>").appendTo("#reservation_left");
														
														/* 예약 확인 - 예약시간에 있는 버튼의 수를 센다 */
														var time = $("#reservation_left").children("input[type=button]").length;
														
														/* 예약확인 - 총 결제 금액에서 시간(1시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값을 저장한다. */
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
												/* 예약확인 - 인원 수 클릭 시 */
												$("#select_NumberOfPeople").click(function() {
												
														/* 예약확인 - 인원 수의 값이 저장된다. */
														var numberPeople = $("#select_NumberOfPeople").val();
												
														/* 예약확인 - 총 결제 금액에서 명(@명)으로 변경된다. */
														$("#reservation_people").html(numberPeople + "명");
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
														});
														
												/* 예약확인 - 예약하기 누른 시간대의 버튼을 클릭하면 */
												
												$("#button_twentyOne_delete").on('click', function() {
															
														/* 예약확인 - 누른 시간대의 버튼이 사라진다. */
														$(this).remove();
															
														/* 예약 - 21:00 ~ 22:00 시간의 버튼의 속성의 disabled이 사라진다 */
														$("#button_twentyOne").removeAttr("disabled");
															
														/* 예약 - 예약완료 버튼의 값이 예약하기로 변경된다. */
														$("#button_twentyOne").attr("value","예약하기");
															
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 몇개 있는지 센다. */
														var time = $("#reservation_left").children("input[type=button]").length;
																
														/* 예약확인 - 총 결제 금액에서 시간(0시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값이 저장된다. ---------------------------*/
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
																
														});
												
											});
											</script>

												<div style="margin-bottom: 2%;">
													<span>22:00 ~ 23:00</span> <input type="button"
														value="예약하기" class="btn btn-default"
														style="font-size: 10px; margin-left: 1%;"
														id="button_twentyTwo">
												</div>

											<script>
											/* 예약 - 22:00 ~ 23:00 시간의 버튼을 클릭하면 */
											$("#button_twentyTwo").click(function() {
														
												/* 예약 - 예약하기 버튼의 속성이 disabled로 변경된다. */
												$("#button_twentyTwo").attr("disabled","disabled");
														
														/* 예약 - 예약하기 버튼의 값이 예약완료로 변경된다. */
														$("#button_twentyTwo").attr("value","예약완료");
														
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 생긴다. */
														$("<input type='button' value='22:00 ~ 23:00 ㅣ ×' class='btn btn-default' id='button_twentyTwo_delete'>").appendTo("#reservation_left");
														
														/* 예약 확인 - 예약시간에 있는 버튼의 수를 센다 */
														var time = $("#reservation_left").children("input[type=button]").length;
														
														/* 예약확인 - 총 결제 금액에서 시간(1시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값을 저장한다. */
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
												/* 예약확인 - 인원 수 클릭 시 */
												$("#select_NumberOfPeople").click(function() {
												
														/* 예약확인 - 인원 수의 값이 저장된다. */
														var numberPeople = $("#select_NumberOfPeople").val();
												
														/* 예약확인 - 총 결제 금액에서 명(@명)으로 변경된다. */
														$("#reservation_people").html(numberPeople + "명");
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
														
														});
														
												/* 예약확인 - 예약하기 누른 시간대의 버튼을 클릭하면(삭제) */
												$("#button_twentyTwo_delete").on('click', function() {
															
														/* 예약확인 - 누른 시간대의 버튼이 사라진다. */
														$(this).remove();
															
														/* 예약 - 22:00 ~ 23:00 시간의 버튼의 속성의 disabled이 사라진다 */
														$("#button_twentyTwo").removeAttr("disabled");
															
														/* 예약 - 예약완료 버튼의 값이 예약하기로 변경된다. */
														$("#button_twentyTwo").attr("value","예약하기");
															
														/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 몇개 있는지 센다. */
														var time = $("#reservation_left").children("input[type=button]").length;
																
														/* 예약확인 - 총 결제 금액에서 시간(0시간)으로 변경된다. */
														$("#reservation_time").html(time + "시간");
														
														/* 예약확인 - 인원 수의 값이 저장된다. ---------------------------*/
														var numberPeople = $("#select_NumberOfPeople").val();
														
														/* 총 결제 금액 */
														var result = parseInt(1500 * time * numberPeople);
														
														/* 예약확인 - 총 결제 금액을 바꾼다. */
														$("#sum").html(result + "원")
																
														});
												
											});
											</script>

												<div></div>
												<span style="margin-left: -2px;">23:00 ~ 24:00</span> <input
													type="button" value="예약하기" class="btn btn-default"
													style="font-size: 10px; margin-left: 1%;"
													id="button_twentyThree">
											</div>

											<script>
											/* 예약 - 23:00 ~ 24:00 시간의 버튼을 클릭하면 */
											$("#button_twentyThree").click(function() {
														
												/* 예약 - 예약하기 버튼의 속성이 disabled로 변경된다. */
												$("#button_twentyThree").attr("disabled","disabled");
												/* 예약 - 예약하기 버튼의 값이 예약완료로 변경된다. */
												$("#button_twentyThree").attr("value","예약완료");
												
												/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 생긴다. */
												/* 고쳐야함  2개*/
												$("<input type='button' value='23:00 ~ 24:00 ㅣ ×' class='btn btn-default' id='button_twentyThree_delete'>").appendTo("#reservation_left");
												
												/* 예약 확인 - 예약시간에 있는 버튼의 수를 센다 */
												var time = $("#reservation_left").children("input[type=button]").length;
												
												/* 예약확인 - 총 결제 금액에서 시간(1시간)으로 변경된다. */
												$("#reservation_time").html(time + "시간");
												
												/* 예약확인 - 인원 수의 값을 저장한다. */
												var numberPeople = $("#select_NumberOfPeople").val();
												
												/* 총 결제 금액 */
												var result = parseInt(1500 * time * numberPeople);
												
												/* 예약확인 - 총 결제 금액을 바꾼다. */
												$("#sum").html(result + "원")
														
												/* 예약확인 - 인원 수 클릭 시 */
												$("#select_NumberOfPeople").click(function() {
												
													/* 예약확인 - 인원 수의 값이 저장된다. */
													var numberPeople = $("#select_NumberOfPeople").val();
											
													/* 예약확인 - 총 결제 금액에서 명(@명)으로 변경된다. */
													$("#reservation_people").html(numberPeople + "명");
													
													/* 총 결제 금액 */
													var result = parseInt(1500 * time * numberPeople);
													
													/* 예약확인 - 총 결제 금액을 바꾼다. */
													$("#sum").html(result + "원")
														
												});
														
												console.log($('#button_twentyThree_delete'))
												/* 예약확인 - 예약한 시간대의 버튼을 클릭하면 */
												$("#button_twentyThree_delete").on('click', function() {
															
													/* 예약확인 - 누른 시간대의 버튼이 사라진다. */
													$(this).remove();
														
													/* 예약 - 23:00 ~ 24:00 시간의 버튼의 속성의 disabled이 사라진다 */
													$("#button_twentyThree").removeAttr("disabled");
														
													/* 예약 - 예약완료 버튼의 값이 예약하기로 변경된다. */
													$("#button_twentyThree").attr("value","예약하기");
														
													/* 예약확인 - 예약시간 밑에 예약하기 누른 시간대의 버튼이 몇개 있는지 센다. */
													var time = $("#reservation_left").children("input[type=button]").length;
															
													/* 예약확인 - 총 결제 금액에서 시간(0시간)으로 변경된다. */
													$("#reservation_time").html(time + "시간");
													
													/* 예약확인 - 인원 수의 값이 저장된다. ---------------------------*/
													var numberPeople = $("#select_NumberOfPeople").val();
													
													/* 총 결제 금액 */
													var result = parseInt(1500 * time * numberPeople);
													
													/* 예약확인 - 총 결제 금액을 바꾼다. */
													$("#sum").html(result + "원")
																
												});
												
											});
											</script>
											
										</div>
									</div>
								</div>
							</div>
						</div>

						<hr style="border: 1px solid silver;">

						<div style="text-align: center;"></div>



						<!-- 예약 끝 -->





					</div>

					<div class="panel" style="border: 1px solid black;">

						<div class="panel-footer" style="background: black; border: black; color: #fff; font-weight: bold;">예약 확인</div>
						<div class="panel-body" style="background: ghostwhite;">
							<div class="row" style="margin-left:4%;">
								<div class="col-md-3">
									<div>
										<p>예약시간</p>
									</div>
									<div id="reservation_left" style="width: 230px;"></div>
									
								</div>
								<div class="col-md-2">
									<div>
										<p>인원 수</p>
									</div>
									<div id="reservation_center" style="width: 230px;">
										<select class="btn btn-default" id="select_NumberOfPeople">
											<option value="0">0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
										</select>
									</div>
									
									<!-- 예약에서 인원 수 클릭 시
									                                            예약확인의 총 결제 금액 명 변경-->
									<script>
									$(document).ready(function() {
										
										$("#select_NumberOfPeople").click(function() {
											
										var numberPeople = $("#select_NumberOfPeople").val();
										
										$("#reservation_people").html(numberPeople + "명");
										
										});
									});
									</script>
									
								</div>
								<div class="col-md-4">
									<div id="resnervation_right" style="width: 230px;">
										<p>총 결제 금액</p>
										<span>1,500원</span>
										<span>×</span>
										<span id="reservation_time">0시간</span>
										<span>×</span>
										<span id="reservation_people">0명</span>
										<span>=</span>
										<span id="sum">0원</span>
									</div>
								</div>
								
								<div class="col-md-3">
								
									<input type="submit" value="예약하기" class="btn btn-default" style="font-size: 27px; margin-top: 3%;">
								
								</div>
								
							</div>

						</div>
					</div>

				</div>
				<!-- 예약확인 끝 -->
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
	</script>

	<!-- 달력 -->
	<script type="text/javascript">
		$(function() {
			$('#datetimepicker12').datetimepicker({
				inline : true,
				sideBySide : true,
				format : 'YYYY년 - MM월 - DD일'
			});
		});
	</script>

	<script>
		$(document).ready(function() {
			$(".timepicker ").remove();
		});
	</script>

	<!-- 예약시간 -->
</body>
</html>
