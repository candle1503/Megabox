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

<script type="text/javascript" src="/resources/static/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="/resources/static/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="/resources/static/js/jquery.mtz.monthpicker.js"></script>
<!-- MonthPicker -->
<link href="/resources/static/css/jquery-ui.css" rel="stylesheet" type="text/css">
	<style>
		#monthpicker {
			width: 60px;
		}
		#btn_monthpicker {
			background: url('/resources/static/images/datepicker.png');
			border: 0;
			height: 24px;
			overflow: hieen;
			text-indent: 999;
			width: 24px;
		}
	</style>


<!-- dataPicker -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


</head>

<body>
	
	
	
	<c:import url="../template/header.jsp"></c:import>

	<div class="container has-lnb" style="margin-top: 0px;">
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
							('board-list-search mt20')
							$("#bokdList").empty();
							$("#bokdList").append(result);
							$('#calandarOpen').css("display","block");
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
						<div class="board-list-search mt20" style="display: none" id="calandarOpen">
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
												
												<input id="monthpicker" style="left: 1300px; width: 130px"
												value="월별 티켓 확인" name="startDay" class="button gray-line small" readonly="readonly">
												
												
												<div class="dropdown-menu open" role="combobox">
													<div class="inner open" role="listbox"
														aria-expanded="false" tabindex="-1">
														<ul class="dropdown-menu inner "></ul>
													</div>
												</div>
											</div>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- 예매 조회 조건 End -->




						<!-- 예매 영화 목록 -->
						<div id="bokdList">
							<div class="board-list-util">
								<p class="result-count pt00">
								<!-- size뿌려줄거 -->
									<strong> 총 <b class="font-gblue" id="bookedSize">${bookedSize}</b>건
									</strong>
								</p>
							</div>
							<div class="history-reservation">
							${mvfile[0].fileName}
							<!-- c:foreach로 뿌려줄 거 -->
								<ul id="bookedList">
									<c:forEach items="${bookedCompAr}" var="bookedCompList" varStatus="i">
									<li sell-tran-no="13722007010094143868">
										<div class="round">
											<a href="${pageContext.request.contextPath}/movie/movieSelect?movieNum=${bookedCompList.movieNum}" class="img"
												title="${bookedCompList.movieName} "><img
												src="/upload/movie/${mvfile[0].fileName}"></a>
											<table class="table">
												<colgroup>
													<col style="width: 100px;">
													<col style="width: 230px;">
													<col style="width: 100px;">
													<col>
												</colgroup>
												<tbody >
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
										<th scope="row">적립예정 포인트</th>
										<td>${points[i.index]} 원</td>
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

	<input type="hidden" value="" class="date" name="calandarDate" >

<script type="text/javascript">

	$('#monthpicker').change(function(){
	$('.date').val($('#monthpicker').val());
		var date=$('.date').val();
		bookedCompAfterCalandar(id,date);
			})

function bookedCompAfterCalandar(id,date){
	$.get("bookingMyAfter?id="+id+"&calandarDate="+date, function(result){
		$("#bokdList").empty();
		$("#bokdList").append(result);
		$('#calandarOpen').css("display","block");
	});
}
			
	</script>


<script>

		var thisDate = new Date();
		var thisYear = thisDate.getFullYear();        //해당 연
		
		options = {
			pattern: 'yyyy-mm',
			selectYear: thisYear,
			startYear: thisYear-1,
			finalYear: thisYear,
			monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']
		};

// 		$('#monthpicker').monthpicker('setDate', thisYear+'-'+thisMonth+'-01'); 
		$('#monthpicker').monthpicker(options);
		
		$('#btn_monthpicker').bind('click', function () {
			$('#monthpicker').monthpicker('show');
		});
		
	</script>

</body>
</html>