<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko">
<head>

<title>나의메가박스 | 라이프씨어터, 메가박스</title>
<link rel="shortcut icon" href="/resources/icon/favicon.ico">
<link rel="stylesheet" href="/resources/css/megabox.min.css" media="all">
<link rel="stylesheet" href="/resources/css/myPage.css" media="all">
</head>

<body>
	<div class="body-wrap">
		<header id="header">
			<h1 class="ci" id="goMain">
				<a href="../" title="MEGABOX 메인으로 가기">MEGABOX : Life Theater</a>
			</h1>

			<!-- 2019-04-15 마크업 수정 : 고객요청  -->
			<div class="util-area">

				<div class="right-link">

					<div class="after" style="">
						<a href="./memberLogout" class="" title="로그아웃">로그아웃</a> <a
							href="/support" title="고객센터">고객센터</a> <a href="/booking">빠른예매</a>
					</div>
				</div>

				<div class="link-area">
					<a href="#layer_sitemap"
						class="header-open-layer btn-layer-sitemap" title="사이트맵">사이트맵</a>
					<a href="#layer_header_search"
						class="header-open-layer btn-layer-search" title="검색">검색</a> <a
						href="/booking/timetable" class="link-ticket" title="상영시간표">상영시간표</a>
					<a href="#" class="header-open-layer btn-layer-mymega"
						title="나의 메가박스">관리자 페이지</a>
				</div>


				<nav id="gnb">
					<ul class="gnb-depth1">
						<li><a href="/movie" class="gnb-txt-movie" title="영화"></a></li>
						<li><a href="/booking" class="gnb-txt-reserve" title="예매"></a></li>
						<li><a href="/theater/list" class="gnb-txt-theater"
							title="극장"></a></li>
						<li><a href="javascript:void(0)"
							onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;"
							class="gnb-txt-event" title="이벤트"></a></li>
						<li><a href="javascript:void(0)"
							onclick="NetfunnelChk.aTag('STORE_LIST','/store');return false;"
							class="gnb-txt-store" title="스토어"></a></li>
						<li><a href="/benefit/membership" class="gnb-txt-benefit"
							title="혜택"></a></li>
					</ul>
				</nav>
		</header>
		<!--// header -->


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
							<li class=""><a href="/mypage/bookinglist" title="회원 리스트">회원
									리스트</a></li>
							<li><a href="/mypage/moviestory" titel="영화 관리">영화 관리</a></li>
							<li><a href="/mypage/mydiscount" title="영화관 관리">영화관 관리</a></li>
							<li><a href="./passwordCheck" title="예약 관리">예약 관리</a></li>
						</ul>
					</nav>
				</div>

				<div id="contents">
					<h2 class="tit">회원 리스트</h2>


					<div class="board-list-util">
						<p class="result-count">
							<strong> <em class="font-gblue">회원 숫자 갯수</em></strong>
						</p>


						<div class="board-search">
							<input type="text" id="searchID" placeholder="회원 ID 입력"
								class="input-text" value="" maxlength="15">
							<button type="button" id="searchBtn" class="btn-search-input">검색</button>
						</div>
					</div>

					<div class="table-wrap">
						<table class="board-list">
							<colgroup>
								<col style="width: 72px;">
								<col style="width: 133px;">
								<col style="width: 95px;">
								<col>
								<col style="width: 116px;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">번호</th>
									<th scope="col">ID</th>
									<th scope="col">이름</th>
									<th scope="col">전화번호</th>
									<th scope="col">나이</th>
									<th scope="col">등록일</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>번호</td>
									<td>아이디</td>
									<td>전화번호</td>
									<th><a href="#" class="moveBtn" data-no="10102"
										title="공지사항 상세보기"><span class="font-green"></span>[<span
											class="font-green"></span>킨<span class="font-green"></span>텍<span
											class="font-green"></span>스<span class="font-green"></span>]<span
											class="font-green"></span> <span class="font-green"></span>건<span
											class="font-green"></span>물<span class="font-green"></span> <span
											class="font-green"></span>전<span class="font-green"></span>기<span
											class="font-green"></span>점<span class="font-green"></span>검<span
											class="font-green"></span>관<span class="font-green"></span>련<span
											class="font-green"></span> <span class="font-green"></span>안<span
											class="font-green"></span>내<span class="font-green"></span></a></th>
									<td>나이</td>
									<td>등록일</td>
								</tr>
								<tr>
									<td>번호</td>
									<td>아이디</td>
									<td>전화번호</td>
									<th><a href="#" class="moveBtn" data-no="10102"
										title="공지사항 상세보기"><span class="font-green"></span>[<span
											class="font-green"></span>킨<span class="font-green"></span>텍<span
											class="font-green"></span>스<span class="font-green"></span>]<span
											class="font-green"></span> <span class="font-green"></span>건<span
											class="font-green"></span>물<span class="font-green"></span> <span
											class="font-green"></span>전<span class="font-green"></span>기<span
											class="font-green"></span>점<span class="font-green"></span>검<span
											class="font-green"></span>관<span class="font-green"></span>련<span
											class="font-green"></span> <span class="font-green"></span>안<span
											class="font-green"></span>내<span class="font-green"></span></a></th>
									<td>나이</td>
									<td>등록일</td>
								</tr>
								<tr>
									<td>번호</td>
									<td>아이디</td>
									<td>전화번호</td>
									<th><a href="#" class="moveBtn" data-no="10102"
										title="공지사항 상세보기"><span class="font-green"></span>[<span
											class="font-green"></span>킨<span class="font-green"></span>텍<span
											class="font-green"></span>스<span class="font-green"></span>]<span
											class="font-green"></span> <span class="font-green"></span>건<span
											class="font-green"></span>물<span class="font-green"></span> <span
											class="font-green"></span>전<span class="font-green"></span>기<span
											class="font-green"></span>점<span class="font-green"></span>검<span
											class="font-green"></span>관<span class="font-green"></span>련<span
											class="font-green"></span> <span class="font-green"></span>안<span
											class="font-green"></span>내<span class="font-green"></span></a></th>
									<td>나이</td>
									<td>등록일</td>
								</tr>
								<tr>
									<td>번호</td>
									<td>아이디</td>
									<td>전화번호</td>
									<th><a href="#" class="moveBtn" data-no="10102"
										title="공지사항 상세보기"><span class="font-green"></span>[<span
											class="font-green"></span>킨<span class="font-green"></span>텍<span
											class="font-green"></span>스<span class="font-green"></span>]<span
											class="font-green"></span> <span class="font-green"></span>건<span
											class="font-green"></span>물<span class="font-green"></span> <span
											class="font-green"></span>전<span class="font-green"></span>기<span
											class="font-green"></span>점<span class="font-green"></span>검<span
											class="font-green"></span>관<span class="font-green"></span>련<span
											class="font-green"></span> <span class="font-green"></span>안<span
											class="font-green"></span>내<span class="font-green"></span></a></th>
									<td>나이</td>
									<td>등록일</td>
								</tr>
								<tr>
									<td>번호</td>
									<td>아이디</td>
									<td>전화번호</td>
									<th><a href="#" class="moveBtn" data-no="10102"
										title="공지사항 상세보기"><span class="font-green"></span>[<span
											class="font-green"></span>킨<span class="font-green"></span>텍<span
											class="font-green"></span>스<span class="font-green"></span>]<span
											class="font-green"></span> <span class="font-green"></span>건<span
											class="font-green"></span>물<span class="font-green"></span> <span
											class="font-green"></span>전<span class="font-green"></span>기<span
											class="font-green"></span>점<span class="font-green"></span>검<span
											class="font-green"></span>관<span class="font-green"></span>련<span
											class="font-green"></span> <span class="font-green"></span>안<span
											class="font-green"></span>내<span class="font-green"></span></a></th>
									<td>나이</td>
									<td>등록일</td>
								</tr>
								<tr>
									<td>번호</td>
									<td>아이디</td>
									<td>전화번호</td>
									<th><a href="#" class="moveBtn" data-no="10102"
										title="공지사항 상세보기"><span class="font-green"></span>[<span
											class="font-green"></span>킨<span class="font-green"></span>텍<span
											class="font-green"></span>스<span class="font-green"></span>]<span
											class="font-green"></span> <span class="font-green"></span>건<span
											class="font-green"></span>물<span class="font-green"></span> <span
											class="font-green"></span>전<span class="font-green"></span>기<span
											class="font-green"></span>점<span class="font-green"></span>검<span
											class="font-green"></span>관<span class="font-green"></span>련<span
											class="font-green"></span> <span class="font-green"></span>안<span
											class="font-green"></span>내<span class="font-green"></span></a></th>
									<td>나이</td>
									<td>등록일</td>
								</tr>
								<tr>
									<td>번호</td>
									<td>아이디</td>
									<td>전화번호</td>
									<th><a href="#" class="moveBtn" data-no="10102"
										title="공지사항 상세보기"><span class="font-green"></span>[<span
											class="font-green"></span>킨<span class="font-green"></span>텍<span
											class="font-green"></span>스<span class="font-green"></span>]<span
											class="font-green"></span> <span class="font-green"></span>건<span
											class="font-green"></span>물<span class="font-green"></span> <span
											class="font-green"></span>전<span class="font-green"></span>기<span
											class="font-green"></span>점<span class="font-green"></span>검<span
											class="font-green"></span>관<span class="font-green"></span>련<span
											class="font-green"></span> <span class="font-green"></span>안<span
											class="font-green"></span>내<span class="font-green"></span></a></th>
									<td>나이</td>
									<td>등록일</td>
								</tr>
								<tr>
									<td>번호</td>
									<td>아이디</td>
									<td>전화번호</td>
									<th><a href="#" class="moveBtn" data-no="10102"
										title="공지사항 상세보기"><span class="font-green"></span>[<span
											class="font-green"></span>킨<span class="font-green"></span>텍<span
											class="font-green"></span>스<span class="font-green"></span>]<span
											class="font-green"></span> <span class="font-green"></span>건<span
											class="font-green"></span>물<span class="font-green"></span> <span
											class="font-green"></span>전<span class="font-green"></span>기<span
											class="font-green"></span>점<span class="font-green"></span>검<span
											class="font-green"></span>관<span class="font-green"></span>련<span
											class="font-green"></span> <span class="font-green"></span>안<span
											class="font-green"></span>내<span class="font-green"></span></a></th>
									<td>나이</td>
									<td>등록일</td>
								</tr>
								<tr>
									<td>번호</td>
									<td>아이디</td>
									<td>전화번호</td>
									<th><a href="#" class="moveBtn" data-no="10102"
										title="공지사항 상세보기"><span class="font-green"></span>[<span
											class="font-green"></span>킨<span class="font-green"></span>텍<span
											class="font-green"></span>스<span class="font-green"></span>]<span
											class="font-green"></span> <span class="font-green"></span>건<span
											class="font-green"></span>물<span class="font-green"></span> <span
											class="font-green"></span>전<span class="font-green"></span>기<span
											class="font-green"></span>점<span class="font-green"></span>검<span
											class="font-green"></span>관<span class="font-green"></span>련<span
											class="font-green"></span> <span class="font-green"></span>안<span
											class="font-green"></span>내<span class="font-green"></span></a></th>
									<td>나이</td>
									<td>등록일</td>
								</tr>
								<tr>
									<td>번호</td>
									<td>아이디</td>
									<td>전화번호</td>
									<th><a href="#" class="moveBtn" data-no="10102"
										title="공지사항 상세보기"><span class="font-green"></span>[<span
											class="font-green"></span>킨<span class="font-green"></span>텍<span
											class="font-green"></span>스<span class="font-green"></span>]<span
											class="font-green"></span> <span class="font-green"></span>건<span
											class="font-green"></span>물<span class="font-green"></span> <span
											class="font-green"></span>전<span class="font-green"></span>기<span
											class="font-green"></span>점<span class="font-green"></span>검<span
											class="font-green"></span>관<span class="font-green"></span>련<span
											class="font-green"></span> <span class="font-green"></span>안<span
											class="font-green"></span>내<span class="font-green"></span></a></th>
									<td>나이</td>
									<td>등록일</td>
								</tr>
							</tbody>
						</table>
					</div>

					<!-- pagination -->
					<nav class="pagination">
						<strong class="active">1</strong> <a title="2페이지보기"
							href="javascript:void(0)" pagenum="2">2</a> <a title="3페이지보기"
							href="javascript:void(0)" pagenum="3">3</a> <a title="4페이지보기"
							href="javascript:void(0)" pagenum="4">4</a> <a title="5페이지보기"
							href="javascript:void(0)" pagenum="5">5</a> <a title="6페이지보기"
							href="javascript:void(0)" pagenum="6">6</a> <a title="7페이지보기"
							href="javascript:void(0)" pagenum="7">7</a> <a title="8페이지보기"
							href="javascript:void(0)" pagenum="8">8</a> <a title="9페이지보기"
							href="javascript:void(0)" pagenum="9">9</a> <a title="10페이지보기"
							href="javascript:void(0)" pagenum="10">10</a> <a
							title="이후 10페이지 보기" href="javascript:void(0)"
							class="control next" pagenum="11">next</a> <a title="마지막 페이지 보기"
							href="javascript:void(0)" class="control last" pagenum="559">last</a>
					</nav>
					<!--// pagination -->
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