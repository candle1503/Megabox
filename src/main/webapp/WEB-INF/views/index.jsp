<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/static/css/main.css"	media="all">
<link rel="stylesheet" href="/resources/static/css/megabox.min.css" media="all">
 <link rel="shortcut icon" href="/resources/static/icon/favicon.ico">
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

							<a href="/movie" class="more-movie" title="더 많은 영화보기"> 더 많은
								영화보기 <i class="iconset ico-more-corss gray"></i>
							</a>

							<!-- main-movie-list -->
							<div class="main-movie-list">
								<ol class="list">
									<!-- 3개의 list를  loop 한다-->
									<!-- 박스오피스 시작 -->
									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
									<li name="li_accmAdncList" style="display: none;" class="first">
										<a href="javascript:gfn_moveDetail('20003900')"
										class="movie-list-info" title="영화상세 보기">
											<p class="rank">
												1<span class="ir">위</span>
											</p> <!-- to 개발 : alt 값에 영화 제목 출력 --> <img
											src="https://img.megabox.co.kr/SharedImg/2020/05/07/FPu782r61QMPQ44Yr0YdHbBTwF5Ags94_420.jpg"
											alt="트롤: 월드 투어" class="poster" onerror="noImg(this, 'main');">
											<div class="wrap">
												<div class="summary">
													팝, 록, 클래식, 컨트리, 펑크, 테크노, K-POP까지<br>세상의 모든 음악이 쏟아진다!<br>노래와
													춤을 즐기며 평화로운 나날을 보내던 팝 트롤 ‘파피’와 ‘브랜치’ 그리고 친구들.<br>어느 날
													‘파피’는 자신들 외에도 서로 다른 외모와 노래를 가진 5개의 트롤 마을이 더 있다는 것을 알게 된다.<br>
													<br>모두와 친구가 되어 신나게 지내고 싶은 ‘파피’와 달리,<br>록 트롤 마을의
													여왕 ‘바브’는 록을 제외한 모든 음악을 없애기 위해 다른 트롤 마을들을 하나씩 파괴하기 시작하고<br>‘파피’는
													위기에 빠진 트롤 세계를 구하기 위해 친구들과 위험천만한 모험을 떠나게 되는데…
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
															9<span class="ir">점</span>
														</p>
													</div>
												</div>
											</div>
									</a>
										<div class="btn-util">
											<button type="button" class="button btn-like"
												rpst-movie-no="20003900">
												<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
												751
											</button>
											<div class="case">
												<!-- 개봉 예매가능 기본-->
												<a href="javascript:moveBokdPage('20003900');"
													class="button gblue" title="영화 예매하기">예매</a>
											</div>
										</div>
									</li>
									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
									<li name="li_accmAdncList" style="display: none;" class="">
										<a href="javascript:gfn_moveDetail('01438700')"
										class="movie-list-info" title="영화상세 보기">
											<p class="rank">
												2<span class="ir">위</span>
											</p> <!-- to 개발 : alt 값에 영화 제목 출력 --> <img
											src="https://img.megabox.co.kr/SharedImg/asis/system/mop/poster/2018/C6/013959-C07F-401A-AAC0-CA9A76DB48AE.large.jpg"
											alt="스타 이즈 본" class="poster" onerror="noImg(this, 'main');">
											<div class="wrap">
												<div class="summary">
													나도 몰랐던 내 안의 빛을 찾아낸 그대<br>우리 모습 이대로 영원히 기억할 거야…<br>
													<br>노래에 놀라운 재능을 가졌지만 외모에는 자신이 없는 무명가수 앨리(레이디 가가)는<br>공연을
													하던 바에서 우연히 톱스타 잭슨 메인(브래들리 쿠퍼)을 만나게 된다.<br>자신의 모든 것을
													사랑해주는 잭슨의 도움으로 앨리는 자기 안의 열정을 폭발시키며 최고의 스타로 거듭나지만,<br>잭슨은
													어린 시절의 상처와 예술가적 고뇌 속에서 점점 무너져가는데…
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
															9.1<span class="ir">점</span>
														</p>
													</div>
												</div>
											</div>
									</a>
										<div class="btn-util">
											<button type="button" class="button btn-like"
												rpst-movie-no="01438700">
												<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
												4.3k
											</button>
											<div class="case">
												<!-- 개봉 예매가능 기본-->
												<a href="javascript:moveBokdPage('01438700');"
													class="button gblue" title="영화 예매하기">예매</a>
											</div>
										</div>
									</li>
									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
									<li name="li_accmAdncList" style="display: none;" class="">
										<a href="javascript:gfn_moveDetail('20003100')"
										class="movie-list-info" title="영화상세 보기">
											<p class="rank">
												3<span class="ir">위</span>
											</p> <!-- to 개발 : alt 값에 영화 제목 출력 --> <img
											src="https://img.megabox.co.kr/SharedImg/2020/05/13/L1M5yrfpINDCNXETFojjPzPfJk8jcpxx_420.jpg"
											alt="침입자" class="poster" onerror="noImg(this, 'main');">
											<div class="wrap">
												<div class="summary">
													25년만에 돌아온 동생,<br>나는 그녀가 의심스럽다!<br> <br>얼마 전
													사고로 아내를 잃고 실의에 빠져 있는 건축가 ‘서진’에게<br>25년 전 실종된 동생을 찾았다는
													연락이 온다<br>처음 본 자신을 친근하게 “오빠”라고 부르는 ‘유진’이 어딘가 불편한 ‘서진’과
													달리<br>가족들은 금세 그녀를 받아들인다<br> <br>그런데 ‘유진’이
													돌아온 후 가족들에게 이상한 일들이 벌어지기 시작하고,<br>이를 의심스럽게 여긴 ‘서진’은
													동생의 비밀을 쫓다 자신의 일상을 송두리째 뒤흔든 사건에<br>그녀가 연관되어 있음을 알게
													되는데...<br> <br>추적 끝에 드러나는 충격적인 진실!
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
															7.3<span class="ir">점</span>
														</p>
													</div>
												</div>
											</div>
									</a>
										<div class="btn-util">
											<button type="button" class="button btn-like"
												rpst-movie-no="20003100">
												<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
												596
											</button>
											<div class="case">
												<!-- 개봉 예매가능 기본-->
												<a href="javascript:moveBokdPage('20003100');"
													class="button gblue" title="영화 예매하기">예매</a>
											</div>
										</div>
									</li>
									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
									<li name="li_accmAdncList" style="display: none;" class="">
										<a href="javascript:gfn_moveDetail('20003500')"
										class="movie-list-info" title="영화상세 보기">
											<p class="rank">
												4<span class="ir">위</span>
											</p> <!-- to 개발 : alt 값에 영화 제목 출력 --> <img
											src="https://img.megabox.co.kr/SharedImg/2020/06/15/pjraLryYt5zQ1HEf6axtAdkXRhfhRZTZ_420.jpg"
											alt="결백" class="poster" onerror="noImg(this, 'main');">
											<div class="wrap">
												<div class="summary">
													아빠의 장례식장에서 벌어진 막걸리 농약 살인사건<br>기억을 잃은 채 살인사건의 용의자로 몰린
													엄마 '화자'(배종옥)의 결백을 밝히려는 변호사 '정인'(신혜선)이 '추시장'(허준호)과 마을 사람들이
													숨기려 한 추악한 진실을 파헤쳐가는 무죄 입증 추적극
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
															8.7<span class="ir">점</span>
														</p>
													</div>
												</div>
											</div>
									</a>
										<div class="btn-util">
											<button type="button" class="button btn-like"
												rpst-movie-no="20003500">
												<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
												557
											</button>
											<div class="case">
												<!-- 개봉 예매가능 기본-->
												<a href="javascript:moveBokdPage('20003500');"
													class="button gblue" title="영화 예매하기">예매</a>
											</div>
										</div>
									</li>
									<!-- 박스오피스 종료 -->
									<!-- 박스오피스 시작 -->
									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
									<li name="li_boxoRankList" class="first"><a
										href="javascript:gfn_moveDetail('01693600')"
										class="movie-list-info" title="영화상세 보기">
											<p class="rank">
												1<span class="ir">위</span>
											</p> <!-- to 개발 : alt 값에 영화 제목 출력 --> <img
											src="https://img.megabox.co.kr/SharedImg/2020/06/16/g8krQAvfYaqZvbZTdDipqRErDbiTUr8Z_420.gif"
											alt="온워드: 단 하루의 기적" class="poster"
											onerror="noImg(this, 'main');">
											<div class="wrap">
												<div class="summary">
													마법이 허락된 단 하루, 지금 만나고 싶은 사람이 있나요?<br> <br>마법이 사라진
													세상에 살고 있는 취향과 성격 모두 정반대의 두 형제인<br>철든 동생 ‘이안’(톰 홀랜드)과
													의욕충만 형 ‘발리’(크리스 프랫).<br> <br>‘이안’은 태어나서 얼굴도 본 적
													없는 아빠를 그리워하던 중, 서프라이즈 생일 선물로<br>아빠의 마법 지팡이를 받게 된다. 그러나
													실수로, 아빠의 반쪽만 소환시키는 위기가 발생하는데!!<br> <br>주어진 시간은 단
													하루, 두 형제는 완벽한 모습의 아빠를 찾기 위해 모험을 떠나고<br>마법으로 절벽을 건너고,
													까마귀 봉우리의 힌트를 따라 관문을 통과하지만<br>서로 다른 성격으로 인해, 사사건건 부딪히게
													되고, 위험이 발생하는데…<br>과연 이들은 무사히 기적을 이룰 수 있을까?<br> <br>기적을
													향한 출발, 지금 당신을 만나러 갑니다.<br>
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
															9<span class="ir">점</span>
														</p>
													</div>
												</div>
											</div>
									</a>
										<div class="btn-util">
											<button type="button" class="button btn-like"
												rpst-movie-no="01693600">
												<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
												586
											</button>
											<div class="case">
												<!-- 개봉 예매가능 기본-->
												<a href="javascript:moveBokdPage('01693600');"
													class="button gblue" title="영화 예매하기">예매</a>
											</div>
										</div></li>
									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
									<li name="li_boxoRankList" class=""><a
										href="javascript:gfn_moveDetail('20018900')"
										class="movie-list-info" title="영화상세 보기">
											<p class="rank">
												2<span class="ir">위</span>
											</p> <!-- to 개발 : alt 값에 영화 제목 출력 --> <img
											src="https://img.megabox.co.kr/SharedImg/2020/06/08/s0lDFGluXxYc6hNTqfr1qfOeS2UVw7nc_420.jpg"
											alt="사라진 시간" class="poster" onerror="noImg(this, 'main');">
											<div class="wrap">
												<div class="summary">
													그날 밤, 모든 것이 변했다!<br> <br>한적한 소도시의 시골마을, 외지인 부부가
													의문의 화재 사고로 사망하는 사건이 발생한다.<br>사건 수사를 담당하게 된 형구는 마을 사람들의
													수상한 낌새를 눈치채고 단서를 추적하던 중,<br>하루 아침에 자신의 삶이 송두리째 뒤바뀌는
													충격적인 상황에 빠지게 된다.<br>집도, 가족도, 직업도 내가 알던 모든 것이 사라졌다.<br>과연
													그는 자신의 삶을 되찾을 수 있을 것인가.
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
															0<span class="ir">점</span>
														</p>
													</div>
												</div>
											</div>
									</a>
										<div class="btn-util">
											<button type="button" class="button btn-like"
												rpst-movie-no="20018900">
												<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
												350
											</button>
											<div class="case">
												<!-- 개봉 예매가능 기본-->
												<a href="javascript:moveBokdPage('20018900');"
													class="button gblue" title="영화 예매하기">예매</a>
											</div>
										</div></li>
									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
									<li name="li_boxoRankList" class=""><a
										href="javascript:gfn_moveDetail('20003500')"
										class="movie-list-info" title="영화상세 보기">
											<p class="rank">
												3<span class="ir">위</span>
											</p> <!-- to 개발 : alt 값에 영화 제목 출력 --> <img
											src="https://img.megabox.co.kr/SharedImg/2020/06/15/pjraLryYt5zQ1HEf6axtAdkXRhfhRZTZ_420.jpg"
											alt="결백" class="poster" onerror="noImg(this, 'main');">
											<div class="wrap">
												<div class="summary">
													아빠의 장례식장에서 벌어진 막걸리 농약 살인사건<br>기억을 잃은 채 살인사건의 용의자로 몰린
													엄마 '화자'(배종옥)의 결백을 밝히려는 변호사 '정인'(신혜선)이 '추시장'(허준호)과 마을 사람들이
													숨기려 한 추악한 진실을 파헤쳐가는 무죄 입증 추적극
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
															8.7<span class="ir">점</span>
														</p>
													</div>
												</div>
											</div>
									</a>
										<div class="btn-util">
											<button type="button" class="button btn-like"
												rpst-movie-no="20003500">
												<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
												557
											</button>
											<div class="case">
												<!-- 개봉 예매가능 기본-->
												<a href="javascript:moveBokdPage('20003500');"
													class="button gblue" title="영화 예매하기">예매</a>
											</div>
										</div></li>
									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
									<li name="li_boxoRankList" class=""><a
										href="javascript:gfn_moveDetail('01309400')"
										class="movie-list-info" title="영화상세 보기">
											<p class="rank">
												4<span class="ir">위</span>
											</p> <!-- to 개발 : alt 값에 영화 제목 출력 --> <img
											src="https://img.megabox.co.kr/SharedImg/asis/system/mop/poster/2017/D0/D558A7-DE6C-4178-B3F6-27A023AA5DEE.large.jpg"
											alt="위대한 쇼맨" class="poster" onerror="noImg(this, 'main');">
											<div class="wrap">
												<div class="summary">
													불가능한 꿈, 그 이상의 쇼!<br>쇼 비즈니스의 창시자이자, 꿈의 무대로 전세계를 매료시킨 남자
													‘바넘’의 이야기에서 영감을 받아 탄생한 오리지널 뮤지컬 영화 &lt;위대한 쇼맨&gt;.
													&lt;레미제라블&gt; 이후 다시 뮤지컬 영화로 돌아온 휴 잭맨부터 잭 에프론, 미셸 윌리엄스, 레베카
													퍼거슨, 젠다야까지 할리우드 최고의 배우들이 합류해 환상적인 앙상블을 선보인다. 여기에 &lt;미녀와
													야수&gt; 제작진과 &lt;라라랜드&gt; 작사팀의 합류로 더욱 풍성해진 비주얼과 스토리, 음악까지
													선보일 &lt;위대한 쇼맨&gt;은 ‘우리는 누구나 특별하다’는 메시지로 관객들에게 재미는 물론, 감동까지
													선사할 것이다.<br>THIS IS ME! 우리는 누구나 특별하다!
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
															9.4<span class="ir">점</span>
														</p>
													</div>
												</div>
											</div>
									</a>
										<div class="btn-util">
											<button type="button" class="button btn-like"
												rpst-movie-no="01309400">
												<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
												1.6k
											</button>
											<div class="case">
												<!-- 개봉 예매가능 기본-->
												<a href="javascript:moveBokdPage('01309400');"
													class="button gblue" title="영화 예매하기">예매</a>
											</div>
										</div></li>
									<!-- 박스오피스 종료 -->
									<!-- 박스오피스 시작 -->
									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
									<li name="li_megaScoreList" style="display: none;"
										class="first"><a
										href="javascript:gfn_moveDetail('20004100')"
										class="movie-list-info" title="영화상세 보기">
											<p class="rank">
												1<span class="ir">위</span>
											</p> <!-- to 개발 : alt 값에 영화 제목 출력 --> <img
											src="https://img.megabox.co.kr/SharedImg/2020/04/13/6R6F5khxY400ZPHaixQDjZL7zabPSrLF_420.jpg"
											alt="킹 오브 프리즘 올 스타즈 -프리즘 쇼☆베스트10-" class="poster"
											onerror="noImg(this, 'main');">
											<div class="wrap">
												<div class="summary">
													"마음속의 두근거림이 멈추지 않아!!"<br> <br>모두를 마음을 사로잡은 '킹 오브
													프리즘' 시리즈가,<br>이번엔 킹프리 올스타즈로 다시 스크린에 돌아온다!<br> <br>팬들이
													직접 선정한 <br>주옥같은 프리즘 쇼 베스트 10을 한자리에!<br>상상 초월한 프리즘
													쇼가 당신의 마음을 사로잡는다!<br> <br>과연 당신의 가슴을 설레게 할<br>'프리즘
													쇼'의 주인공은 누가 될 것인가?!<br> <br>60분의 신개념 엔터테인먼트 쇼의
													세계로 여러분을 초대합니다!
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
															9.6<span class="ir">점</span>
														</p>
													</div>
												</div>
											</div>
									</a>
										<div class="btn-util">
											<button type="button" class="button btn-like"
												rpst-movie-no="20004100">
												<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
												360
											</button>
											<div class="case">
												<!-- 개봉 예매가능 기본-->
												<a href="javascript:moveBokdPage('20004100');"
													class="button gblue" title="영화 예매하기">예매</a>
											</div>
										</div></li>
									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
									<li name="li_megaScoreList" style="display: none;" class="">
										<a href="javascript:gfn_moveDetail('20004800')"
										class="movie-list-info" title="영화상세 보기">
											<p class="rank">
												2<span class="ir">위</span>
											</p> <!-- to 개발 : alt 값에 영화 제목 출력 --> <img
											src="https://img.megabox.co.kr/SharedImg/2020/04/16/3OHRKnHHelry9f7WY1vM9qghwK48Sr0I_420.jpg"
											alt="패왕별희 디 오리지널" class="poster"
											onerror="noImg(this, 'main');">
											<div class="wrap">
												<div class="summary">
													어렸을 때부터 함께 경극을 해온 ‘두지’(장국영)와 ‘시투’(장풍의). <br>세상에 둘도 없는
													절친한 아우와 형이지만, <br>‘두지’는 남몰래 ‘시투’에 대한 마음을 품고 있다.<br>
													<br>하지만 ‘시투’는 여인 ‘주샨’(공리)에 마음을 빼앗기고, <br>그로 인해
													‘두지’는 감정의 소용돌이에 빠지게 되는데…<br> <br>사랑과 운명, 아름다움을
													뒤바꾼 화려한 막이 열린다!
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
															9.5<span class="ir">점</span>
														</p>
													</div>
												</div>
											</div>
									</a>
										<div class="btn-util">
											<button type="button" class="button btn-like"
												rpst-movie-no="20004800">
												<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
												1k
											</button>
											<div class="case">
												<!-- 개봉 예매가능 기본-->
												<a href="javascript:moveBokdPage('20004800');"
													class="button gblue" title="영화 예매하기">예매</a>
											</div>
										</div>
									</li>
									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
									<li name="li_megaScoreList" style="display: none;" class="">
										<a href="javascript:gfn_moveDetail('20007800')"
										class="movie-list-info" title="영화상세 보기">
											<p class="rank">
												3<span class="ir">위</span>
											</p> <!-- to 개발 : alt 값에 영화 제목 출력 --> <img
											src="https://img.megabox.co.kr/SharedImg/2020/03/11/Qgl73W9FxEMYJnnaOYPFtyqSrqB3vmJ2_420.jpg"
											alt="라라랜드" class="poster" onerror="noImg(this, 'main');">
											<div class="wrap">
												<div class="summary">
													황홀한 사랑, 순수한 희망, 격렬한 열정… <br>이 곳에서 모든 감정이 폭발한다!<br>꿈을
													꾸는 사람들을 위한 별들의 도시 ‘라라랜드’. 재즈 피아니스트 ‘세바스찬’(라이언 고슬링)과 배우 지망생
													‘미아’(엠마 스톤), 인생에서 가장 빛나는 순간 만난 두 사람은 미완성인 서로의 무대를 만들어가기
													시작한다.
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
															9.5<span class="ir">점</span>
														</p>
													</div>
												</div>
											</div>
									</a>
										<div class="btn-util">
											<button type="button" class="button btn-like"
												rpst-movie-no="20007800">
												<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
												1.2k
											</button>
											<div class="case">
												<!-- 개봉 예매가능 기본-->
												<a href="javascript:moveBokdPage('20007800');"
													class="button gblue" title="영화 예매하기">예매</a>
											</div>
										</div>
									</li>
									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
									<li name="li_megaScoreList" style="display: none;" class="">
										<a href="javascript:gfn_moveDetail('01309400')"
										class="movie-list-info" title="영화상세 보기">
											<p class="rank">
												4<span class="ir">위</span>
											</p> <!-- to 개발 : alt 값에 영화 제목 출력 --> <img
											src="https://img.megabox.co.kr/SharedImg/asis/system/mop/poster/2017/D0/D558A7-DE6C-4178-B3F6-27A023AA5DEE.large.jpg"
											alt="위대한 쇼맨" class="poster" onerror="noImg(this, 'main');">
											<div class="wrap">
												<div class="summary">
													불가능한 꿈, 그 이상의 쇼!<br>쇼 비즈니스의 창시자이자, 꿈의 무대로 전세계를 매료시킨 남자
													‘바넘’의 이야기에서 영감을 받아 탄생한 오리지널 뮤지컬 영화 &lt;위대한 쇼맨&gt;.
													&lt;레미제라블&gt; 이후 다시 뮤지컬 영화로 돌아온 휴 잭맨부터 잭 에프론, 미셸 윌리엄스, 레베카
													퍼거슨, 젠다야까지 할리우드 최고의 배우들이 합류해 환상적인 앙상블을 선보인다. 여기에 &lt;미녀와
													야수&gt; 제작진과 &lt;라라랜드&gt; 작사팀의 합류로 더욱 풍성해진 비주얼과 스토리, 음악까지
													선보일 &lt;위대한 쇼맨&gt;은 ‘우리는 누구나 특별하다’는 메시지로 관객들에게 재미는 물론, 감동까지
													선사할 것이다.<br>THIS IS ME! 우리는 누구나 특별하다!
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
															9.4<span class="ir">점</span>
														</p>
													</div>
												</div>
											</div>
									</a>
										<div class="btn-util">
											<button type="button" class="button btn-like"
												rpst-movie-no="01309400">
												<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
												1.6k
											</button>
											<div class="case">
												<!-- 개봉 예매가능 기본-->
												<a href="javascript:moveBokdPage('01309400');"
													class="button gblue" title="영화 예매하기">예매</a>
											</div>
										</div>
									</li>
									<!-- 박스오피스 종료 -->
								</ol>
							</div>
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

</body>


</html>