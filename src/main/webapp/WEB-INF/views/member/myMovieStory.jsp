<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="shortcut icon" href="/resources/static/icon/favicon.ico">
<link rel="stylesheet" href="/resources/static/css/megabox.min.css"
	media="all">
<link rel="stylesheet" href="/resources/static/css/myPage.css"
	media="all">


</head>
<body>
	<c:import url="../template/header.jsp"></c:import>



	<div class="container has-lnb">

		<div class="inner-wrap">
		
			<div class="lnb-area">

				<c:import url="../template/memberSidebar.jsp"></c:import>

			</div>


			<div id="contents">
				<h2 class="tit">나의 무비스토리</h2>

				<div class="tab-block mb30">
					<ul>
						<li data-url="/mypage/moviestory?cd=tl" class="on"><a
							id="movieTimeLineTab" href="#" class="btn" data-type="tl"
							title="무비타임라인 탭으로 이동">무비타임라인</a></li>
						<li data-url="/mypage/moviestory?cd=mp"><a href="#"
							class="btn" data-type="mp" title="무비포스트 탭으로 이동">무비포스트</a></li>
						<li data-url="/mypage/moviestory?cd=one"><a href="#"
							class="btn" data-type="one" title="한줄평 탭으로 이동">한줄평</a></li>
						<li data-url="/mypage/moviestory?cd=sm"><a href="#"
							class="btn" data-type="sm" title="본영화 탭으로 이동">본영화</a></li>
						<li data-url="/mypage/moviestory?cd=lm"><a href="#"
							class="btn" data-type="lm" title="보고싶어 탭으로 이동">보고싶어</a></li>
					</ul>
				</div>

				<!-- 나의 무비타임라인 -->
				<div class="my-timeline myTimeline myMovieStory"
					style="display: block;">




					<button type="button"
						class="btn-year year-prev swiper-button-disabled" tabindex="0"
						role="button" aria-label="Previous slide" aria-disabled="true">이전
						년도 선택</button>

					<div
						class="time-year swiper-container-initialized swiper-container-horizontal">
						<div class="swiper-wrapper"
							style="transform: translate3d(0px, 0px, 0px);">

							<!-- <div class="cell swiper-slide"><button type="button" class="btn">2007</button></div> -->
							<div class="cell swiper-slide swiper-slide-active"
								style="width: 86.2222px;">
								<button type="button" class="btn on" data-no="2018">2018</button>
							</div>

							<!-- <div class="cell swiper-slide"><button type="button" class="btn">2007</button></div> -->
							<div class="cell swiper-slide swiper-slide-next"
								style="width: 86.2222px;">
								<button type="button" class="btn" data-no="2019">2019</button>
							</div>

							<!-- <div class="cell swiper-slide"><button type="button" class="btn">2007</button></div> -->
							<div class="cell swiper-slide" style="width: 86.2222px;">
								<button type="button" class="btn" data-no="2020">2020</button>
							</div>

						</div>
						<span class="swiper-notification" aria-live="assertive"
							aria-atomic="true"></span>
					</div>

					<button type="button"
						class="btn-year year-next swiper-button-disabled" tabindex="0"
						role="button" aria-label="Next slide" aria-disabled="true">다음
						년도 선택</button>

				</div>

				<!-- my-timeline-list -->
				<div class="my-timeline-list myTimeline myMovieStory"
					style="display: block;">
					<ol>
						<li>
							<div class="date">
								<p>2018.12.28</p>
							</div>
							<ul class="movie">
								<li><a href="javaScript:void(0)"
									title="콜드플레이: 헤드 풀 오브 드림스 상세보기"
									class="img posterImg btn-modal-open2" w-data="850"
									h-data="auto" data-no="66315027" data-cd="ADMIS"
									data-mno="01488600"><img
										src="https://img.megabox.co.kr/SharedImg/asis/system/mop/poster/2018/06/BA2E14-D205-4626-B91B-3FDD9047F1E4.medium.jpg"
										onerror="noImg(this)" alt="콜드플레이: 헤드 풀 오브 드림스"></a>
									<div class="cont">
										<p class="label">본영화</p>
										<p class="tit">
											<a href="javaScript:void(0)" title="콜드플레이: 헤드 풀 오브 드림스 상세보기">콜드플레이:
												헤드 풀 오브 드림스</a>
										</p>
										<div class="theater">
											<p>쌍용씨네시티</p>
											<p>H관</p>
											<p>2020.07.01</p>
										</div>
									</div></li>
							</ul>
						</li>
					</ol>
				</div>
				<!--// my-timeline-list -->

				<div class="btn-more v1 pt00 myTimeline myMovieStory"
					style="display: none;">
					<button type="button" class="btn" id="addList">
						더보기 <i class="iconset ico-btn-more-arr"></i>
					</button>
				</div>
				<!--// 나의 무비타임라인 -->

				<!-- 나의 무비포스트 -->
				<div class="my-movie-post myMoviePost myMovieStory"
					style="display: none;">
					<div class="tab-sorting mb20">
						<button type="button" class="on" data-type="my">나의 포스트</button>
						<button type="button" data-type="mySubscribe">구독중인 포스트</button>
					</div>

					<!-- movie-list-util -->
					<div class="movie-list-util">
						<p class="result-count  line32">
							<strong>총 <b class="font-gblue" id="myMoviePostCnt">0</b>
								건
							</strong>
						</p>

						<div class="float-r">
							<div class="movie-sorting">
								<span><button type="button" class="btn on"
										data-type="date">최신순</button></span> <span><button
										type="button" class="btn" data-type="like">공감순</button></span>
							</div>

							<div class="movie-search">
								<input type="text" title="제목, 장르, 감독, 주연배우를 입력하세요"
									placeholder="제목, 장르, 감독, 주연배우" class="input-text"
									name="ibxMovieNmSearch">
								<button type="button" class="btn-search-input">검색</button>
							</div>
						</div>
					</div>
					<!--// movie-list-util -->

					<div class="movie-post-list" id="moviePostList"></div>

					<div class="more-movie-list">
						<button type="button" class="button btn-more-movie-list">
							더보기 <i class="iconset ico-btn-more-arr"></i>
						</button>
					</div>
				</div>
				<!--// 나의 무비포스트 -->

				<div class="board-list-util myOne myMovieStory"
					style="display: none;">
					<p class="result-count">
						<strong>총 <b class="font-gblue" id="myOneCnt">0</b> 건
						</strong>
					</p>
				</div>

				<!-- 나의 한줄평 -->
				<div class="my-appraisal myOne myMovieStory" style="display: none;">
					<ul id="myAppraisal"></ul>
				</div>

				<nav class="pagination myOne myMovieStory" style="display: none;"></nav>
				<!--// 나의 한줄평 -->

				<!-- 나의 본영화 -->
				<div class="mypage-infomation mt20 mySeenMovie myMovieStory"
					style="display: none;">
					<ul class="dot-list mb20">
						<!-- <li>본 영화 리스트는 실제 관람한 이력으로 보여지며, 상영일 익일에 자동 노출됩니다.</li> 20190819 -->
						<li>극장에서 발권하신 티켓 바코드 하단의 거래번호를 통해 본 영화 등록을 하실 수 있습니다.</li>
						<!-- <li>유료 관람 영화 편수는 ‘나의 쌍용’에서 확인 하실 수 있습니다.</li> -->
						<li>본영화는 관람한 인원수에 한해 등록이 가능합니다.</li>
					</ul>

					<div class="btn-group right mySeenMovie myMovieStory"
						style="display: none;">
						<a href="#saw_movie_regi" class="button btn-modal-open"
							w-data="600" h-data="470" title="본 영화 등록">본 영화 등록</a>
					</div>
				</div>

				<div class="board-list-util mySeenMovie myMovieStory"
					style="display: none;">
					<p class="result-count">
						<strong>총 <b class="font-gblue" id="mySeenMovieCnt">0</b>
							건
						</strong>
					</p>
				</div>

				<!-- my-saw-movie -->
				<div class="my-saw-movie mt10 mySeenMovie myMovieStory"
					style="display: none;">
					<ul id="mySawMovie"></ul>
				</div>
				<!--// my-saw-movie -->

				<nav class="pagination mySeenMovie myMovieStory"
					style="display: none;"></nav>
				<!--// 나의 본영화 -->

				<!--// 나의 보고싶어 -->
				<!-- my-movie-list -->
				<div class="my-movie-list myLikeMovie myMovieStory"
					style="display: none;">
					<div class="board-list-util">
						<p class="result-count">
							<strong>총 <b class="font-gblue" id="totalCnt">0</b>건
							</strong>
						</p>
					</div>

					<div class="movie-list myLikeMovie myMovieStory"
						style="display: none;">
						<ol class="list" id="movieList"></ol>
					</div>

					<div class="more-movie-list pt30 myLikeMovie myMovieStory"
						style="display: none;">
						<button type="button" class="button btn-more-like-list">
							더보기 <i class="iconset ico-btn-more-arr"></i>
						</button>
					</div>

				</div>
				<!--// my-movie-list -->

				<!-- 보고싶어 영화 없을 때 -->
				<div class="no-my-movie-list myLikeMovie myMovieStory"
					id="noDataDiv" style="display: none;">
					<i class="iconset ico-movie-see"></i>
					<p>보고싶은 영화를 담아주세요.</p>
				</div>
				<!--// 나의 보고싶어 -->
			</div>

		</div>
	</div>


</body>
</html>