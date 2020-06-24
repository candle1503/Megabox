<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- header -->


<header id="header" class="main-header no-bg">

	<img class="ci" alt=""
		src="${pageContext.request.contextPath}/resources/images/sTheater.png"
		style="width: 7%; height: auto;">

	<!-- topGnb -->

	<div class="link-area">
		<a href="#layer_sitemap" class="header-open-layer btn-layer-sitemap"
			title="사이트맵">사이트맵</a> <a href="#layer_header_search"
			class="header-open-layer btn-layer-search" title="검색">검색</a> <a
			href="/booking/timetable" class="link-ticket" title="상영시간표">상영시간표</a>
		<c:if test="${member ne null}">
			<a href="./member/getMyPage" class="header-open-layer btn-layer-mymega"
			title="나의 메가박스">나의 메가박스</a>
		</c:if>
		
	</div>

	<!-- gnb -->
	<!--
        2019-04-15 마크업 수정 : 고객요청
        1뎁스 a 태그에 각각 다른 class 추가
    -->

	<nav id="gnb">
		<ul class="gnb-depth1">
			<li><a href="/movie" title="영화">영화</a>
				<div class="gnb-depth2">
					<ul>
						<li><a href="/movie" title="전체영화">전체영화</a></li>
						<li><a href="/curation/specialcontent" title="큐레이션">큐레이션</a></li>

						<li id="festivalArea" style="display: none;"><a
							href="/festival" title="영화제">영화제</a></li>
						<li><a href="/moviepost/all" title="무비포스트">무비포스트</a></li>
					</ul>
				</div></li>
			<li><a href="/booking" title="예매">예매</a>
				<div class="gnb-depth2">
					<ul>
						<li><a href="/booking" title="빠른예매">빠른예매</a></li>
						<li><a href="/booking/timetable" title="상영시간표">상영시간표</a></li>
						<li><a href="/booking/privatebooking" title="더 부티크 프라이빗 예매">더
								부티크 프라이빗 예매</a></li>
					</ul>
				</div></li>
			<li><a href="/theater/list" title="극장">극장</a>
				<div class="gnb-depth2">
					<ul>
						<li><a href="/theater/list" title="전체극장">전체극장</a></li>
						<li><a href="/specialtheater/list" title="특별관">특별관</a></li>
					</ul>
				</div></li>


			<li><a href="../notice/noticeList" style="color: white;">공지사항</a></li>
			<li><a href="#">FAQ</a></li>
			<c:if test="${member eq null}">
			<li><a href="./member/memberLogin">로그인</a></li>
			</c:if>
			<c:if test="${member ne null}">
			<li><a href="./member/memberLogout">로그아웃</a></li>
			</c:if>
		</ul>
	</nav>
</header>
<!--// header -->