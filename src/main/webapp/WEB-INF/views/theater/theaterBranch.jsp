<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:import url="../template/header_css.jsp"></c:import>

</head>

<body>

	<c:import url="../template/header.jsp"></c:import>

	<div id="schdlContainer" class="container" style="margin-top: 92px;">
		<div class="page-util">
			<div class="inner-wrap">
				<div class="location">
					<span>Home</span> <a href="/theater/list" title="극장 페이지로 이동">극장</a>
					<a href="/theater/list" title="전체극장 페이지로 이동">전체극장</a> <a
						href="https://www.megabox.co.kr/theater?brchNo=1372"
						title="극장정보 페이지로 이동">극장정보</a>
				</div>
			</div>
		</div>

		<!-- contents -->
		<div id="contents" class="no-padding">

			<!-- theater-detail-page -->
			<div class="theater-detail-page">

				<div class="bg-img"
					style="background-image: url('/static/pc/images/theater/img-theater-detail.jpg');"></div>
				<div class="bg-pattern"></div>
				<div class="bg-mask"></div>

				<!-- theater-all -->

				<div class="theater-all">
					<!-- theater-area-list -->
					<div class="theater-area-list">
						<ul class="area-depth1">


							<li class="headtab"><a href="" class="depth1" title="서울 선택">서울</a>
								<div class="area-depth2">
									<ul>

										<c:forEach items="${arSeoul}" var="vo">
											<li><a
												href="./theaterBranch?theaterNum=${vo.theaterNum}">${vo.name}</a></li>
										</c:forEach>

									</ul>
								</div></li>


							<li class="headtab"><a href="" class="depth1" title="경기 선택">경기</a>
								<div class="area-depth2">
									<ul>
										<c:forEach items="${arGyeonggi}" var="vo">
											<li><a
												href="./theaterBranch?theaterNum=${vo.theaterNum}">${vo.name}</a></li>
										</c:forEach>
									</ul>
								</div></li>


							<li class="headtab"><a href="" class="depth1" title="인천 선택">인천</a>
								<div class="area-depth2">
									<ul>
										<c:forEach items="${arIncheon}" var="vo">
											<li><a
												href="./theaterBranch?theaterNum=${vo.theaterNum}">${vo.name}</a></li>
										</c:forEach>
									</ul>
								</div></li>


							<li class="headtab"><a href="" class="depth1"
								title="대전/충청/세종 선택">대전/충청/세종</a>
								<div class="area-depth2">
									<ul>
										<c:forEach items="${arChungcheong}" var="vo">
											<li><a
												href="./theaterBranch?theaterNum=${vo.theaterNum}">${vo.name}</a></li>
										</c:forEach>
									</ul>
								</div></li>


							<li class="headtab"><a href="" class="depth1"
								title="부산/대구/경상 선택">부산/대구/경상</a>
								<div class="area-depth2">
									<ul>
										<c:forEach items="${arGyeongsang}" var="vo">
											<li><a
												href="./theaterBranch?theaterNum=${vo.theaterNum}">${vo.name}</a></li>
										</c:forEach>
									</ul>
								</div></li>


							<li class="headtab"><a href="" class="depth1"
								title="광주/전라 선택">광주/전라</a>
								<div class="area-depth2">
									<ul>
										<c:forEach items="${arJeolla}" var="vo">
											<li><a
												href="./theaterBranch?theaterNum=${vo.theaterNum}">${vo.name}</a></li>
										</c:forEach>
									</ul>
								</div></li>


							<li class="headtab"><a href="" class="depth1" title="강원 선택">강원</a>
								<div class="area-depth2">
									<ul>
										<c:forEach items="${arGangwon}" var="vo">
											<li><a
												href="./theaterBranch?theaterNum=${vo.theaterNum}">${vo.name}</a></li>
										</c:forEach>
									</ul>
								</div></li>


							<li class="headtab"><a href="" class="depth1" title="제주 선택">제주</a>
								<div class="area-depth2">
									<ul>
										<c:forEach items="${arJeju}" var="vo">
											<li><a
												href="./theaterBranch?theaterNum=${vo.theaterNum}">${vo.name}</a></li>
										</c:forEach>
									</ul>
								</div></li>

						</ul>
					</div>
					<!--// theater-area-list -->

					<p class="name">${vo.name}</p>

					<div class="btn-util right">

						<div class="block">

							<button type="button" class="btn btn-like tooltip click">
								<i class="iconset ico-like-line"></i> <span>예매하러 가기</span> <span
									class="ir" data-width="235"> <span class="cont-area">
										<span class="login-alert-tooltip"> 로그인이 필요한 서비스 입니다.<br>
											<a href="" id="moveLogin" title="로그인하기">로그인하기 <i
												class="iconset ico-arr-right-green"></i></a>
									</span>
								</span>
								</span>
							</button>


						</div>
					</div>
				</div>

				<!--// theater-detail-cont -->
			</div>
			<script type="text/javascript">
				$('li.headtab').hover(function() {
					$('li.headtab').removeClass('on');
					$(this).addClass('on');
				}, function() {
					$('li.headtab').removeClass('on');
				})
			</script>
			<!--// theater-detail-page -->


			<div class="inner-wrap pt40">

				<div class="tab-list fixed mb40 tab-layer">
					<ul class="tabs">
						<li class="on"><a href="#tab01" title="1">극장정보</a></li>
						<li><a href="#tab03" title="3">관람료</a></li>
						<!-- <li><a href="#tab03" title="상영시간표">상영시간표</a></li> -->
					</ul>
				</div>

				<script type="text/javascript">
					$('ul.tabs li').click(function() {
						$('ul.tabs li').removeClass('on');
						$(this).addClass('on');

						/* alert($('ul.tabs li.on>a').attr("title")) */

						if ($('ul.tabs li.on>a').attr("title") == 1) {

							$('#tab03').removeClass('on');
							$('#tab01').removeClass('on');
							$('#tab01').addClass('on');

						} else if ($('ul.tabs li.on>a').attr("title") == 3) {

							$('#tab01').removeClass('on');
							$('#tab03').removeClass('on');
							$('#tab03').addClass('on');

						}

					})
				</script>

				<!-- 메인 시작 -->
				<div class="tab-cont-wrap">
					<div id="tab01" class="tab-cont on">

						<div class="theater-info-text mt40">
							<p class="big">${vo.info}</p>
						</div>



						<h2 class="tit small mt70">시설안내</h2>



						<h3 class="tit small">보유시설</h3>

						<div class="theater-facility">

							<p>
								<i class="iconset ico-facility-theater"></i>일반상영관<br>(상영관
								정보 입력)
							</p>

							<p>
								<i class="iconset ico-facility-disabled"></i>장애인석
							</p>

						</div>

						<h3 class="tit small mt30">층별안내(각 상영관 정보로 바꿀 예정)</h3>

						<ul class="dot-list">

							<li><span class="font-gblue">8층 : </span> 매표소, 매점, 에스컬레이터,
								엘리베이터 , 남자 · 여자 화장실, 비상계단 3</li>

							<li><span class="font-gblue">9층 : </span> 1관, 2관, 남자 · 여자
								화장실, 엘리베이터, 비상계단3</li>

							<li><span class="font-gblue">10층 : </span> 3관, 4관, 엘리베이터2,
								남자 · 여자 화장실, 비상계단 3</li>

							<li><span class="font-gblue">11층 : </span> 5관, 6관, 7관,
								엘리베이터2, 남자 · 여자 화장실, 비상계단 3</li>

						</ul>

						<h2 class="tit small mt70">교통안내</h2>

						<h3 class="tit small">약도</h3>

						<ul class="dot-list">
							<li><span class="font-gblue">도로명주소 : </span>${vo.address}</li>

						</ul>

						<div class="location-map-btn mt15">
							<div class="btn-group left">
								<a
									href="http://m.map.naver.com/map.nhn?lng=127.0264086&amp;lat=37.498214&amp;level=2"
									class="button purple" target="_blank" title="새창열림">실시간 길찾기</a>
							</div>
						</div>

						<h3 class="tit small mt30">주차</h3>

						<div class="parking-info">


							<div class="parking-section">
								<div class="icon-box">
									<i class="iconset ico-parking" title="주차안내">주차안내</i>
								</div>

								<div class="info">
									<p class="tit">주차안내</p>

									<ul class="dot-list">

										<li>${vo.parking}</li>
										<!-- <li>아라타워 건물 內 지하 3층 ~ 지하 6층 주차장 이용</li> -->

									</ul>
								</div>
							</div>

					<!-- 		<div class="parking-section">
								<div class="icon-box">
									<i class="iconset ico-parking-confirm" title="주차확인">주차확인</i>
								</div>

								<div class="info">
									<p class="tit">주차확인</p>

									<ul class="dot-list">

										<li>매표소에서 당일 관람 티켓 인증 후, 차량 번호 할인 등록하여 지하 정산소에서 결제</li>

									</ul>
								</div>
							</div>

							<div class="parking-section">
								<div class="icon-box">
									<i class="iconset ico-cash" title="주차요금">주차요금</i>
								</div>

								<div class="info">
									<p class="tit">주차요금</p>

									<ul class="dot-list">

										<li>주차 요금은 입차시간을 기준으로 합니다.</li>

										<li>영화 관람 시 3시간 → 3,000원(3시간 초과 시 10분당 1,000원 부과, 초과비용 출차
											시 정산)</li>

										<li>건물 내 타 매장과 주차 할인 중복 적용 불가.</li>

										<li>입차시 최대 3시간 30분까지 할인 가능(차량 1대에 주차 할인 적용 2회 이상 불가)</li>

										<li>주차 공간이 협소하므로 가급적이면 대중교통을 이용 바랍니다. (지하철 2호선 강남역 출구 9번
											출구)</li>

									</ul>
								</div>
							</div> -->

						</div>

						<!-- 	<h3 class="tit small mt30">대중교통</h3>

						location-info
						<div class="public-transportation">

							버스 정보

							<div class="transportation-section">
								<div class="icon-box">
									<i class="iconset ico-bus" title="버스">버스</i>
								</div>

								<div class="info">
									<p class="tit">버스</p>
									<ul class="dot-list">

										<li>140번, 144번, 145번, 146번, 360번, 402번, 407번, 408번, 420번,
											440번, 441번, 462번, 470번, 471번</li>

										<li>3412번, 4412번, 서초03번, 서초 09번</li>

										<li>9404번, 9408번, 9409번, 9503번, 9711번, 9500번, 9501번,
											9510번, 9800번, 9801번, 9802번, 9901번, M4403번, M7412번</li>

									</ul>
								</div>
							</div>


							지하철 정보

							<div class="transportation-section">
								<div class="icon-box">
									<i class="iconset ico-metro" title="지하철">지하철</i>
								</div>

								<div class="info">
									<p class="tit">지하철</p>
									<ul class="dot-list">

										<li>지하철 2호선 , 신분당선 ‘강남역 -&gt; 지하철 9번(구 5번) 출구 좌측 연결통로 이용</li>

									</ul>
								</div>
							</div>


							대중교통 정보가 없는 경우

						</div>
 -->

						<!--// location-info -->
						<div id="brchNoti">
							<h2 class="tit small mt70">공지사항</h2>
							<a href="${pageContext.request.contextPath}/notice/noticeList?name=${vo.name}"
								class="more" title="극장 공지사항 더보기" style="margin-left: 1030px;">더보기
								<i class="iconset ico-arr-right-gray"></i>
							</a> <br>
							<br>

							<!-- accordion-list -->
							<div class="table-wrap">
								<table class="board-list">
									<caption>번호, 제목, 지역, 등록일이 들어간 극장 공지사항 목록</caption>
									<colgroup>
										<col style="width: 150px;">
										<col>
										<col style="width: 150px;">
										<col style="width: 120px;">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">번호</th>
											<th scope="col">제목</th>
											<th scope="col">극장</th>
											<th scope="col">등록일</th>
										</tr>
									</thead>
									<tbody>


										<c:forEach items="${notice}" var="vo" begin="0" end="4">
											<tr>
												<td>${vo.num}</td>
												<th scope="row"><a
													href="${pageContext.request.contextPath}/notice/noticeSelect?num=${vo.num}"
													title="">${vo.title}</a></th>
												<td>${vo.name}</td>
												<td>${vo.regDate}</td>
											</tr>
										</c:forEach>

									</tbody>
								</table>
							</div>
							<!--// accordion-list -->

						</div>

					</div>
					<!--  end tab -->

					<!--  상영시간표 탭 일단 주석처리 -->
					<%-- 				<div id="tab02" class="tab-cont">
						<a href="" class="ir">상영시간표 탭 화면 입니다.</a>
						<h2 class="tit small" style="display: none;">무대인사</h2>
						<div class="movie-greeting" style="display: none;"></div>
						<h2 class="tit small mt40">상영시간표</h2>
						<div class="time-schedule mb30">
							<div class="wrap">
								<button type="button" title="이전 날짜 보기" class="btn-pre"
									disabled="true">
									<i class="iconset ico-cld-pre"></i> <em>이전</em>
								</button>
								<div class="date-list">
									<div class="year-area">
										<div class="year" style="left: 30px; z-index: 1; opacity: 1;">2020.06</div>
										<div class="year" style="left: 870px; z-index: 1; opacity: 1;">2020.07</div>
									</div>
									<div class="date-area">
										<div class="wrap"
											style="position: relative; width: 2100px; border: none; left: -70px;">
											<button class="disabled" type="button" date-data="2020.06.18"
												month="5" tabindex="-1">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">18<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">목</span><span
													class="day-en" style="pointer-events: none; display: none">Thu</span>
											</button>
											<button class="on" type="button" date-data="2020.06.19"
												month="5">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">19<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">오늘</span><span
													class="day-en" style="pointer-events: none; display: none">Fri</span>
											</button>
											<button class="sat" type="button" date-data="2020.06.20"
												month="5">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">20<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">내일</span><span
													class="day-en" style="pointer-events: none; display: none">Sat</span>
											</button>
											<button class="holi" type="button" date-data="2020.06.21"
												month="5">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">21<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">일</span><span
													class="day-en" style="pointer-events: none; display: none">Sun</span>
											</button>
											<button class="disabled" type="button" date-data="2020.06.22"
												month="5">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">22<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">월</span><span
													class="day-en" style="pointer-events: none; display: none">Mon</span>
											</button>
											<button class="disabled" type="button" date-data="2020.06.23"
												month="5">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">23<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">화</span><span
													class="day-en" style="pointer-events: none; display: none">Tue</span>
											</button>
											<button class="disabled" type="button" date-data="2020.06.24"
												month="5">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">24<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">수</span><span
													class="day-en" style="pointer-events: none; display: none">Wed</span>
											</button>
											<button class="disabled" type="button" date-data="2020.06.25"
												month="5">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">25<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">목</span><span
													class="day-en" style="pointer-events: none; display: none">Thu</span>
											</button>
											<button class="disabled" type="button" date-data="2020.06.26"
												month="5">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">26<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">금</span><span
													class="day-en" style="pointer-events: none; display: none">Fri</span>
											</button>
											<button class="disabled sat" type="button"
												date-data="2020.06.27" month="5">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">27<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">토</span><span
													class="day-en" style="pointer-events: none; display: none">Sat</span>
											</button>
											<button class="disabled holi" type="button"
												date-data="2020.06.28" month="5">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">28<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">일</span><span
													class="day-en" style="pointer-events: none; display: none">Sun</span>
											</button>
											<button class="disabled" type="button" date-data="2020.06.29"
												month="5">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">29<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">월</span><span
													class="day-en" style="pointer-events: none; display: none">Mon</span>
											</button>
											<button class="disabled" type="button" date-data="2020.06.30"
												month="5">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">30<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">화</span><span
													class="day-en" style="pointer-events: none; display: none">Tue</span>
											</button>
											<button class="disabled" type="button" date-data="2020.07.01"
												month="6">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">1<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">수</span><span
													class="day-en" style="pointer-events: none; display: none">Wed</span>
											</button>
											<button class="disabled" type="button" date-data="2020.07.02"
												month="6">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">2<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">목</span><span
													class="day-en" style="pointer-events: none; display: none">Thu</span>
											</button>
											<button class="disabled" type="button" date-data="2020.07.03"
												month="6" tabindex="-1">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">3<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">금</span><span
													class="day-en" style="pointer-events: none; display: none">Fri</span>
											</button>
										</div>
									</div>
								</div>
								<button type="button" title="다음 날짜 보기" class="btn-next"
									disabled="true">
									<i class="iconset ico-cld-next"></i> <em>다음</em>
								</button>
								<div class="bg-line">
									<input type="hidden" name="datePicker" id="dp1592537908437"
										class="hasDatepicker" value="2020.06.19">
									<button type="button" class="btn-calendar-large" title="달력보기">
										달력보기</button>
								</div>
							</div>
						</div>
						<div class="movie-option mb20">
							<div class="option">
								<ul>
									<li><i class="iconset ico-stage" title="무대인사"></i>무대인사</li>
									<li><i class="iconset ico-user" title="회원시사"></i>회원시사</li>
									<li><i class="iconset ico-open" title="오픈시사"></i>오픈시사</li>
									<li><i class="iconset ico-goods" title="굿즈패키지"></i>굿즈패키지</li>
									<li><i class="iconset ico-singalong" title="싱어롱"></i>싱어롱</li>
									<li><i class="iconset ico-gv" title="GV"></i>GV</li>
									<li><i class="iconset ico-sun" title="조조"></i>조조</li>
									<li><i class="iconset ico-brunch" title="브런치"></i>브런치</li>
									<li><i class="iconset ico-moon" title="심야"></i>심야</li>
								</ul>
							</div>
							<div class="rateing-lavel">
								<a href="" class="" title="관람등급안내">관람등급안내</a>
							</div>
						</div>
						<div class="reserve theater-list-box">
							<div class="tab-block tab-layer mb30" style="display: none;">
								<ul></ul>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-all"></p>
									<p>온워드: 단 하루의 기적</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 102분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">컴포트1관</p>
										<p class="chair">총 284석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D(자막)</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003002"
															rpst-movie-no="01693600" theab-no="01" play-de="20200619"
															play-seq="2">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">13:10</p>
																		<p class="chair">188석</p>
																		<div class="play-time">
																			<p>13:10~15:02</p>
																			<p>2회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003003"
															rpst-movie-no="01693600" theab-no="01" play-de="20200619"
															play-seq="3">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">15:25</p>
																		<p class="chair">184석</p>
																		<div class="play-time">
																			<p>15:25~17:17</p>
																			<p>3회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003004"
															rpst-movie-no="01693600" theab-no="01" play-de="20200619"
															play-seq="4">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">17:40</p>
																		<p class="chair">182석</p>
																		<div class="play-time">
																			<p>17:40~19:32</p>
																			<p>4회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003005"
															rpst-movie-no="01693600" theab-no="01" play-de="20200619"
															play-seq="5">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">20:00</p>
																		<p class="chair">180석</p>
																		<div class="play-time">
																			<p>20:00~21:52</p>
																			<p>5회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">3관</p>
										<p class="chair">총 240석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D(자막)</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003008"
															rpst-movie-no="01693600" theab-no="03" play-de="20200619"
															play-seq="2">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">14:20</p>
																		<p class="chair">161석</p>
																		<div class="play-time">
																			<p>14:20~16:12</p>
																			<p>2회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003010"
															rpst-movie-no="01693600" theab-no="03" play-de="20200619"
															play-seq="4">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">18:50</p>
																		<p class="chair">159석</p>
																		<div class="play-time">
																			<p>18:50~20:42</p>
																			<p>4회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003011"
															rpst-movie-no="01693600" theab-no="03" play-de="20200619"
															play-seq="5">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">21:10</p>
																		<p class="chair">157석</p>
																		<div class="play-time">
																			<p>21:10~23:02</p>
																			<p>5회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-15"></p>
									<p>사라진 시간</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 105분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">4관</p>
										<p class="chair">총 203석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003018"
															rpst-movie-no="20018900" theab-no="04" play-de="20200619"
															play-seq="2">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">14:40</p>
																		<p class="chair">134석</p>
																		<div class="play-time">
																			<p>14:40~16:35</p>
																			<p>2회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003024"
															rpst-movie-no="20018900" theab-no="04" play-de="20200619"
															play-seq="4">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">19:10</p>
																		<p class="chair">135석</p>
																		<div class="play-time">
																			<p>19:10~21:05</p>
																			<p>4회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003025"
															rpst-movie-no="20018900" theab-no="04" play-de="20200619"
															play-seq="5">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">21:25</p>
																		<p class="chair">134석</p>
																		<div class="play-time">
																			<p>21:25~23:20</p>
																			<p>5회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">5관</p>
										<p class="chair">총 203석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003020"
															rpst-movie-no="20018900" theab-no="05" play-de="20200619"
															play-seq="2">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">13:30</p>
																		<p class="chair">132석</p>
																		<div class="play-time">
																			<p>13:30~15:25</p>
																			<p>2회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003021"
															rpst-movie-no="20018900" theab-no="05" play-de="20200619"
															play-seq="3">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">15:45</p>
																		<p class="chair">129석</p>
																		<div class="play-time">
																			<p>15:45~17:40</p>
																			<p>3회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003022"
															rpst-movie-no="20018900" theab-no="05" play-de="20200619"
															play-seq="4">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">18:00</p>
																		<p class="chair">134석</p>
																		<div class="play-time">
																			<p>18:00~19:55</p>
																			<p>4회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003023"
															rpst-movie-no="20018900" theab-no="05" play-de="20200619"
															play-seq="5">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">20:15</p>
																		<p class="chair">133석</p>
																		<div class="play-time">
																			<p>20:15~22:10</p>
																			<p>5회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-15"></p>
									<p>결백</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 111분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">7관</p>
										<p class="chair">총 258석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003043"
															rpst-movie-no="20003500" theab-no="07" play-de="20200619"
															play-seq="2">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">12:40</p>
																		<p class="chair">169석</p>
																		<div class="play-time">
																			<p>12:40~14:41</p>
																			<p>2회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003040"
															rpst-movie-no="20003500" theab-no="07" play-de="20200619"
															play-seq="3">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">15:05</p>
																		<p class="chair">170석</p>
																		<div class="play-time">
																			<p>15:05~17:06</p>
																			<p>3회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003041"
															rpst-movie-no="20003500" theab-no="07" play-de="20200619"
															play-seq="4">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">17:25</p>
																		<p class="chair">170석</p>
																		<div class="play-time">
																			<p>17:25~19:26</p>
																			<p>4회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003042"
															rpst-movie-no="20003500" theab-no="07" play-de="20200619"
															play-seq="5">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">19:45</p>
																		<p class="chair">164석</p>
																		<div class="play-time">
																			<p>19:45~21:46</p>
																			<p>5회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">8관</p>
										<p class="chair">총 180석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003053"
															rpst-movie-no="20003500" theab-no="08" play-de="20200619"
															play-seq="5">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">21:00</p>
																		<p class="chair">118석</p>
																		<div class="play-time">
																			<p>21:00~23:01</p>
																			<p>5회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-12"></p>
									<p>위대한 쇼맨</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 104분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">3관</p>
										<p class="chair">총 240석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D(자막)</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003045"
															rpst-movie-no="01309400" theab-no="03" play-de="20200619"
															play-seq="3">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">16:35</p>
																		<p class="chair">128석</p>
																		<div class="play-time">
																			<p>16:35~18:29</p>
																			<p>3회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-19"></p>
									<p>콜 미 바이 유어 네임</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 132분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">6관</p>
										<p class="chair">총 190석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D(자막)</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003047"
															rpst-movie-no="20021700" theab-no="06" play-de="20200619"
															play-seq="4">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">17:15</p>
																		<p class="chair">118석</p>
																		<div class="play-time">
																			<p>17:15~19:37</p>
																			<p>4회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003048"
															rpst-movie-no="20021700" theab-no="06" play-de="20200619"
															play-seq="5">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">20:05</p>
																		<p class="chair">120석</p>
																		<div class="play-time">
																			<p>20:05~22:27</p>
																			<p>5회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-12"></p>
									<p>[F] 야구소녀</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 105분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">4관</p>
										<p class="chair">총 203석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003019"
															rpst-movie-no="20019300" theab-no="04" play-de="20200619"
															play-seq="3">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">16:55</p>
																		<p class="chair">133석</p>
																		<div class="play-time">
																			<p>16:55~18:50</p>
																			<p>3회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-12"></p>
									<p>에어로너츠</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 101분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">2관</p>
										<p class="chair">총 186석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D(자막)</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003014"
															rpst-movie-no="20005400" theab-no="02" play-de="20200619"
															play-seq="3">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">16:00</p>
																		<p class="chair">124석</p>
																		<div class="play-time">
																			<p>16:00~17:51</p>
																			<p>3회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003016"
															rpst-movie-no="20005400" theab-no="02" play-de="20200619"
															play-seq="5">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">20:40</p>
																		<p class="chair">123석</p>
																		<div class="play-time">
																			<p>20:40~22:31</p>
																			<p>5회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-15"></p>
									<p>침입자</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 102분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">8관</p>
										<p class="chair">총 180석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003050"
															rpst-movie-no="20003100" theab-no="08" play-de="20200619"
															play-seq="3">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">16:20</p>
																		<p class="chair">120석</p>
																		<div class="play-time">
																			<p>16:20~18:12</p>
																			<p>3회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-19"></p>
									<p>레옹 디 오리지널</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 110분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">2관</p>
										<p class="chair">총 186석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D(자막)</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003013"
															rpst-movie-no="20022300" theab-no="02" play-de="20200619"
															play-seq="2">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">13:40</p>
																		<p class="chair">112석</p>
																		<div class="play-time">
																			<p>13:40~15:40</p>
																			<p>2회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-12"></p>
									<p>나의 첫 번째 슈퍼스타</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 113분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">6관</p>
										<p class="chair">총 190석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D(자막)</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003028"
															rpst-movie-no="20020400" theab-no="06" play-de="20200619"
															play-seq="3">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">14:50</p>
																		<p class="chair">124석</p>
																		<div class="play-time">
																			<p>14:50~16:53</p>
																			<p>3회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-15"></p>
									<p>카페 벨에포크</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 115분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">8관</p>
										<p class="chair">총 180석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D(자막)</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003049"
															rpst-movie-no="20013300" theab-no="08" play-de="20200619"
															play-seq="4">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">18:35</p>
																		<p class="chair">104석</p>
																		<div class="play-time">
																			<p>18:35~20:40</p>
																			<p>4회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-12"></p>
									<p>아이 캔 온리 이매진</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 110분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">8관</p>
										<p class="chair">총 180석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D(자막)</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003051"
															rpst-movie-no="01665200" theab-no="08" play-de="20200619"
															play-seq="2">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">13:55</p>
																		<p class="chair">119석</p>
																		<div class="play-time">
																			<p>13:55~15:55</p>
																			<p>2회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-15"></p>
									<p>[F] 전망좋은 방</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 117분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">2관</p>
										<p class="chair">총 186석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D(자막)</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003015"
															rpst-movie-no="20020000" theab-no="02" play-de="20200619"
															play-seq="4">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">18:10</p>
																		<p class="chair">122석</p>
																		<div class="play-time">
																			<p>18:10~20:17</p>
																			<p>4회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="box-border v1 mt30">
							<li>지연입장에 의한 관람불편을 최소화하고자 본 영화는 약 10분 후 시작됩니다.</li>
							<li>쾌적한 관람 환경을 위해 상영시간 이전에 입장 부탁드립니다.</li>
						</div>
					</div> --%>

					<div id="tab03" class="tab-cont">
						<a href="" class="ir">관람료 탭 화면 입니다.</a>
						<h2 class="tit small">영화관람료</h2>
						<div class="fee-table-box">
							<div class="fee-table">
								<p class="fee-table-tit">일반 2D</p>
								<div class="table-wrap">
									<table class="data-table a-c"
										summary="가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.">
										<caption>가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.</caption>
										<colgroup>
											<col>
											<col style="width: 25%;">
											<col style="width: 25%;">
											<col style="width: 25%;">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">요일</th>
												<th scope="col">상영시간</th>
												<th scope="col">일반</th>
												<th scope="col">청소년</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="rowgroup" rowspan="3">월~목</th>
												<td>조조 (06:00~)</td>
												<td>7,000</td>
												<td>6,000</td>
											</tr>
											<tr>
												<td>일반 (10:00~)</td>
												<td>10,000</td>
												<td>8,000</td>
											</tr>
											<tr>
												<td>심야 (23:00~)</td>
												<td>9,000</td>
												<td>7,000</td>
											</tr>
											<tr>
												<th scope="rowgroup" rowspan="3">금~일<br>공휴일
												</th>
												<td>조조 (06:00~)</td>
												<td>8,000</td>
												<td>6,000</td>
											</tr>
											<tr>
												<td>일반 (10:00~)</td>
												<td>12,000</td>
												<td>9,000</td>
											</tr>
											<tr>
												<td>심야 (23:00~)</td>
												<td>10,000</td>
												<td>8,000</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>

							<%-- 							<div class="fee-table">
								<p class="fee-table-tit">일반 3D</p>
								<div class="table-wrap">
									<table class="data-table a-c"
										summary="가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.">
										<caption>가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.</caption>
										<colgroup>
											<col>
											<col style="width: 25%;">
											<col style="width: 25%;">
											<col style="width: 25%;">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">요일</th>
												<th scope="col">상영시간</th>
												<th scope="col">일반</th>
												<th scope="col">청소년</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="rowgroup" rowspan="3">월~목</th>
												<td>조조 (06:00~)</td>
												<td>9,000</td>
												<td>8,000</td>
											</tr>
											<tr>
												<td>일반 (10:00~)</td>
												<td>12,000</td>
												<td>9,000</td>
											</tr>
											<tr>
												<td>심야 (23:00~)</td>
												<td>11,000</td>
												<td>8,000</td>
											</tr>
											<tr>
												<th scope="rowgroup" rowspan="3">금~일<br>공휴일
												</th>
												<td>조조 (06:00~)</td>
												<td>10,000</td>
												<td>9,000</td>
											</tr>
											<tr>
												<td>일반 (10:00~)</td>
												<td>14,000</td>
												<td>11,000</td>
											</tr>
											<tr>
												<td>심야 (23:00~)</td>
												<td>12,000</td>
												<td>10,000</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div> --%>

						</div>


						<%-- 						<div class="fee-table-box">
							<div class="fee-table">
								<p class="fee-table-tit">COMFORT 일반 2D</p>
								<div class="table-wrap">
									<table class="data-table a-c"
										summary="가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.">
										<caption>가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.</caption>
										<colgroup>
											<col>
											<col style="width: 25%;">
											<col style="width: 25%;">
											<col style="width: 25%;">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">요일</th>
												<th scope="col">상영시간</th>
												<th scope="col">일반</th>
												<th scope="col">청소년</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="rowgroup" rowspan="3">월~목</th>
												<td>조조 (06:00~)</td>
												<td>7,000</td>
												<td>6,000</td>
											</tr>
											<tr>
												<td>일반 (10:00~)</td>
												<td>10,000</td>
												<td>8,000</td>
											</tr>
											<tr>
												<td>심야 (23:00~)</td>
												<td>9,000</td>
												<td>7,000</td>
											</tr>
											<tr>
												<th scope="rowgroup" rowspan="3">금~일<br>공휴일
												</th>
												<td>조조 (06:00~)</td>
												<td>8,000</td>
												<td>6,000</td>
											</tr>
											<tr>
												<td>일반 (10:00~)</td>
												<td>12,000</td>
												<td>9,000</td>
											</tr>
											<tr>
												<td>심야 (23:00~)</td>
												<td>10,000</td>
												<td>8,000</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="fee-table">
								<p class="fee-table-tit">COMFORT 일반 3D</p>
								<div class="table-wrap">
									<table class="data-table a-c"
										summary="가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.">
										<caption>가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.</caption>
										<colgroup>
											<col>
											<col style="width: 25%;">
											<col style="width: 25%;">
											<col style="width: 25%;">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">요일</th>
												<th scope="col">상영시간</th>
												<th scope="col">일반</th>
												<th scope="col">청소년</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="rowgroup" rowspan="3">월~목</th>
												<td>조조 (06:00~)</td>
												<td>10,000</td>
												<td>9,000</td>
											</tr>
											<tr>
												<td>일반 (10:00~)</td>
												<td>13,000</td>
												<td>10,000</td>
											</tr>
											<tr>
												<td>심야 (23:00~)</td>
												<td>11,000</td>
												<td>9,000</td>
											</tr>
											<tr>
												<th scope="rowgroup" rowspan="3">금~일<br>공휴일
												</th>
												<td>조조 (06:00~)</td>
												<td>11,000</td>
												<td>10,000</td>
											</tr>
											<tr>
												<td>일반 (10:00~)</td>
												<td>15,000</td>
												<td>12,000</td>
											</tr>
											<tr>
												<td>심야 (23:00~)</td>
												<td>13,000</td>
												<td>11,000</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div> --%>


						<span style="color: #503396"><span style="font-size: 22px">요금제</span></span><br>
						<br> • <font color="#01738b">청소년 요금</font>&nbsp; 만7세~ 만18세 :
						초등학생~고등학생(학생증, 교복, 청소년증, 의료보험증, 주민등록 등/초본, 그 외 청소년 확인 가능 서류)<br>
						• 48개월 미만의 경우 증빙원(예 : 의료보험증, 주민등록 초/등본 등) 지참 시에만 무료 관람 가능<br>
						<br> <br> <span style="font-size: 22px"><span
							style="color: #503396">우대적용</span></span><br> <br> • <font
							color="#01738b">국가유공자</font>&nbsp; 현장에서 국가유공자증을 소지한 본인 외 동반 1인까지
						적용<br> • <font color="#01738b">장애인</font>&nbsp; 현장에서 복지카드를
						소지한 장애인(1급~3급까지 동반 1인까지 적용 / 4급~6급은 본인에 한함)<br> • <font
							color="#01738b">경로</font>&nbsp; 만65세 이상 본인에 한함(신분증 확인)<br> •
						<font color="#01738b">경찰, 소방종사자</font>&nbsp; 공무원증을 소지하거나 정복을 입은
						경찰, 소방관 본인<br> <br> <br> 관람가격 및 시간대 운영은 극장마다 상이할 수
						있으며, 상기 가격은 메가박스 동대문점에 한하여 적용됩니다.
					</div>



				</div>
			</div>
		</div>
		<!--// contents -->
	</div>
	<div style="margin-top: 300px;">
		<c:import url="../template/footer.jsp"></c:import>
	</div>
</body>
</html>