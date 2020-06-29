<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="ko">
<head>

<title>나의메가박스 | 라이프씨어터, 메가박스</title>

<link rel="shortcut icon" href="/resources/icon/favicon.ico">
<link rel="stylesheet" href="/resources/css/megabox.min.css" media="all">
<link rel="stylesheet" href="/resources/css/myPage.css" media="all">

<style type="text/css">
.preNext {
	background-color: white;
	border: none;
	outline: none;
}

em {
	margin-left: 13px;
}

.dateNum {
	font-size: 1em;
	font-family: Roboto;
}

.yoil {
	font-size: .8667em;
	font-family: NanumBarunGothic, Dotum, '돋움', sans-serif;
	display: inline-block;
}

.timeSpan {
	margin-top: 10px;
	/* padding-left: 3px; */
}

.bookingTime-list {
	display: inline-block;
	height: 39px;
	/* margin: 0 0.4%; */
	/* margin-left: 12px;
		margin-right: 12px; */
	width: 3.15%;
}

/* em span:after{  
		content: '';
		position: absolute;
		top: 16px;  
		display: block;
		margin-left: 13px;
		width: 3px; 
		height: 3px;
		background-color: #888;
		 
	} */
.cssDatePlus {
	background-color: #f7f8f9;
	border-bottom: 2px solid #503396;
}
</style>


</head>



