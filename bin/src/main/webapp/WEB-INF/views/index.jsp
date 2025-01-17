<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<meta charset="utf-8">

<link rel="shortcut icon" href="/resources/icon/favicon.ico">

<title>MegaBox Project</title>

<link rel="stylesheet" href="/resources/css/indexMegabox.css"
	media="all">
<link rel="stylesheet" href="/resources/css/indexMain.css" media="all">

</head>

<body>
	<div></div>
	<div class="body-wrap">

		<!-- header -->
		<header id="header" class="main-header no-bg">
			<h1 class="ci">
				<a href="/" title="MEGABOX 메인으로 가기">MEGABOX : Life Theater</a>
			</h1>

			<!-- 2019-04-15 마크업 수정 : 고객요청  -->
			<div class="util-area">
				<div class="left-link">
					<a href="/benefit/viplounge" title="VIP LOUNGE">VIP LOUNGE</a> <a
						href="/benefit/membership" title="멤버십">멤버십</a> <a href="/support"
						title="고객센터">고객센터</a>
				</div>

				<div class="right-link">
					<!-- 로그인전 -->
					<div class="before" style="">
						<a href="javaScript:fn_viewLoginPopup('default','pc')" title="로그인">로그인</a>
						<a href="/join" title="회원가입">회원가입</a>
					</div>

					<a href="/booking">빠른예매</a>
				</div>
			</div>
			<!--// 2019-04-15 마크업 수정 : 고객요청  -->

			<div class="link-area">
				<a href="#layer_sitemap" class="header-open-layer btn-layer-sitemap"
					title="사이트맵">사이트맵</a> <a href="#layer_header_search"
					class="header-open-layer btn-layer-search" title="검색">검색</a> <a
					href="/booking/timetable" class="link-ticket" title="상영시간표">상영시간표</a>
				<a href="#layer_mymega" class="header-open-layer btn-layer-mymega"
					title="나의 메가박스">나의 메가박스</a>
			</div>
			<!--// topGnb -->

			<!-- 레이어 : 사이트맵 -->

			<div id="layer_sitemap" class="header-layer layer-sitemap">
				<!-- wrap -->
				<div class="wrap">
					<a href="" class="link-acc" title="사이트맵 레이어 입니다.">사이트맵 레이어 입니다.</a>

					<p class="tit">SITEMAP</p>

					<div class="list position-1">
						<p class="tit-depth">영화</p>

						<ul class="list-depth">
							<li><a href="/movie" title="전체영화">전체영화</a></li>
							<li><a href="/curation/specialcontent" title="큐레이션">큐레이션</a></li>
							<li><a href="javascript:void(0)"
								onclick="javascript:MegaboxUtil.Common.moveMovieFilmCheck();"
								title="영화제">영화제</a></li>
							<li><a href="/moviepost/all" title="무비포스트">무비포스트</a></li>
						</ul>
					</div>

					<div class="list position-2">
						<p class="tit-depth">예매</p>

						<ul class="list-depth">
							<li><a href="/booking" title="빠른예매">빠른예매</a></li>
							<li><a href="/booking/timetable" title="상영시간표">상영시간표</a></li>
							<li><a href="/booking/privatebooking" title="더 부티크 프라빗 예매">더
									부티크 프라이빗 예매</a></li>
							<!-- <li><a href="/booking?megaboxLanguage=en" title="English Ticketing">English Ticketing</a></li> -->
						</ul>
					</div>

					<div class="list position-3">
						<p class="tit-depth">극장</p>

						<ul class="list-depth">
							<li><a href="/theater/list" title="전체극장">전체극장</a></li>
							<li><a href="/specialtheater/list" title="특별관">특별관</a></li>
						</ul>
					</div>

					<div class="list position-4">
						<p class="tit-depth">이벤트</p>

						<ul class="list-depth">
							<li><a href="javascript:void(0)"
								onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;"
								title="진행중 이벤트">진행중 이벤트</a></li>
							<li><a href="javascript:void(0)"
								onclick="NetfunnelChk.aTag('EVENT_LIST','/event/end');return false;"
								title="지난 이벤트">지난 이벤트</a></li>
							<li><a href="javascript:void(0)"
								onclick="NetfunnelChk.aTag('EVENT_LIST','/event/winner/list');return false;"
								title="당첨자발표">당첨자발표</a></li>
						</ul>
					</div>

					<div class="list position-7">
						<p class="tit-depth">혜택</p>

						<ul class="list-depth">
							<li><a href="/benefit/membership" title="멤버십 안내">멤버십 안내</a></li>
							<li><a href="/benefit/viplounge" title="VIP LOUNGE">VIP
									LOUNGE</a></li>
							<li><a href="/benefit/discount/guide" title="제휴/할인">제휴/할인</a></li>
						</ul>
					</div>
				</div>
			</div>

		</header>

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
					<div id="main_section01" class="section main-movie">
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
										<a href="javascript:gfn_moveDetail('01685000')"
										class="movie-list-info" title="영화상세 보기">
											<p class="rank">
												1<span class="ir">위</span>
											</p> <!-- to 개발 : alt 값에 영화 제목 출력 --> <img
											src="https://img.megabox.co.kr/SharedImg/2020/02/21/IyeZJvAzV3QgEoW4F7HzdS97zfLYfcni_420.jpg"
											alt="1917" class="poster" onerror="noImg(this, 'main');">
											<div class="wrap">
												<div class="summary">
													두 명의 병사, 하나의 미션!<br>그들이 싸워야 할 것은 적이 아니라 시간이었다!<br>
													<br>제1차 세계대전이 한창인 1917년.<br>독일군에 의해 모든 통신망이 파괴된
													상황 속에서<br>영국군 병사 '스코필드'(조지 맥케이)와 '블레이크'(딘-찰스 채프먼)에게
													하나의 미션이 주어졌다.<br> <br>함정에 빠진 영국군 부대의 수장 '매켄지'
													중령(베네딕트 컴버배치)에게<br>'에린무어' 장군(콜린 퍼스)의 공격 중지 명령을 전하는 것!<br>
													<br>둘은 1600명의 아군과 '블레이크'의 형(리차드 매든)을 구하기 위해<br>전쟁터
													한복판을 가로지르며 사투를 이어가는데...
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
															8.9<span class="ir">점</span>
														</p>
													</div>
												</div>
											</div>
									</a>
										<div class="btn-util">
											<button type="button" class="button btn-like"
												rpst-movie-no="01685000">
												<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
												1.3k
											</button>
											<div class="case">
												<!-- 상영예정-->
												<a href="#" class="button gblue" title="상영예정">상영예정</a>
											</div>
										</div>
									</li>
									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
									<li name="li_accmAdncList" style="display: none;" class="">
										<a href="javascript:gfn_moveDetail('20003900')"
										class="movie-list-info" title="영화상세 보기">
											<p class="rank">
												2<span class="ir">위</span>
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
												753
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
												3<span class="ir">위</span>
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
												4<span class="ir">위</span>
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
												586
											</button>
											<div class="case">
												<!-- 개봉 예매가능 기본-->
												<a href="javascript:moveBokdPage('20003100');"
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
															0<span class="ir">점</span>
														</p>
													</div>
												</div>
											</div>
									</a>
										<div class="btn-util">
											<button type="button" class="button btn-like"
												rpst-movie-no="01693600">
												<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
												499
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
										href="javascript:gfn_moveDetail('20003500')"
										class="movie-list-info" title="영화상세 보기">
											<p class="rank">
												2<span class="ir">위</span>
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
															8.6<span class="ir">점</span>
														</p>
													</div>
												</div>
											</div>
									</a>
										<div class="btn-util">
											<button type="button" class="button btn-like"
												rpst-movie-no="20003500">
												<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
												533
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
										href="javascript:gfn_moveDetail('20018900')"
										class="movie-list-info" title="영화상세 보기">
											<p class="rank">
												3<span class="ir">위</span>
											</p> <!-- to 개발 : alt 값에 영화 제목 출력 --> <img
											src="https://img.megabox.co.kr/SharedImg/2020/06/08/s0lDFGluXxYc6hNTqfr1qfOeS2UVw7nc_420.jpg"
											alt="사라진 시간" class="poster" onerror="noImg(this, 'main');">
											<div class="wrap" style="display: none; opacity: 1;">
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
												302
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
										href="javascript:gfn_moveDetail('01309400')"
										class="movie-list-info" title="영화상세 보기">
											<p class="rank">
												4<span class="ir">위</span>
											</p> <!-- to 개발 : alt 값에 영화 제목 출력 --> <img
											src="https://img.megabox.co.kr/SharedImg/asis/system/mop/poster/2017/D0/D558A7-DE6C-4178-B3F6-27A023AA5DEE.large.jpg"
											alt="위대한 쇼맨" class="poster" onerror="noImg(this, 'main');">
											<div class="wrap" style="display: none; opacity: 1;">
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
												1.5k
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
										<a href="javascript:gfn_moveDetail('20020200')"
										class="movie-list-info" title="영화상세 보기">
											<p class="rank">
												4<span class="ir">위</span>
											</p> <!-- to 개발 : alt 값에 영화 제목 출력 --> <img
											src="https://img.megabox.co.kr/SharedImg/2020/05/25/Hk5CYZskPmQjedi5z7Gl8j7AhtMLhppx_420.jpg"
											alt="환상의 마로나" class="poster" onerror="noImg(this, 'main');">
											<div class="wrap">
												<div class="summary">
													“안녕, 내 이름은 마로나<br>지금부터 내 이야기를 들려 줄게”<br> <br>9남매
													중 막내로 태어난 마로나.<br>형제들을 떠나 인간 주인을 만나면서 견생의 제2막이 오른다.<br>
													<br>곡예사 마놀부터 건설업자 이스트반, 귀여운 소녀 솔랑주까지.<br>새로운 주인을
													만날 때마다 마로나 역시 새로운 삶을 살게 되는데…<br> <br>함께할 수 있는 인간이
													있어 행복한 강아지 마로나<br>꿈보다 몽환적이고 동화보다 아름다운 이야기가 펼쳐진다!
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
												rpst-movie-no="20020200">
												<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
												82
											</button>
											<div class="case">
												<!-- 개봉 예매가능 기본-->
												<a href="javascript:moveBokdPage('20020200');"
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
									style="top: 1px;">
							</div>
							<!--// 2019-02-22 추가 : 마우스 아이콘 영역 추가 -->
						</div>
						<!--// cont-area  -->
					</div>
					<!--// section main-movie : 영화 -->

					<!-- section main-benefit : 혜택 -->
					<div id="main_section02" class="section main-benefit">
						<!-- wrap -->
						<div class="wrap">
							<!-- 혜택 시작 -->
							<div class="tit-util">
								<h2 class="tit">혜택</h2>
								<a href="javascript:void(0)"
									onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;"
									class="btn-more-cross purple" title="혜택 더보기">더보기</a>
							</div>
							<!--
							왼쪽 글씨 이미지 사이즈 300 * 230, 오른쪽 이미지 635 * 325
						 -->
							<div class="slider main-condition">
								<div class="slider-view" style="width: 1100px;">
									<div class="cell"
										style="display: none; position: absolute; float: none;">
										<div class="position">
											<div class="txt" style="top: 100px; opacity: 0;">
												<a
													href="https://www.megabox.co.kr/event/detail?eventNo=8440"
													target="_self" title=""><img
													src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/06/16/nVqhcDVNyYpCadN7wCYrW7NIRjFcNfWj.jpg"
													alt="" onerror="noImg(this, 'main');"></a>
											</div>
											<div class="bg" style="left: 450px; opacity: 0;">
												<a
													href="https://www.megabox.co.kr/event/detail?eventNo=8440"
													target="_self" title=""><img
													src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/06/15/SCJFkXWkoGmiho8IsDQllv9RDnNbtL53.jpg"
													alt="" onerror="noImg(this, 'main');"></a>
											</div>
										</div>
									</div>
									<div class="cell"
										style="display: none; position: absolute; float: none;">
										<div class="position">
											<div class="txt" style="top: 100px; opacity: 0;">
												<a
													href="https://www.megabox.co.kr/event/detail?eventNo=8428"
													target="_self" title=""><img
													src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/06/01/FBxQ6SVxuJ3bBqG4t7IG1PHUDiuUUUSy.jpg"
													alt="" onerror="noImg(this, 'main');"></a>
											</div>
											<div class="bg" style="left: 450px; opacity: 0;">
												<a
													href="https://www.megabox.co.kr/event/detail?eventNo=8428"
													target="_self" title=""><img
													src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/06/01/Wd4i8zskBDVHxufpoPV8whJ0QYqG43RL.jpg"
													alt="" onerror="noImg(this, 'main');"></a>
											</div>
										</div>
									</div>
									<div class="cell"
										style="display: none; position: absolute; float: none;">
										<div class="position">
											<div class="txt" style="top: 100px; opacity: 0;">
												<a
													href="https://www.megabox.co.kr/event/detail?eventNo=8417"
													target="_self" title=""><img
													src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/06/08/NkdB6Si7Gpt2utZlkAyWxItoF4km8zZ7.jpg"
													alt="" onerror="noImg(this, 'main');"></a>
											</div>
											<div class="bg" style="left: 450px; opacity: 0;">
												<a
													href="https://www.megabox.co.kr/event/detail?eventNo=8417"
													target="_self" title=""><img
													src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/06/08/TyICI9O07KVVsfEo3Pff49Hf4pJ3vd3u.jpg"
													alt="" onerror="noImg(this, 'main');"></a>
											</div>
										</div>
									</div>
									<div class="cell"
										style="display: none; position: absolute; float: none;">
										<div class="position">
											<div class="txt" style="top: 100px; opacity: 0;">
												<a
													href="https://www.megabox.co.kr/event/detail?eventNo=8348"
													target="_self" title=""><img
													src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/06/01/ejF5kLzHrn1Z3WyifnahJoj8FQNEa8KB.jpg"
													alt="" onerror="noImg(this, 'main');"></a>
											</div>
											<div class="bg" style="left: 450px; opacity: 0;">
												<a
													href="https://www.megabox.co.kr/event/detail?eventNo=8348"
													target="_self" title=""><img
													src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/06/01/xFkDtEn9Z5A2urpfanL8GIGVo8JxjBiN.jpg"
													alt="" onerror="noImg(this, 'main');"></a>
											</div>
										</div>
									</div>
									<div class="cell"
										style="display: none; position: absolute; float: none;">
										<div class="position">
											<div class="txt" style="top: 100px; opacity: 0;">
												<a href="/event/detail?eventNo=8048" target="_self"
													title="메가박스 오리지널 티켓북 출시"><img
													src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/02/04/jIx6azAbreahaBC4Ax1uCtovoUWu3Cky.jpg"
													alt="" onerror="noImg(this, 'main');"></a>
											</div>
											<div class="bg" style="left: 450px; opacity: 0;">
												<a href="/event/detail?eventNo=8048" target="_self"
													title="메가박스 오리지널 티켓북 출시"><img
													src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/02/04/J907IQ97HGyZbAU8IYEijq0FAx2QckCd.jpg"
													alt="" onerror="noImg(this, 'main');"></a>
											</div>
										</div>
									</div>
									<div class="cell"
										style="display: block; position: absolute; float: none;">
										<div class="position">
											<div class="txt" style="top: 0px; opacity: 1;">
												<a
													href="https://www.megabox.co.kr/event/detail?eventNo=8442"
													target="_self" title=""><img
													src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/06/16/ZN3Jqs8TNmiOk2PJHGYFjj5uJZ3D9Rzw.png"
													alt="" onerror="noImg(this, 'main');"></a>
											</div>
											<div class="bg" style="left: 300px; opacity: 1;">
												<a
													href="https://www.megabox.co.kr/event/detail?eventNo=8442"
													target="_self" title=""><img
													src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/06/16/vDcB63vxe3I40HdbFG5XVscTHOK35Lf9.png"
													alt="" onerror="noImg(this, 'main');"></a>
											</div>
										</div>
									</div>
									<div class="cell"
										style="display: none; position: absolute; float: none;">
										<div class="position">
											<div class="txt" style="top: 100px; opacity: 0;">
												<a
													href="https://www.megabox.co.kr/event/detail?eventNo=8355"
													target="_self" title=""><img
													src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/05/28/kOip8or2lzXcGsq7imRQjSo9Rf7IPMSE.png"
													alt="" onerror="noImg(this, 'main');"></a>
											</div>
											<div class="bg" style="left: 450px; opacity: 0;">
												<a
													href="https://www.megabox.co.kr/event/detail?eventNo=8355"
													target="_self" title=""><img
													src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/06/16/P4BFNM6NJPtERdXZejgGXJQ2B6DgOSWR.png"
													alt="" onerror="noImg(this, 'main');"></a>
											</div>
										</div>
									</div>
								</div>
								<div class="slider-control">

									<div class="page">
										<span class="" style="width: 14.285714285714285%"></span><span
											class="" style="width: 14.285714285714285%"></span><span
											class="" style="width: 14.285714285714285%"></span><span
											class="" style="width: 14.285714285714285%"></span><span
											class="" style="width: 14.285714285714285%"></span><span
											class="on" style="width: 14.285714285714285%"></span><span
											class="" style="width: 14.285714285714285%"></span>
									</div>

									<div class="util">
										<button type="button" class="btn-prev" style="opacity: 1;">이전
											이벤트 보기</button>
										<button type="button" class="btn-next" style="opacity: 1;">다음
											이벤트 보기</button>

										<button type="button" class="btn-pause on">일시정지</button>
										<button type="button" class="btn-play">자동재생</button>
									</div>

									<div class="page-count">6 / 7</div>

								</div>
							</div>


							<div class="brn-ad">
								<div class="banner">
									<div class="size">
										<a href="#" data-no="8355" data-netfunnel="N" class="eventBtn"
											title=""> <img
											src="https://img.megabox.co.kr/SharedImg/event/2020/06/16/8HvrPS6EUBIVnqrk1CUBzmYvqbO7fY2L.jpg"
											alt="[KB RAPBEAT FESTIVAL 2020 X 메가박스] 관람 패키지 이벤트"
											onerror="noImg(this, 'main');">
										</a>
									</div>
									<div class="size small">
										<a href="#" data-no="8349" data-netfunnel="N" class="eventBtn"
											title="ONLY 메가패키지"> <img
											src="https://img.megabox.co.kr/SharedImg/event/2020/05/28/Qam4kEsOVoF7zwOh47qxBW8JJ4Z4QYlj.jpg"
											alt="ONLY 메가패키지" onerror="noImg(this, 'main');">
										</a>
									</div>
								</div>
								<!-- 광고영역 -->
								<div class="ad-img">
									<!-- <img src="../../../static/pc/images/main/@img-main-ad.png" alt="블루멤버스 포인트로" /> -->
									<script data-id="M_rwl-o8QV2xFMa0Oy93qQ"
										name="megabox_p/main/main@main_middle_event_415x530?mlink=341"
										src="//cast.imp.joins.com/persona.js" async=""></script>
									<script
										src="//cast.imp.joins.com/body/M_rwl-o8QV2xFMa0Oy93qQ/k2516zXJoh57paD-806OR_JYj7BNxX4s-QJHglp9ZASEAM4qWzAZAbZSeGpfbEZqdVRfLVhRVnBiMXZMclZRAstB17oPoogWcgPLQde6D6KIFnI.js"></script>
									<div id="M_rwl-o8QV2xFMa0Oy93qQ">
										<iframe
											src="//ad.imp.joins.com/html/megabox_p/main/main@main_middle_event_415x530?_cid=M_rwl-o8QV2xFMa0Oy93qQ&amp;_uid=k2516zXJoh57paD-806OR_JYj7BNxX4s-QJHglp9ZASEAM4qWzAZAbZSeGpfbEZqdVRfLVhRVnBiMXZMclZRAstB17oPoogWcgPLQde6D6KIFnI&amp;_ref=https%3A%2F%2Fwww.megabox.co.kr%2F"
											title="메인 혜택 우측배너영역" height="530px" width="415px"
											name="mliframe" scrolling="no" frameborder="0" topmargin="0"
											leftmargin="0" marginwidth="0" marginheight="0"></iframe>
									</div>
								</div>
								<!-- 광고영역 -->
							</div>
							<!-- 혜택 종료 -->

							<div class="menu-link">
								<div class="cell vip">
									<a href="/benefit/viplounge" title="VIP LOUNGE 페이지로 이동">VIP
										LOUNGE</a>
								</div>
								<div class="cell membership">
									<a href="/benefit/membership" title="멤버십 페이지로 이동">멤버십</a>
								</div>
								<div class="cell card">
									<a href="/benefit/discount/guide" title="할인카드안내 페이지로 이동">할인카드안내</a>
								</div>
								<div class="cell event">
									<a href="javascript:void(0)"
										onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;"
										title="이벤트 페이지로 이동">이벤트</a>
								</div>
								<div class="cell store">
									<a href="javascript:void(0)"
										onclick="NetfunnelChk.aTag('STORE_LIST','/store');return false;"
										title="스토어 페이지로 이동">스토어</a>
								</div>
							</div>

							<!-- grand-open -->
							<div class="grand-open">
								<p class="tit">
									<span>LIFE THEATER MEGABOX</span> <strong>GRAND<br>OPENING
									</strong>
								</p>

								<div class="open-cont">

									<div class="open-pagination swiper-pagination-bullets">
										<span
											class="swiper-pagination-bullet swiper-pagination-bullet-active"></span>
									</div>

									<div class="open-control">
										<button type="button" class="open-prev swiper-button-disabled"
											tabindex="0" role="button" aria-label="Previous slide"
											aria-disabled="true">이전 이벤트 보기</button>
										<button type="button" class="open-next swiper-button-disabled"
											tabindex="0" role="button" aria-label="Next slide"
											aria-disabled="true">다음 이벤트 보기</button>

										<button type="button" class="open-pause on">일시정지</button>
										<button type="button" class="open-play">자동재생</button>
									</div>

									<div class="count-num">
										<span title="현재 페이지" class="active">1</span> / <span
											title="전체 페이지" class="total">1</span>
									</div>

									<div
										class="open-swiper swiper-container-initialized swiper-container-horizontal">
										<div class="swiper-wrapper"
											style="transform: translate3d(0px, 0px, 0px);">
											<div class="cell swiper-slide swiper-slide-active"
												style="width: 242.333px;">
												<a href="#" data-no="8414" data-netfunnel=""
													class="eventBtn new" title="[창원내서점] GRAND OPENING 페이지로 이동">
													<span class="label"> <!-- 지점 상태에 따른 노출 문구 설정--> <em>신규오픈</em>
														<!-- 코드선택일 경우 (신규오픈,리뉴얼오픈,오픈예정)-->
												</span>

													<p class="area">
														<span>부산/대구/경상</span> <strong> 창원내서</strong>
													</p>

													<p class="date">20.06</p> <img
													src="/static/pc/images/common/bg/bg-noimage-main.png"
													alt="[창원내서점] GRAND OPENING" onerror="noImg(this, 'main');">
													<!-- 이벤트 이미지 적용하지 않고 기본이미지 사용 2019.08.29 -->
												</a>
											</div>
											<div class="cell swiper-slide swiper-slide-next"
												style="width: 242.333px;">
												<a href="#" data-no="8413" data-netfunnel=""
													class="eventBtn new" title="[세종청사점] GRAND OPENING 페이지로 이동">
													<span class="label"> <!-- 지점 상태에 따른 노출 문구 설정--> <em>신규오픈</em>
														<!-- 코드선택일 경우 (신규오픈,리뉴얼오픈,오픈예정)-->
												</span>

													<p class="area">
														<span>대전/충청/세종</span> <strong> 세종청사</strong>
													</p>

													<p class="date">20.06</p> <img
													src="/static/pc/images/common/bg/bg-noimage-main.png"
													alt="[세종청사점] GRAND OPENING" onerror="noImg(this, 'main');">
													<!-- 이벤트 이미지 적용하지 않고 기본이미지 사용 2019.08.29 -->
												</a>
											</div>
											<div class="cell swiper-slide" style="width: 242.333px;">
												<a href="#" data-no="8412" data-netfunnel=""
													class="eventBtn new"
													title="[대전현대아울렛점] GRAND OPENING 페이지로 이동"> <span
													class="label"> <!-- 지점 상태에 따른 노출 문구 설정--> <em>신규오픈</em>
														<!-- 코드선택일 경우 (신규오픈,리뉴얼오픈,오픈예정)-->
												</span>

													<p class="area">
														<span>대전/충청/세종</span> <strong> 대전현대아울렛</strong>
													</p>

													<p class="date">20.06</p> <img
													src="/static/pc/images/common/bg/bg-noimage-main.png"
													alt="[대전현대아울렛점] GRAND OPENING"
													onerror="noImg(this, 'main');"> <!-- 이벤트 이미지 적용하지 않고 기본이미지 사용 2019.08.29 -->
												</a>
											</div>
										</div>
										<span class="swiper-notification" aria-live="assertive"
											aria-atomic="true"></span>
									</div>
								</div>
							</div>
							<!--// grand-open -->
						</div>
						<!--// wrap -->
					</div>
					<!--// section main-benefit : 혜택 -->

					<div id="main_section03" class="section main-curation">
						<!-- wrap -->
						<div class="wrap">
							<div class="tit-util">
								<h2 class="tit">큐레이션</h2>

								<div class="right">
									<a href="/curation/filmsociety" title="큐레이션 더보기"> 큐레이션 더보기
										<i class="iconset ico-more-corss gray"></i>
									</a>
								</div>
							</div>

							<!-- curation-area -->
							<div class="curation-area">
								<!-- curr-img -->
								<div class="curr-img">
									<p class="bage film">메가박스 필름소사이어티</p>
									<div class="img">
										<a href="javascript:gfn_moveDetail('20021700');"
											title="영화상세 보기"> <img
											src="https://img.megabox.co.kr/SharedImg/2020/06/16/T43wKaYuW6i30Kc5Rd1SJ8gdtoDLzgwO_420.jpg"
											alt="콜 미 바이 유어 네임" onerror="noImg(this, 'main');">
										</a>
									</div>

									<div class="btn-group justify">
										<div class="left">
											<a href="javascript:gfn_moveDetail('20021700');"
												class="button" title="영화상세 보기">상세정보</a>
										</div>
										<div class="right">
											<a href="javascript:moveBokdPage('20021700');"
												class="button gblue" title="영화 예매하기">예매</a>
										</div>
									</div>

									<div class="info film">
										<p class="txt">
											#<span>필름소사이어티</span>
										</p>
										<p class="tit">콜 미 바이 유어 네임</p>
										<p class="summary">
											네 이름으로 날 불러줘<br>내 이름으로 널 부를게<br> <br>1983년
											이탈리아, 열 일곱 소년 Elio(티모시 샬라메)는 <br>아름다운 햇살이 내리쬐는 가족 별장에서
											여름이 끝나기만을 기다리고 있다 <br> <br>어느 오후, 스물 넷 청년 Oliver(아미
											해머)가 <br>아버지(마이클 스털버그)의 보조 연구원으로 찾아오면서 모든 날들이 특별해지는데...
											<br> <br>Elio의 처음이자 Oliver의 전부가 된 <br>그 해,
											여름보다 뜨거웠던 사랑이 펼쳐진다
										</p>
									</div>
								</div>
								<!--// curr-img -->

								<!--// list-area -->
								<div class="list">
									<ul>
										<li><a href="javascript:gfn_moveDetail('20002500');"
											title="영화상세 보기">
												<p class="bage classic">클래식소사이어티</p>
												<div class="img">
													<img
														src="https://img.megabox.co.kr/SharedImg/2020/02/10/pYFBsgbriaDyNbaCMcVH5GCkXCpdx4BZ_230.jpg"
														alt="[시네도슨트] 루브르 박물관" onerror="noImg(this, 'main');">
												</div>

												<p class="tit">[시네도슨트] 루브르 박물관</p>

												<p class="summary">[2020 시네 도슨트] 극장에서 떠나는 세계 미술관 나들이!
													서유럽을 넘어 러시아와 북미까지. 세계의 미술관들이 품고 있는 문화와 예술사를 안현배 미술사학자의 풍부한
													해설과 함께 만나 보세요. 클래식 소사이어티가 더욱 다채로운 미술관 여행으로 초대합니다. [여행 일정]
													6월 : 루브르 박물관 7월 : 빈센트 반 고흐 미술관&amp;크롤러 뮐러 미술관 / 브리티쉬
													뮤지엄&amp;내셔널 갤러리 8월 : 뉴욕 현대 미술관 / 우피치 미술관 9월 : 에르미타쥬 미술관 /
													오르세 미술관 / 알테 피나코텍&amp;노이에 피나코텍 10월 : 메트로폴리탄 미술관 / 바티칸 미술관
													11월 : 트레치야코프 미술관&amp;푸시킨 미술관 / 구겐하임 미술관&amp;휘트니 미술관 12월 :
													프라도 미술관 / 브뤼셀 왕립 미술관&amp;르네 마그리트 미술관 [첫 번째 – 프랑스 파리 루브르
													박물관] 세계 최대박물관에서 보는 세상에서 가장 화려한 예술 이야기 방대한 소장품들을 통해 보는 프랑스를
													프랑스답게 만들었던 시간의 기록 - 일시 : 6월 22일(월) 오전 11시 / 6월 29일(월) 오후 7시
													30분 *예매오픈 : 6월 11일(목) 오후 3시 - 장소 : 메가박스 코엑스 - 강연 시간 : 110분
													- 가격 : 일반 12,000원 / 클래식 소사이어티 멤버십 10% 할인(멤버십 대상 발행 쿠폰 적용)
													*기타 할인 불가 ○ 도슨트 : 미술사학자 안현배 파리1대학에서 역사학과 정치사를 공부했고, 사회주의와
													아나키즘을 주제로 석사학위를 받았다. 프랑스 국립사회과학고등연구소에서 ‘예술과 정치의 사회학’을 연구했고,
													예술사학과 순수예술사 분야에서 석사 학위를 받은 뒤 같은 분야로 박사 과정을 수료했다. 예술사학자로서
													예술을 보다 넓은 컨텍스트 안에서 인문학적으로 접근하는 시야를 열고자 노력하고 있다. *** 본 프로그램은
													별도의 영상 상영 없이 진행되는 강연 프로그램입니다. *** 강연 일정은 강사 사정에 따라 변동될 수
													있습니다. ***강연 3일전 ~ 1일전 취소 및 환불시 수수료가 10% 발생되며, 당일 취소는 불가
													합니다.</p>
										</a></li>
										<li><a href="javascript:gfn_moveDetail('20019300');"
											title="영화상세 보기">
												<p class="bage film">필름소사이어티</p>
												<div class="img">
													<img
														src="https://img.megabox.co.kr/SharedImg/2020/05/26/4DpEOKISeL20EXabwXkfsfaeeJW27heu_230.jpg"
														alt="야구소녀" onerror="noImg(this, 'main');">
												</div>

												<p class="tit">야구소녀</p>

												<p class="summary">“사람들이 내 미래를 어떻게 알아요? 나도 모르는데…” 최고구속
													134km, 볼 회전력의 강점으로 ‘천재 야구소녀’라는 별명을 얻으며 주목받았던 ‘주수인’(이주영). 고교
													졸업 후 오로지 프로팀에 입단해 계속해서 야구를 하는 것이 꿈이지만 여자라는 이유로 제대로 된 평가도
													기회도 잡지 못한다. 엄마, 친구, 감독까지 모두가 꿈을 포기하라고 할 때, 야구부에 새로운 코치
													‘진태’(이준혁)가 부임하고 수인에게도 큰 변화가 찾아오는데… “전 해보지도 않고 포기 안 해요” 꿈을
													향해 던지는 단 하나의 스트라이크 주수인 파이팅!</p>
										</a></li>
										<li><a href="javascript:gfn_moveDetail('20004800');"
											title="영화상세 보기">
												<p class="bage film">필름소사이어티</p>
												<div class="img">
													<img
														src="https://img.megabox.co.kr/SharedImg/2020/04/16/3OHRKnHHelry9f7WY1vM9qghwK48Sr0I_230.jpg"
														alt="패왕별희 디 오리지널" onerror="noImg(this, 'main');">
												</div>

												<p class="tit">패왕별희 디 오리지널</p>

												<p class="summary">어렸을 때부터 함께 경극을 해온 ‘두지’(장국영)와
													‘시투’(장풍의). 세상에 둘도 없는 절친한 아우와 형이지만, ‘두지’는 남몰래 ‘시투’에 대한 마음을
													품고 있다. 하지만 ‘시투’는 여인 ‘주샨’(공리)에 마음을 빼앗기고, 그로 인해 ‘두지’는 감정의
													소용돌이에 빠지게 되는데… 사랑과 운명, 아름다움을 뒤바꾼 화려한 막이 열린다!</p>
										</a></li>
										<li><a href="javascript:gfn_moveDetail('20020200');"
											title="영화상세 보기">
												<p class="bage film">필름소사이어티</p>
												<div class="img">
													<img
														src="https://img.megabox.co.kr/SharedImg/2020/05/25/Hk5CYZskPmQjedi5z7Gl8j7AhtMLhppx_230.jpg"
														alt="환상의 마로나" onerror="noImg(this, 'main');">
												</div>

												<p class="tit">환상의 마로나</p>

												<p class="summary">“안녕, 내 이름은 마로나 지금부터 내 이야기를 들려 줄게” 9남매
													중 막내로 태어난 마로나. 형제들을 떠나 인간 주인을 만나면서 견생의 제2막이 오른다. 곡예사 마놀부터
													건설업자 이스트반, 귀여운 소녀 솔랑주까지. 새로운 주인을 만날 때마다 마로나 역시 새로운 삶을 살게
													되는데… 함께할 수 있는 인간이 있어 행복한 강아지 마로나 꿈보다 몽환적이고 동화보다 아름다운 이야기가
													펼쳐진다!</p>
										</a></li>
									</ul>

								</div>
								<!--// list-area -->

							</div>
							<!--// curation-area -->
						</div>
					</div>
					<!--// section main-curation : 큐레이션 -->

					<!-- section main-info : 메가박스 안내 -->
					<div id="main_section04" class="section main-info">

						<h2 class="tit">메가박스 안내</h2>

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
								<p class="tit">메가박스</p>
								<p class="link">
									<a href="/support/notice/detail?artiNo=10098&amp;bbsNo=9"
										title="공지사항 상세보기"> <strong> [무대인사] </strong> &lt;야구소녀&gt;
										개봉주 무대인사
									</a>
								</p>

								<p class="date">2020.06.16</p>

								<p class="more">
									<a href="/support/notice" title="전체공지 더보기">더보기 <i
										class="iconset ico-arr-right-gray"></i></a>
								</p>
							</div>
						</div>
						<!--// info-notice -->

						<!-- info-link -->
						<div class="info-link">
							<div class="table">
								<div class="cell">
									<a href="/support" title="고객센터 페이지로 이동"> <i
										class="iconset ico-main-customer"></i> <span>고객센터</span>
									</a>
								</div>

								<div class="cell">
									<a href="/support/faq" title="자주 묻는 질문 페이지로 이동"> <i
										class="iconset ico-main-faq"></i> <span>자주 묻는 질문</span>
									</a>
								</div>

								<div class="cell">
									<a href="/support/inquiry" title="1:1 문의 페이지로 이동"> <i
										class="iconset ico-main-qna"></i> <span>1:1 문의</span>
									</a>
								</div>

								<div class="cell">
									<a href="/support/rent" title="단체/대관문의 페이지로 이동"> <i
										class="iconset ico-main-group"></i> <span>단체/대관문의</span>
									</a>
								</div>

								<div class="cell">
									<a href="/support/lost" title="분실물 문의/접수 페이지로 이동"> <i
										class="iconset ico-main-lost"></i> <span>분실물 문의/접수</span>
									</a>
								</div>

								<div class="cell">
									<a href="/booking/privatebooking"
										title="더 부티크 프라이빗 대관예매 페이지로 이동"> <i
										class="iconset ico-main-boutique"></i> <span>더 부티크 프라이빗<br>대관예매
									</span>
									</a>
								</div>
							</div>
						</div>
						<!--// info-link -->
					</div>
					<!--// section main-info : 메가박스 안내 -->

					<!-- main-bottom-ad : 메인 하단 광고 영역 -->
					<div class="main-bottom-ad">
						<script data-id="K3I6ffWoQiqG93YqqRV0LA"
							name="megabox_p/main/main@main_bottom_1100x227?mlink=342"
							src="//cast.imp.joins.com/persona.js" async=""></script>
						<script
							src="//cast.imp.joins.com/body/K3I6ffWoQiqG93YqqRV0LA/k2516zXJoh57paD-806OR_JYj7BNxX4s-QJHglp9ZASEAM4qWzAZAbZSeGpfbEZqdVRfLVhRVnBiMXZMclZRAstB17oPoogWcgPLQde6D6KIFnI.js"></script>
						<div id="K3I6ffWoQiqG93YqqRV0LA">
							<iframe
								src="//ad.imp.joins.com/html/megabox_p/main/main@main_bottom_1100x227?_cid=K3I6ffWoQiqG93YqqRV0LA&amp;_uid=k2516zXJoh57paD-806OR_JYj7BNxX4s-QJHglp9ZASEAM4qWzAZAbZSeGpfbEZqdVRfLVhRVnBiMXZMclZRAstB17oPoogWcgPLQde6D6KIFnI&amp;_ref=https%3A%2F%2Fwww.megabox.co.kr%2F"
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
	<form id="mainForm"></form>

	<div class="normalStyle"
		style="display: none; position: fixed; top: 0; left: 0; background: #000; opacity: 0.7; text-indent: -9999px; width: 100%; height: 100%; z-index: 100;">닫기</div>
	<div class="alertStyle"
		style="display: none; position: fixed; top: 0px; left: 0px; background: #000; opacity: 0.7; width: 100%; height: 100%; z-index: 5005;"></div>
</body>
</html>