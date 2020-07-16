<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/static/css/main.css"	media="all">
<link rel="stylesheet" href="/resources/static/css/megabox.min.css" media="all">
 <link rel="shortcut icon" href="/resources/static/icon/favicon.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<c:import url="./template/header.jsp"></c:import>
	<div class="skip" title="스킵 네비게이션">
		<a href="#contents" title="본문 바로가기">본문 바로가기</a> <a href="#footer"
			title="푸터 바로가기">푸터 바로가기</a>
	</div>
	</div>

	<!-- <div class="body-wrap"> -->

		<form id="loginForm">
			<input type="hidden" name="redisKey" value=""> <input
				type="hidden" name="menuId" value=""> <input type="hidden"
				name="mappingId" value=""> <input type="hidden"
				name="rtnParam" value=""> <input type="hidden"
				name="certType" value=""> <input type="hidden" name="preUrl"
				value="">

			<!-- 좌석도 로그인 프로세스 여부PARAM-->
			<input type="hidden" name="bokdLoginAt" value=""> <input
				type="hidden" name="bokdLoginParam" value=""> <input
				type="hidden" name="nonMbCertRedisKey" value=""> <input
				type="hidden" name="nonMbCertedMblpNo" value=""> <input
				type="hidden" name="reloadYn" value=""> <input type="hidden"
				name="validDataRevisnYn" value="N">

		</form>

		<!-- 로그인 레이어팝업 시작 -->
		<!-- 화면ID  M-ME-LO-01 -->
		<!-- 화면ID  M-ME-CC-01 -->
		<div style="display: none;">
			<a id="loginPupupATag" href="#layer_login_select"
				class="button active btn-modal-open" w-data="850" h-data="484"></a>
		</div>

		<section id="layer_login_select" class="modal-layer"
			style="z-index: 501;">
			<a href="" class="focus">레이어로 포커스 이동 됨</a><a href="#" class="focus"
				title="레이어로 포커스 이동 됨">레이어로 포커스 이동 됨<!--레이어로 포커스 이동 됨--></a>
			<div class="wrap"
				style="width: 850px; height: 556px; margin-left: -425px; margin-top: -278px;">
				<header class="layer-header">
					<h3 class="tit">로그인</h3>
				</header>

				<div class="layer-con" style="height: 511px;">

					<div class="tab-list tab-layer">
						<ul>
							<li class="on"><a href="#login_tab_01" title="회원 로그인 선택">회원
									로그인<!--회원 로그인-->
							</a></li>
							<li><a href="#login_tab_02" title="비회원 로그인 선택">비회원 로그인<!--비회원 로그인--></a></li>
						</ul>
					</div>

					<!-- tab-cont-wrap -->
					<div class="tab-cont-wrap">
						<!-- tab 회원 로그인 -->
						<div id="login_tab_01" class="tab-cont on">
							<a href="" class="ir"></a><a href="" class="ir" title="로그인"></a>

							<div class="login-member col-2">
								<!-- col-wrap -->
								<div class="col-wrap">
									<div class="col left">
										<div class="login-input-area">
											<input autocomplete="off" id="ibxLoginId" maxlength="20"
												type="text" placeholder="아이디" title="아이디를 입력하세요"
												class="input-text strTrim">
											<!--아이디-->
											<!--아이디를 입력하세요-->
											<input autocomplete="off" id="ibxLoginPwd" maxlength="20"
												type="password" placeholder="비밀번호" title="비밀번호를 입력하세요"
												class="input-text mt15">
											<!--비밀번호-->
											<!--비밀번호를 입력하세요-->
											<div class="alert"></div>

											<!-- chk-util -->
											<div class="chk-util">
												<div class="left">
													<input id="chkIdSave" type="checkbox"> <label
														for="chkIdSave">아이디 저장<!--아이디 저장--></label>
												</div>

												<div class="right">
													<div class="hp-ad">
														<a
															href="https://www.sepay.org/spm/join?regSiteCode=XF&amp;ctgCode=1&amp;subCode=1"
															title="휴대폰 간편 로그인 선택" target="_blank"><span>휴대폰
																간편로그인<!--휴대폰 간편로그인-->
														</span> <em>광고<!--광고--></em></a>
													</div>
												</div>
											</div>
											<!--// chk-util -->

											<button id="btnLogin" type="button"
												class="button purple large btn-login" disabled="disabled">
												로그인
												<!--로그인-->
											</button>

											<div class="link">
												<a href="/user-find" title="ID/PW 찾기 선택">ID/PW 찾기<!--ID/PW 찾기--></a>
												<a href="/join" title="회원가입 선택">회원가입<!--회원가입--></a> <a
													href="/on/oh/ohg/MbLogin/viewNonMbLogin.rest"
													title="비회원 예매확인 선택">비회원 예매확인<!--비회원 예매확인--></a>
											</div>

											<div class="sns-login">
												<a href="javaScript:void(0)" lnkgty="FACEBOOK"
													title="페이스북으로 로그인 선택"><img
													src="../../../static/pc/images/member/ico-facebook.png"
													alt="페이스북"> <!--페이스북--> 페이스북으로 로그인<!--페이스북으로 로그인--></a> <a
													href="javaScript:void(0)" lnkgty="NAVER"
													title="네이버로 로그인 선택"><img
													src="../../../static/pc/images/member/ico-naver.png"
													alt="네이버"> <!--네이버--> 네이버로 로그인<!--네이버로 로그인--></a> <a
													href="javaScript:void(0)" lnkgty="KAKAO"
													title="카카오톡으로 로그인 선택"><img
													src="../../../static/pc/images/member/ico-kakao.png"
													alt="카카오톡"> <!--카카오톡--> 카카오톡으로 로그인<!--카카오톡으로 로그인--></a> <a
													href="javaScript:void(0)" lnkgty="PAYCO"
													title="페이코로 로그인 선택"><img
													src="../../../static/pc/images/member/ico-payco.png"
													alt="페이코"> <!--페이코--> 페이코로 로그인<!--페이코로 로그인--></a>
											</div>
										</div>
									</div>

									<div class="col right">
										<div class="login-ad" id="Rw6jtk0hQTuOBSzFbvGGlw"></div>
									</div>
								</div>
								<!--// col-wrap -->
							</div>
						</div>
						<!--// tab 회원 로그인 -->

						<!-- tab 비회원 로그인 -->
						<div id="login_tab_02" class="tab-cont">
							<a href="" class="ir"></a><a href="" class="ir" title="비회원 로그인"></a>

							<div class="login-member col-2">
								<!-- col-wrap -->
								<div class="col-wrap">
									<div class="col left">

										<div class="no-member-login-table">
											<table
												summary="이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표">
												<caption>
													이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표
													<!--이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표-->
												</caption>
												<colgroup>
													<col style="width: 110px;">
													<col>
												</colgroup>
												<tbody>
													<tr>
														<th scope="row"><label for="ibxNonMbNm">이름<!--이름--></label>
														</th>
														<td><input maxlength="20" id="ibxNonMbNm" type="text"
															placeholder="이름" class="input-text"> <!--이름--></td>
													</tr>
													<tr>
														<th scope="row"><label for="ibxNonMbByymmdd">생년월일<!--생년월일--></label>
														</th>
														<td><input maxlength="6" id="ibxNonMbByymmdd"
															type="text" placeholder="생년월일 앞6자리" class="input-text">
															<!--주민번호 앞 6자리--></td>
													</tr>
													<tr>
														<th scope="row"><label for="ibxNonMbTelno">휴대폰번호<!--휴대폰번호--></label>
														</th>
														<td>
															<div class="hp-input">
																<input maxlength="11" id="ibxNonMbTelno" type="text"
																	placeholder="- 없이 입력" class="input-text">
																<!--- 없이 입력-->
																<button id="nonMbCertNoSend" type="button"
																	class="button gray" disabled="disabled">
																	인증요청
																	<!--인증요청-->
																</button>
															</div>
															<div id="mblpInput-error-text" class="alert"></div>
														</td>
													</tr>
													<tr id="nonMbCertRow">
														<th scope="row"><label for="mblpCharCertNo">인증번호<!--인증번호--></label>
														</th>
														<td>
															<div class="chk-num">
																<div class="line">
																	<input maxlength="4" id="mblpCharCertNo" type="text"
																		class="input-text">

																	<div class="time-limit" id="timer">3:00</div>
																</div>

																<button id="btnMblpCharCert" type="button"
																	class="button purple" disabled="disabled">
																	확인
																	<!--확인-->
																</button>
															</div>
															<div id="nonMbCert-error-text" class="alert"></div>
														</td>
													</tr>
													<tr>
														<th scope="row"><label for="ibxNonMbPwd">비밀번호</label>
															<!--비밀번호--></th>
														<td><input maxlength="4" id="ibxNonMbPwd"
															type="password" placeholder="비밀번호(숫자 4자리)"
															class="input-text"> <!--비밀번호(숫자 4자리)--></td>
													</tr>
													<tr>
														<th scope="row"><label for="ibxNonMbPwdConfirm">비밀번호<!--비밀번호-->확인<!--확인--></label>
														</th>
														<td><input maxlength="4" id="ibxNonMbPwdConfirm"
															type="password" placeholder="비밀번호(숫자 4자리) 확인"
															class="input-text"> <!--비밀번호(숫자 4자리) 확인-->
															<div id="nonMbPwdErrText" class="alert"></div></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>

									<div class="col right">

										<div class="no-member-privacy-rule">
											<p class="tit">
												비회원예매 개인정보 처리방침
												<!--비회원예매 개인정보 처리방침-->
											</p>

											<div class="cont">
												<dl>
													<dt>수집목적</dt>
													<dd>비회원예매 서비스 제공 / 이용자식별 / 구매 및 결제</dd>
													<dt>수집항목</dt>
													<dd>이름, 생년월일, 휴대폰번호, 비밀번호</dd>
													<dt>보유기간</dt>
													<dd>관람 또는 취소 후 7일 이내</dd>
													<!--<dt>수집목적</dt><dd>비회원예매 서비스 제공 / 이용자식별 / 구매 및  결제</dd><dt>수집항목</dt><dd>이름, 생년월일, 휴대폰번호, 비밀번호</dd><dt>보유기간</dt><dd>관람 또는 취소 후 7일 이내</dd>-->
												</dl>

												<div class="btn-agree">
													<input type="radio" id="chkNonMbBokdPersonInfoProcTrue"
														name="chkNonMbBokdPersonInfoProc"> <label
														for="chkNonMbBokdPersonInfoProcTrue">동의<!--동의--></label> <input
														type="radio" id="chkNonMbBokdPersonInfoProcFalse"
														name="chkNonMbBokdPersonInfoProc" class="ml20"> <label
														for="chkNonMbBokdPersonInfoProcFalse">미동의<!--미동의--></label>
												</div>

												<ul class="dot-list gblue mt20">
													<li class="font-gblue">정보수집에 동의를 거부할 수 있으며, 동의하지 않을 경우
														비회원 예매서비스를 이용하실 수 없습니다.<!--정보수집에 동의를 거부할 수 있으며, 동의하지 않을 경우 비회원 예매서비스를 이용하실 수 없습니다.-->
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<!--// col-wrap -->

								<div class="btn-group">
									<button id="btnChkNonMbLogin" type="button"
										class="button purple" disabled="disabled">확인</button>
									<a id="aNonMbLogin" href="#layer_no_member_chk"
										class="button purple btn-modal-open" w-data="600" h-data="320"
										style="display: none;"></a>
								</div>
							</div>
						</div>
						<!--// tab 비회원 로그인 -->
					</div>
					<!--// tab-cont-wrap -->
				</div>

				<button type="button" class="btn-modal-close">
					레이어 닫기
					<!--레이어 닫기-->
				</button>
			</div>
		</section>

		<section id="layer_no_member_chk" class="modal-layer">
			<a href="" class="focus">레이어로 포커스 이동 됨</a>
			<div class="wrap">
				<header class="layer-header">
					<h3 class="tit">알림</h3>
				</header>

				<div class="layer-con">
					<p>티켓 발권을 위한 입력정보를 확인해 주세요.</p>

					<div class="table-wrap v1">
						<table class="data-table"
							summary="이름, 생년월일, 휴대폰번호 항목을 가진 비회원 티켓 발권을 위한 입력정보 표">
							<caption>이름, 생년월일, 휴대폰번호 항목을 가진 비회원 티켓 발권을 위한 입력정보 표</caption>
							<colgroup>
								<col style="width: 80px;">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row" class="a-l">이름</th>
									<td></td>
								</tr>
								<tr>
									<th scope="row" class="a-l">생년월일</th>
									<td></td>
								</tr>
								<tr>
									<th scope="row" class="a-l">휴대폰번호</th>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

				<div class="btn-group-fixed">
					<button type="button" class="button close-layer small">취소</button>
					<button id="btnNonMbLogin" type="button"
						class="button purple small" disabled="disabled">확인</button>
				</div>

				<button id="btnNonMbModalClose" type="button"
					class="btn-modal-close">레이어 닫기</button>
			</div>
		</section>



		<form name="detailForm" id="detailForm" method="post">
			<input type="hidden" name="rpstMovieNo" id="rpstMovieNo">
		</form>
		<form name="boxoForm" id="boxoForm" method="post"
			onsubmit="return fn_chkBoxOffice();">
			<input type="hidden" name="ibxMovieNmSearch" id="ibxMovieNmSearch">
		</form>

		<div class="container main-container area-ad">

			<!-- contents -->
			<div id="contents">

				<!-- main-page -->
				<div class="main-page">
					<!-- 공지 팝업(전면배너) -->
					<!-- 공지 팝업(전면배너) BOC01 : 홈페이지, BOC03 : 홈페이지+모바일웹 -->
					<div class="main-notice-layer" style="display: none;">
						<!-- 배너이미지 업로드일 경우 -->
						<div class="img">
							<a title="목금토일 6천원 할인 3차"
								href="https://www.megabox.co.kr/event/detail?eventNo=8428"><img
								src="https://img.megabox.co.kr/SharedImg/frontBanner/2020/06/11/lCOvZ5l5G6NIfLUgr93ToGDv80WaYFSY.jpg"
								alt="목금토일 6천원 할인 3차" onerror="noImg(this, 'main');"></a>
						</div>
						<div class="util">
							<input type="checkbox" id="no_see"> <label for="no_see"
								id="label_no_see">다시 보지 않기</label>
							<button type="button" class="btn-close-main-notice">메인
								공지 닫기</button>
						</div>
					</div>
					<!--// 공지 팝업 -->

					<!-- 로그인 후에만 출력 -->

					<!-- section main-movie : 영화 -->
					<div id="main_section01" class="section main-movie on">
						<div class="bg">
							<div class="bg-pattern"></div>
							<img
								src="https://img.megabox.co.kr/SharedImg/2020/06/04/P1t6rfKQJgYoBZ27S6lbipgHyrCquB5a_380.jpg"
								alt="리뷰포스터-NONIMAX.jpg" onerror="noImg(this, 'main');">
						</div>

						<!-- cont-area  -->
						<div class="cont-area">

							<!-- tab-sorting -->
							<div class="tab-sorting">
								<button type="button" class="on" sort="boxoRankList"
									name="btnSort">박스오피스</button>
								<!-- 2020.03.16. 김민영K 삭제요청.
						<button type="button" sort="accmAdncList" name="btnSort">누적관객순</button>
						<button type="button" sort="megaScoreList" name="btnSort">메가스코어순</button>
						-->
							</div>
							<!-- tab-sorting -->

							<a href="./movie/movieList" class="more-movie" title="더 많은 영화보기"> 더 많은
								영화보기 <i class="iconset ico-more-corss gray"></i>
							</a>

							<!-- main-movie-list -->
							<div class="main-movie-list">
								<ol class="list">
									
									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
									<c:forEach items="${movie }" var="movie" varStatus="vr" end="3">
									<c:if test="${vr.count eq 1 }">
									<li name="li_boxoRankList" class="first">
									</c:if>
									<c:if test="${vr.count ne 1 }">
									<li name="li_boxoRankList">
									</c:if>
									<a
										href="./movie/movieSelect?movieNum=${movie.movieNum }"
										class="movie-list-info" title="영화상세 보기">
											<p class="rank">
												${vr.count }<span class="ir">위</span>
											</p> <!-- to 개발 : alt 값에 영화 제목 출력 --> <img
											src="${pageContext.request.contextPath}/upload/movie/${movie.movieFileVO.fileName}"
											alt="${movie.name }" class="poster"
											onerror="noImg(this, 'main');">
											<div class="wrap">
												<div class="summary">
													${movie.contents }
												</div>
												<!--
														관람 전이 더 높을 때
														<div class="my-score small">

														관람 후가 더 높을 때
														<div class="my-score big">

														관람 후가 더 같을 때
														<div class="my-score equal">
													 -->
												<div class="score">
													<div class="preview">
														<p class="tit">관람평</p>
														<p class="number">
														<c:if test="${movie.rate ne 0}">
															<fmt:formatNumber value="${movie.rate}" pattern="#,###.0"/><span class="ir">점</span>
														</c:if>
														<c:if test="${movie.rate eq 0 }">
															0 <span class="ir">점</span>
														</c:if>
														</p>
													</div>
												</div>
											</div>
									</a>
										<div class="btn-util">
											<button type="button" class="button btn-like"
												rpst-movie-no="01693600">
												<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
												${movie.like }
											</button>
											<div class="case">
												<!-- 개봉 예매가능 기본-->
												<a href="javascript:moveBokdPage('01693600');"
													class="button gblue" title="영화 예매하기">예매</a>
											</div>
										</div></li>
										</c:forEach>
									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

								
								</ol>
							</div>
							<script type="text/javascript">
							$(".movie-list-info").on("mouseover", function(e){
								
								$(this).children('.wrap').css("display", "block");
								$(this).children('.wrap').css("opacity", "1");
							})
							$(".movie-list-info").on("mouseleave", function(e){
								$(this).children('.wrap').css("display", "none");
								$(this).children('.wrap').css("opacity", "0");
							})
							</script>
							<!--// main-movie-list -->

							<div class="search-link">
								<div class="cell">
									<div class="search">
										<input type="text" placeholder="영화명을 입력해 주세요" title="영화 검색"
											class="input-text" id="movieName">
										<button type="button" class="btn" id="btnSearch">
											<i class="iconset ico-search-w"></i> 검색
										</button>
									</div>
								</div>

								<div class="cell">
									<a href="/booking/timetable" title="상영시간표 보기"><i
										class="iconset ico-schedule-main"></i> 상영시간표</a>
								</div>
								<div class="cell">
									<a href="/movie" title="박스오피스 보기"><i
										class="iconset ico-boxoffice-main"></i> 박스오피스</a>
								</div>
								<div class="cell">
									<a href="/booking" title="빠른예매 보기"><i
										class="iconset ico-quick-reserve-main"></i> 빠른예매</a>
								</div>
							</div>
							<!-- 2019-02-22 추가 : 마우스 아이콘 영역 추가 -->
							<div class="moving-mouse">
								<!--  <i class="iconset ico-mouse"></i> -->
								<img class="iconset" alt=""
									src="../../../static/pc/images/common/ico/ico-mouse.png"
									style="top: 10px;">
							</div>
							<!--// 2019-02-22 추가 : 마우스 아이콘 영역 추가 -->
						</div>
						<!--// cont-area  -->
					</div>
					<!--// section main-movie : 영화 -->

					<!-- section main-info : 메가박스 안내 -->
					<div id="main_section04" class="section main-info">

						<h2 class="tit">쌍용 씨네시티 안내</h2>

						<div class="info-special">
							<a href="/specialtheater/boutique" title="부티크 페이지로 이동"
								class="bg-boutique">부티크</a> <a href="/specialtheater/mx"
								title="MX 페이지로 이동" class="bg-mx">MX</a> <a
								href="/specialtheater/comfort" title="COMFORT 페이지로 이동"
								class="bg-comfort">COMFORT</a> <a
								href="/specialtheater/megakids" title="MEGA KIDS BOX 페이지로 이동"
								class="bg-kids">MEGA KIDS BOX</a> <a
								href="/specialtheater/firstclub" title="THE FIRST CLUB 페이지로 이동"
								class="bg-first">THE FIRST CLUB</a>
							<!-- <a href="/specialtheater/balcony" title="발코니 페이지로 이동" class="bg-balcony">발코니</a>-->
						</div>

						<!-- info-notice -->
						<div class="info-notice">
							<div class="wrap">
								<p class="tit">지점</p>
								<p class="link">
									<a href="/support/notice/detail?artiNo=10099&amp;bbsNo=9"
										title="공지사항 상세보기"> <strong> [홍대] </strong> [홍대] 쌍용강북교육센터와
										함께하는 이벤트
									</a>
								</p>

								<p class="date">2020.06.17</p>

								<p class="more">
									<a href="/support/notice" title="전체공지 더보기">더보기 <i
										class="iconset ico-arr-right-gray"></i></a>
								</p>
							</div>
						</div>
						<!--// info-notice -->

						<!--// section main-info : 메가박스 안내 -->

						<!-- main-bottom-ad : 메인 하단 광고 영역 -->
						<div class="main-bottom-ad">
							<script data-id="K3I6ffWoQiqG93YqqRV0LA"
								name="megabox_p/main/main@main_bottom_1100x227?mlink=342"
								src="//cast.imp.joins.com/persona.js" async=""></script>
							<script
								src="//cast.imp.joins.com/body/K3I6ffWoQiqG93YqqRV0LA/ctd1SjLS0pFootcP6YRZToHmQNtHyjYW5zPeR5KvzXWEAM4qWzAZAbZfUWVaNDF3RlIxS1RVQ3FDS2hjVWNRAstB17q0AhD3dgPLQde6tAIQ93Y.js"></script>
							<div id="K3I6ffWoQiqG93YqqRV0LA">
								<iframe
									src="//ad.imp.joins.com/html/megabox_p/main/main@main_bottom_1100x227?_cid=K3I6ffWoQiqG93YqqRV0LA&amp;_uid=ctd1SjLS0pFootcP6YRZToHmQNtHyjYW5zPeR5KvzXWEAM4qWzAZAbZfUWVaNDF3RlIxS1RVQ3FDS2hjVWNRAstB17q0AhD3dgPLQde6tAIQ93Y&amp;_ref=https%3A%2F%2Fwww.megabox.co.kr%2F"
									title="메인 하단 배너영역" height="227px" width="100%" name="mliframe"
									scrolling="no" frameborder="0" topmargin="0" leftmargin="0"
									marginwidth="0" marginheight="0"></iframe>
							</div>
						</div>
						<!--// main-bottom-ad : 메인 하단 광고 영역 -->
					</div>
				</div>
				<!--// contents -->

			</div>
			<!--// container -->

			<!-- 		</div> -->




			<section id="saw_movie_regi" class="modal-layer">
				<a href="" class="focus">레이어로 포커스 이동 됨</a> <input type="hidden"
					id="isLogin">
				<div class="wrap">
					<header class="layer-header">
						<h3 class="tit">본 영화 등록</h3>
					</header>

					<div class="layer-con">
						<p class="reset">발권하신 티켓 하단의 거래번호 또는 예매번호를 입력해주세요.</p>

						<div class="pop-gray mt10 mb30">
							<label for="movie_regi" class="mr10">거래번호 또는 예매번호</label> <input
								type="text" id="movie_regi" class="input-text w280px numType"
								maxlength="20" placeholder="숫자만 입력해 주세요" title="티켓 거래번호 입력">
							<button class="button gray ml05" id="regBtn">등록</button>
						</div>

						<div class="box-border v1 mt30">
							<p class="tit-box">이용안내</p>

							<ul class="dot-list">
								<li>극장에서 예매하신 내역을 본 영화(관람이력)로 등록하실 수 있습니다.</li>
								<li>예매처를 통해 예매하신 고객님은 극장에서 발권하신 티켓 하단의 온라인 예매번호 <br>12자리를
									입력해주세요.(Yes24, 네이버, 맥스무비, 인터파크, SKT, KT, 다음)
								</li>
								<li>본 영화 등록은 관람인원수 만큼 등록가능하며, 동일 계정에 중복등록은 불가합니다.</li>
								<li>상영시간 종료 이후 등록 가능합니다.</li>
								<li>본 영화로 수동 등록한 내역은 이벤트 참여 및 포인트 추후 적립이 불가합니다.</li>
							</ul>
						</div>
					</div>

					<div class="btn-group-fixed">
						<button type="button" class="button purple close-layer">닫기</button>
					</div>

					<button type="button" class="btn-modal-close">레이어 닫기</button>
				</div>
			</section>

			<div class="quick-area">
				<a href="" class="btn-go-top" title="top">top</a>
			</div>
			
			<c:import url="./template/footer.jsp"></c:import>
			

</body>

</html>