<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="body-wrap">
		<div class="inner-wrap">

			<c:import url="../template/adminSidebar.jsp"></c:import>

			<div id="contents" class="">


				<!-- inner-wrap -->
				<div class="inner-wrap"
					style="padding-top: 40px; padding-bottom: 100px;">
					<input type="hidden" id="playDe" name="playDe" value="2020.06.18">
					<input type="hidden" id="crtDe" name="crtDe" value="2020.06.18">

					<!-- quick-reserve -->
					<div class="quick-reserve">



						<div class="mege-quick-reserve-inculde">

							<!-- time-schedule -->
							<div class="time-schedule quick">
								<div class="wrap">

									<!-- <button id="prev" class="timeButton">&lt</button> -->

									<!-- 이전날짜 -->
									<button id="prev" class="btn-pre timeButton" title="이전 날짜 보기">
										<i class="iconset ico-cld-pre"></i> <em>이전</em>
									</button>
									<!--// 이전날짜 -->

									<div class="date-list">
										<!-- 년도, 월 표시 -->
										<div class="year-area">
											<div class="year" style="left: 30px; z-index: 1; opacity: 1;">2020.06</div>
											<div class="year"
												style="left: 940px; z-index: 1; opacity: 1;">2020.07</div>
										</div>


										<div class="date-area" id="formDeList">
											<div class="wrap"
												style="position: relative; width: 2100px; border: none;">

												<ul id="bookingTime-list">

												</ul>





											</div>
										</div>
									</div>

									<!-- 다음날짜 -->
									<button id="next" class="btn-next timeButton" title="다음 날짜 보기">
										<i class="iconset ico-cld-next"></i> <em>다음</em>
									</button>
									<!--// 다음날짜 -->

									<!-- <button id="next" class="timeButton">&gt</button> -->

									<!-- 달력보기 -->
									<div class="bg-line">
										<input type="hidden" id="datePicker" value="2020.06.18"
											class="hasDatepicker">
										<button type="button" id="calendar"
											onclick="$('#datePicker').datepicker('show')"
											class="btn-calendar-large" title="달력보기">달력보기</button>

									</div>
									<!--// 달력보기 -->
								</div>
							</div>
							<!--// time-schedule -->


							<script type="text/javascript">
								var count = 0;
								var date = new Date();
								var startDay = parseInt((date.getDate() + 100 + "")
										.substr(1, 3));

								bookingTimeZone(startDay);

								$("#next").click(function() {
									$("#bookingTime-list").empty();
									startDay = startDay + 1;
									count++;
									bookingTimeZone(startDay);
								});

								$("#prev").click(function() {
									$("#bookingTime-list").empty();
									startDay = startDay - 1;
									count--;
									bookingTimeZone(startDay);
								});

								function bookingTimeZone(startDay) {
									$.get("bookingTimeZone?startDay="
											+ startDay, function(result) {
										$("#bookingTime-list").append(result);
									});

									if (count == 0) {
										$("#prev").prop("disabled", "disabled");
										$("#next").removeAttr("disabled");
									} else if (count > 0 && count < 7) {
										$("#prev").removeAttr("disabled");
										$("#next").removeAttr("disabled");
									} else if (count == 14) {
										$("#prev").removeAttr("disabled");
										$("#next").prop("disabled", "disabled");
									}
								}

								$(".wrap").on("click", ".bookingTime-list",
										function() {
											$(this).addClass("cssDatePlus");

											/* if($(".wrap").prop("mouseup")){
												$(this).css("background-color", "white");
											} */

										});

								$(".wrap").on(
										"mouseover",
										".bookingTime-list",
										function() {
											$(this).css("border-bottom",
													"2px solid #503396");
										});

								$(".wrap").on(
										"mouseout",
										".bookingTime-list",
										function() {
											$(this).css("border-bottom",
													"1px solid #d8d9db");
										});
							</script>


						</div>

					</div>
					<!--// quick-reserve -->

				</div>


				<div class="btn-group mt40">
					<a href="./theaterList"> <input type="button"
						class="button large" value="이전">
					</a> <a href="./theaterUpdate?theaterNum=${theaterVO.theaterNum}">
						<input type="button" class="button purple large" value="수정">
					</a> <a href="./setTheaterRoom"> <input type="button"
						class="button purple large" value="상영시간 관리">
					</a>
				</div>

			</div>
		</div>

		<!-- footer -->
		<footer id="footer">
			<!-- footer-top -->
			<div class="footer-top">
				<div class="inner-wrap">
					<ul class="fnb">
						<li><a href="/megaboxinfo" title="회사소개 페이지로 이동">회사소개</a></li>
						<li><a href="/recruit" title="인재채용 페이지로 이동">인재채용</a></li>
						<li><a href="/socialcontribution" title="사회공헌 페이지로 이동">사회공헌</a></li>
						<li><a href="/partner" title="제휴/광고/부대사업문의 페이지로 이동">제휴/광고/부대사업문의</a></li>
						<li><a href="/support/terms" title="이용약관 페이지로 이동">이용약관</a></li>
						<li class="privacy"><a href="/support/privacy"
							title="개인정보처리방침 페이지로 이동">개인정보처리방침</a></li>
						<li><a href="https://jebo.joonganggroup.com/main.do"
							target="_blank" title="윤리경영 페이지로 이동">윤리경영</a></li>
					</ul>

					<a href="#layer_looking_theater" class="btn-looking-theater"
						title="극장찾기"><i class="iconset ico-footer-search"></i> 극장찾기</a>
				</div>
			</div>
			<!--// footer-top -->

			<!-- footer-bottom -->
			<div class="footer-bottom">
				<div class="inner-wrap">
					<div class="ci">MEGABOX : Life Theater</div>

					<div class="footer-info">
						<div>
							<address>서울특별시 성동구 왕십리로 50, 6층(성수동 1가, 메가박스스퀘어)</address>
							<p>ARS 1544-0070</p>
						</div>
						<p>대표자명 김진선</p>
						<p>· 개인정보보호책임자 조상연</p>
						<p>· 사업자등록번호 211-86-59478</p>
						<p>· 통신판매업신고번호 제 833호</p>
						<p class="copy">COPYRIGHT © MegaboxJoongAng, Inc. All rights
							reserved</p>
					</div>

					<div class="footer-sns">
						<a href="https://twitter.com/megaboxon" target="_blank"
							title="MEGABOX 트위터 페이지로 이동"><i class="iconset ico-twitter">트위터</i></a>
						<a href="https://www.facebook.com/megaboxon" target="_blank"
							title="MEGABOX 페이스북 페이지로 이동"><i class="iconset ico-facebook">페이스북</i></a>
						<a href="http://instagram.com/megaboxon" target="_blank"
							title="MEGABOX 인스타그램 페이지로 이동"><i
							class="iconset ico-instagram">인스타그램</i></a> <a
							href="https://play.google.com/store/apps/details?id=com.megabox.mop"
							target="_blank" title="MEGABOX 구글플레이 페이지로 이동"><i
							class="iconset ico-googleplay">구글플레이</i></a> <a
							href="https://itunes.apple.com/kr/app/megabox/id894443858?l=ko&amp;ls=1&amp;mt=8"
							target="_blank" title="MEGABOX 앱스토어 페이지로 이동"><i
							class="iconset ico-appstore">앱스토어</i></a>
					</div>
				</div>
			</div>
			<!--// footer-bottom -->
			<div id="layer_looking_theater" class="layer-looking-theater"></div>
		</footer>
		<!--// footer -->

		<!-- 모바일 때만 출력 -->
		<div class="go-mobile" style="display: none;">
			<a href="#" data-url="https://m.megabox.co.kr">모바일웹으로 보기 <i
				class="iconset ico-go-mobile"></i></a>
		</div>
	</div>

	<div class="normalStyle"
		style="display: none; position: fixed; top: 0; left: 0; background: #000; opacity: 0.7; text-indent: -9999px; width: 100%; height: 100%; z-index: 100;">닫기</div>
	<div class="alertStyle"
		style="display: none; position: fixed; top: 0px; left: 0px; background: #000; opacity: 0.7; width: 100%; height: 100%; z-index: 5005;"></div>
</body>


</html>