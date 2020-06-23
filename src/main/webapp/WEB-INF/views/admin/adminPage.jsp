<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ko">
<head>

<title>나의메가박스 | 라이프씨어터, 메가박스</title>
<link rel="shortcut icon" href="/resources/icon/favicon.ico">
<link rel="stylesheet" href="/resources/css/megabox.min.css" media="all">
<link rel="stylesheet" href="/resources/css/myPage.css" media="all">
</head>

<body>
<c:import url="../template/header.jsp"></c:import>
	<div class="body-wrap">


		<div class="container has-lnb">
			<div class="page-util">
				<div class="inner-wrap" id="myLoaction">
					<div class="location">
						<span>Home</span> <a href="#" title="관리자 페이지">관리자 페이지</a>
					</div>
				</div>
			</div>

			<div class="inner-wrap">

				<div class="lnb-area">
					<nav id="lnb">
						<p class="tit on">
							<a href="#" title="나의 메가박스">관리자 목록</a>
						</p>

						<ul>
							<li class=""><a href="/admin/memberList" title="회원 리스트">회원 리스트</a></li>
							<li><a href="/admin/movie" titel="영화 관리">영화 관리</a></li>
							<li><a href="/admin/theather" title="영화관 관리">영화관 관리</a></li>
							<li><a href="/admin/booking" title="예약 관리">예약 관리</a></li>
						</ul>
					</nav>
				</div>

				<div id="contents" class="">

					<div class="my-megabox-main">

						<div class="my-magabox-info ">
							<!-- top -->
							<div class="top">
								<div class="photo" id="myPhoto">
									<div class="wrap">
										<form name="fileForm" style="display: none;">
											<input type="file" name="file"> <input type="hidden"
												name="fileMbNo" value="2306892">
										</form>

										<i class="iconset ico-add-photo"></i>

										<button type="button" class="img">
											
										</button>
									</div>
								</div>

								<div class="grade">
									<p class="name">
										전재호님은<br>일반등급입니다.
									</p>

									<div class="link">
										<a href="./passwordCheck" title="개인정보수정 페이지로 이동">개인정보수정
											<i class="iconset ico-arr-right-reverse"></i>
										</a> <a href="#layer_before_grade" id="bfrClassSearch"
											class="btn-modal-open" w-data="400" h-data="400"
											title="지난등급 상세보기"> 지난등급조회 <i
											class="iconset ico-arr-right-reverse"></i>
										</a>
									</div>
								</div>

								<div class="txt-vip-coupon" style="display: none;">
									<i class="iconset ico-exclamation-white"></i> 아직 VIP쿠폰북을 발급하지
									않으셨네요! <a href="/vipcoupon/guide" title="VIP쿠폰북 발급 페이지로 가기">VIP쿠폰북
										발급하기</a>
								</div>

								<div class="special-membership" id="myMembership">
									<p class="tit">Special Membership</p>

									<!-- 스폐셜 가입 안했을 때 -->
									<div class="join">
										<div class="box">
											<i class="iconset ico-film-society"></i> <span>필름</span>
										</div>
									</div>
								</div>
							</div>
							<!--// top -->

							<!-- bottom -->
							<div class="bottom">
								<div class="point" id="myPoint">
									<div class="tit-area">
										<p class="tit">총 보유 포인트</p>
										<a href="/mypage/point-list" class="more"
											title="포인트 이용내역 페이지로 이동"><i
											class="iconset ico-arr-right-gray">더보기</i></a>
									</div>

									<div class="cont-area">
										<div class="total">
											<p class="now">11,500 P</p>

											<div class="division" style="">
												<div class="cell">
													<p class="old">
														<span>구 포인트</span> <em>10,800 P</em>
													</p>

													<p class="new">
														<span>신 포인트</span> <em>700 P</em>
													</p>
												</div>
											</div>
										</div>

										<div class="change">
											<p class="save">
												<span>적립예정</span> <em>0 P</em>
											</p>

											<div class="del">
												<span>소멸예정</span> <em>0 P</em>
											</div>
										</div>
									</div>
								</div>

								<!-- theater -->
								<div class="theater" id="myFaverBrch">
									<div class="tit-area">
										<p class="tit">선호극장</p>
										<a href="" class="right" title="선호극장 변경">변경 <i
											class="iconset ico-arr-right-reverse"></i></a>
									</div>

									<div class="list">
										<div class="no-list" style="display: none;">
											<span>선호극장</span>을 설정하세요.
										</div>
										<ol>
											<li><em>1</em> <span>상암월드컵경기장</span></li>
											<li><em>2</em> <span>고양스타필드</span></li>
										</ol>
									</div>
								</div>
								<!--// theater -->

								<!-- coupon -->
								<div class="coupon" id="myCoupon">
									<div class="tit-area">
										<p class="tit">관람권/쿠폰</p>

										<a href="/mypage/movie-coupon" class="more"><i
											class="iconset ico-arr-right-gray" title="영화관람권 페이지로 이동">더보기</i></a>
									</div>

									<div class="list">
										<ul>
											<li><span>영화관람권</span> <em>0 매</em></li>
											<li><span>스토어교환권</span> <em>0 매</em></li>
											<li><span>할인/제휴쿠폰</span> <em>8 매</em></li>
										</ul>
									</div>
								</div>
								<!--// coupon -->
							</div>
							<!--// bottom -->
						</div>
						<!--// my-magabox-info -->

						<!-- 레이어 : 지난등급조회 -->
						<section id="layer_before_grade" class="modal-layer">
							<a href="" class="focus">레이어로 포커스 이동 됨</a>
							<div class="wrap">
								<header class="layer-header">
									<h3 class="tit">지난등급조회</h3>
								</header>

								<div class="layer-con">

									<!-- layer-before-grade -->
									<div class="layer-before-grade">
										<p class="name">
											전재호님은<br>일반등급입니다.
										</p>

										<div class="table-wrap mt10">
											<table class="data-table a-c" summary="지난등급조회 목록 표">
												<caption>지난등급조회 목록 표</caption>
												<colgroup>
													<col style="width: 50%;">
													<col style="width: 50%;">
												</colgroup>
												<thead>
													<tr>
														<th scope="col">승급 년도</th>
														<th scope="col">등급</th>
													</tr>
												</thead>
												<tbody>
												</tbody>
											</table>
										</div>

										<ul class="dash-list mt10">
											<li>지난 5년 간의 회원 등급을 확인하실 수 있습니다.</li>
										</ul>
									</div>
									<!--// layer-before-grade -->
								</div>

								<button type="button" class="btn-modal-close">레이어 닫기</button>
							</div>
						</section>
						<!--// 레이어 : 지난등급조회 -->

						<!-- vip 일때만 출력 : my-stamp-mission -->

						<!--// vip 일때만 출력 : my-stamp-mission -->

						<!-- column -->
						<div class="column mt70">
							<!-- left -->
							<div class="col left" id="myStory">
								<div class="tit-util">
									<h2 class="tit small">나의 무비스토리</h2>

									<div class="right">
										<a href="#saw_movie_regi"
											class="button gray-line small btn-modal-open" w-data="600"
											h-data="470" title="본 영화 등록">본 영화 등록</a>
									</div>
								</div>

								<div class="box-border link-movie-story">
									<a href="/mypage/moviestory?cd=sm" title="본 영화 탭으로 이동"> <em>33</em>
										<span>본 영화</span>
									</a> <a href="/mypage/moviestory?cd=one" title="한줄평 탭으로 이동"> <em>0</em>
										<span>한줄평</span>
									</a> <a href="/mypage/moviestory?cd=lm" title="보고싶어 탭으로 이동"> <em>0</em>
										<span>보고싶어</span>
									</a> <a href="/mypage/moviestory?cd=mp" title="무비포스트 탭으로 이동"> <em>0</em>
										<span>무비포스트</span>
									</a>
								</div>
							</div>
							<!--// left -->

						</div>
						<!--// column -->

						<div id="myBokd">
							<div class="tit-util mt70">
								<h2 class="tit small">나의 예매내역</h2>

								<a href="/mypage/bookinglist?tab=01" class="more"
									title="나의 예매내역 더보기">더보기 <i
									class="iconset ico-arr-right-gray"></i></a>
							</div>

							<!-- my-reserve-history -->
							<div class="my-reserve-history">
								<ul>
									<li class="no-result">
										<div class="no-history-reservation">예매 내역이 없습니다.</div>
									</li>
								</ul>
							</div>
							<!--// my-reserve-history -->
						</div>

						<div id="myPurc">
							<div class="tit-util mt70">
								<h2 class="tit small">나의 구매내역</h2>

								<a href="/mypage/bookinglist?tab=02" class="more"
									title="나의 구매내역 더보기">더보기 <i
									class="iconset ico-arr-right-gray"></i></a>
							</div>

							<div class="table-wrap">
								<table class="board-list line" summary="나의 구매내역 요약 표">
									<caption>나의 구매내역 요약 표</caption>
									<colgroup>
										<col style="width: 160px;">
										<col style="width: 140px;">
										<col>
										<col style="width: 120px;">
										<col style="width: 80px;">
									</colgroup>
									<tbody>
										<tr>
											<td colspan="6" class="a-c">구매내역이 없습니다.</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

						<!-- column -->
						<div class="column mt70">
							<!-- left -->
							<div class="col left" id="mySbsc">
								<div class="tit-util">
									<h2 class="tit small">참여이벤트</h2>
									<a href="/mypage/myevent" class="more" title="참여이벤트 더보기">더보기
										<i class="iconset ico-arr-right-gray"></i>
									</a>
								</div>

								<div class="brd-list">
									<ul>
										<li class="no-result">참여한 이벤트가 없습니다.</li>
									</ul>
								</div>
							</div>
							<!--// left -->

							<!-- right -->
							<div class="col right" id="myInq">
								<div class="tit-util">
									<h2 class="tit small">문의내역</h2>

									<a href="/mypage/myinquiry?tab=" class="more" title="문의내역 더보기">더보기
										<i class="iconset ico-arr-right-gray"></i>
									</a>
								</div>

								<div class="brd-list">
									<ul>
										<li class="no-result">문의내역이 없습니다.</li>
									</ul>
								</div>
							</div>
							<!--// right -->
						</div>
						<!--// column -->
					</div>
					<!--// my-megabox-main -->
				</div>

			</div>
		</div>




		<section id="saw_movie_regi" class="modal-layer">
			<a href="" class="focus">레이어로 포커스 이동 됨</a> <input type="hidden"
				id="isLogin" value="Y">
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

		<div class="quick-area" style="display: none;">
			<a href="" class="btn-go-top" title="top" style="position: fixed;">top</a>
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