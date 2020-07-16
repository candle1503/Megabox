<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="shortcut icon" href="/resources/static/icon/favicon.ico">
<link rel="stylesheet" href="/resources/static/css/megabox.min.css"	media="all">
<link rel="stylesheet" href="/resources/static/css/myPage.css"	media="all">
<link rel="stylesheet" href="/resources/static/css/bookingMy.css" media="all">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- dataPicker -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>

<body>
	
	
	
	<c:import url="../template/header.jsp"></c:import>

	<div class="container has-lnb">
		<div class="page-util">
			<div class="inner-wrap" id="myLoaction">
				<div class="location">
					<span>Home</span> <a href="/mypage" title="나의 메가박스 페이지로 이동">나의
						메가박스</a> <a href="/mypage/bookinglist?tab=01" title="예매/구매내역 페이지로 이동">예매/구매내역</a>
					<a href="/mypage/bookinglist?tab=01" title="예매내역 페이지로 이동">예매내역</a>
				</div>
			</div>
		</div>

		<div class="inner-wrap">


			<div class="lnb-area">

				<c:import url="../template/memberSidebar.jsp"></c:import>

			</div>



			<div id="myLoactionInfo" style="display: none;">
				<div class="location">
					<span>Home</span> <a href="/mypage" title="나의 메가박스 페이지로 이동">나의
						메가박스</a> <a href="/mypage/bookinglist?tab=01" title="예매/구매내역 페이지로 이동">예매/구매내역</a>
				</div>
			</div>

			<!-- container -->
			<div id="contents">
				<h2 class="tit">예매/구매 내역</h2>

				<div class="tab-block tab-layer">
					<ul>
						<li data-url="/mypage/bookinglist?tab=01" data-tit="예매내역"
							title="예매내역 탭으로 이동" id="bookedBefore" class="bookedTab on"><a href="./bookingMy"
							class="btn">예매 내역 </a></li>
						<li data-url="/mypage/bookinglist?tab=02" data-tit="구매내역" id="bookedAfter" class="bookedTab"
							title="구매내역 탭으로 이동"><a href="#After" class="btn">지난 내역
						</a></li>
					</ul>
				</div>
				
				<script type="text/javascript">
					var id = "${id}";

					function bookedCompAfter(id){
						$.get("bookingMyAfter?id="+id, function(result){
							$("#bokdList").empty();
							$("#bokdList").append(result);
						});
					}
					
					$("#bookedAfter").click(function(){
						$(this).addClass("on");
						$("#bookedBefore").removeClass("on");
						
						bookedCompAfter(id);
					});

					$("#bookedBefore").click(function(){
						$(this).addClass("on");
					});
				
				</script>
				
				<div class="tab-cont-wrap">

					<!-- 예매내역 -->
					<div id="myBokdArea" class="tab-cont on">

						<!-- 예매 조회 조건 -->
						<div class="board-list-search mt20">
							<table summary="예매 조회 조건">
								<colgroup>
									<col style="width: 75px;">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">구분</th>
										<td>

											<div class="dropdown bootstrap-select small bs3"
												style="margin-top: 10px; width: 25%;">
												
												<input id="calendar" style="left: 1300px; width: 130px"
												value="시작날짜" name="startDay" class="button gray-line small" readonly="readonly">
												
												
												<div class="dropdown-menu open" role="combobox">
													<div class="inner open" role="listbox"
														aria-expanded="false" tabindex="-1">
														<ul class="dropdown-menu inner "></ul>
													</div>
												</div>
											</div>
											<button type="button" class="button gray-line small"
												name="search" style="margin-top: 10px; margin-left: 0px;">
												<i class="iconset ico-search-gray"></i> 조회
											</button></td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- 예매 조회 조건 End -->

<script type="text/javascript">
	var G_calendar = {
			startDate: '-0d',
		    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		    dayNamesMin: ['일','월','화','수','목','금','토'],
		    weekHeader: 'Wk',
		    dateFormat: 'yy-mm-dd',
		    autoclose : true,
		    showOn:"both",
		    showMonthAfterYear: true,
		    changeDate: false,   
		    maxDate: '0d',
		    minDate: '-3y',
		    closeText: '닫기',
	}

	$('#calendar').datepicker(G_calendar);

	$('#calendar').change(function(){
	alert($('#calendar').val());
			})

	</script>



						<!-- 예매 영화 목록 -->
						<div id="bokdList">
							<div class="board-list-util">
								<p class="result-count pt00">
								<!-- size뿌려줄거 -->
									<strong> 총 <b class="font-gblue">${bookedSize}</b>건
									</strong>
								</p>
							</div>
							<div class="history-reservation">
							
							<!-- c:foreach로 뿌려줄 거 -->
								<ul id="bookedList">
									<c:forEach items="${bookedCompAr}" var="bookedCompList" varStatus="i">
									<li sell-tran-no="13722007010094143868">
										<div class="round">
											<a href="${pageContext.request.contextPath}/movie/movieSelect?movieNum=${bookedCompList.movieNum}" class="img"
												title="${bookedCompList.movieName} "><img
												src="upload/movie/${mvfile[0].fileName}"
												alt="결백" onerror="noImg(this)"></a>
											<table class="table">
												<colgroup>
													<col style="width: 100px;">
													<col style="width: 230px;">
													<col style="width: 100px;">
													<col>
												</colgroup>
												<tbody>
													<tr>
														<th scope="row">예매번호</th>
														<td colspan="3"><em class="num">${bookedCompList.ticketCode}</em></td>
													</tr>
													<tr>
														<th scope="row" class="a-r">영화명</th>
														<td colspan="3">
															<p class="tit-movie">
																<span>${bookedCompList.movieName}</span> <span>2D</span>
															</p>
														</td>
													</tr>
													<tr>
														<th scope="row" class="a-r">극장/상영관</th>
														<td>${theaterName[i.index]} / ${theaterRoomName[i.index]}</td>
														<th scope="row">관람인원</th>
														<td>일반 ${bookedCompList.count}명</td>
													</tr>
													<tr>
														<th scope="row" class="a-r">관람일시</th>
														<td>${viewDate[i.index]}</td>
														<th scope="row">관람좌석</th>
														<td>${bookedCompList.seatNum}</td>
													</tr>
												</tbody>
											</table>
											<div class="bg-round">
												<table class="table">
													<colgroup>
														<col style="width: 100px;">
														<col style="width: 230px;">
														<col style="width: 100px;">
														<col>
													</colgroup>
													<tbody>
														<tr>
															<!-- <th scope="row" class="a-r">결제일시</th>
															<td>결제일시 JSTL <a href="#"
																class="button gray-line x-small" title="결제정보">결제정보</a>
															</td> -->
															<th scope="row" class="a-r">적립예정 포인트</th>
															<td>600 P</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</li>
									</c:forEach>
									
									
								</ul>
								
								
								
							</div>
						</div>
						


					</div>

					</div>
				</div>
			</div>

		</div>


</body>
</html>