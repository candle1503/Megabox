<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="ko">
<head>

<title>나의메가박스 | 라이프씨어터, 메가박스</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="shortcut icon" href="/resources/static/icon/favicon.ico">
<link rel="stylesheet" href="/resources/static/css/megabox.min.css" media="all">
<link rel="stylesheet" href="/resources/static/css/myPage.css" media="all">

<!-- dataPicker -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


</head>

<body>

	<c:import url="../template/header.jsp"></c:import>
	<div class="body-wrap">



		<div class="container has-lnb">
			<div class="page-util">
				<div class="inner-wrap" id="myLoaction">
					<div class="location">
						<span>Home</span> <a href="./getMyPage" title="나의 메가박스 페이지로 이동">나의
							메가박스</a> <a href="#" title="회원정보 페이지로 이동">회원정보</a> <a class="no-link">개인정보
							수정</a>
					</div>
				</div>
			</div>

			<div class="inner-wrap">

				<c:import url="../template/memberSidebar.jsp"></c:import>

					<div id="contents">
						<h2 class="tit">${theaterVO.name} 상영관 설정</h2>

						<!-- c:foreach 로 관수 마다 뿌려져야함 -->
						
						<c:forEach items="${list}" var="vo" varStatus="i" >
						<div class="roomNumber">

							<div class="tit-util mt40 mb10">
								<h3 class="tit">${vo.roomName}+${i.count}</h3>
								<input class="timeAddBtn button" type="button"
									style="margin-left: 50px; font-size: large;" value="상영시간+">

								<div class="right">
									<p class="reset">
									<input id="calendar${0+i.count}" style=" left: 1300px;" value="시작날짜" >
									<input id="calendar${4+i.count}" style="left: 1400px; " value="마지막날짜" >
									</p>
								</div>
								
							</div>
							
							<div class="table-wrap mb40">
								<table class="board-form">
									<colgroup>
										<col style="width: 180px;">
										<col>
									</colgroup>
									<tbody class="timeAdd${0+i.count}">
										<!-- +버튼 누르면 아래로 추가되게 -->
										<tr class="added">
											<th scope="row"><label for="phone"> <select
													class="btn dropdown-toggle btn-default bs-placeholder timeChoose${0+i.count}"
													style="border: none; background-color: #f7f8f9;">
														<option value="">상영 시간 선택</option>
														<option value=7>07:00</option>
														<option value=8>08:00</option>
														<option value=9>09:00</option>
														<option value="10">10:00</option>
														<option value="11">11:00</option>
														<option value="12">12:00</option>
														<option value="13">13:00</option>
														<option value="14">14:00</option>
														<option value="15">15:00</option>
														<option value="16">16:00</option>
														<option value="17">17:00</option>
														<option value="18">18:00</option>
														<option value="19">19:00</option>
														<option value="20">20:00</option>
														<option value="21">21:00</option>
														<option value="22">22:00</option>
												</select>
											</label></th>
											<td style="background-color: #f7f8f9;"><select
												class="input-text w500px movieSelect${0+i.count}"
												style="border: none; background-color: #f7f8f9; width: 550px">
													<option value="">영화 선택</option>
													<option value="포레스트검프">포레스트검프</option>
													<option value="..">..</option>
											</select>
										</tr>


									</tbody>
								</table>
								<input type=button class="button resetBTN${0+i.count}" style="float: right;"
									value="RESET">
								<button type="submit" class="button purple"
									style="margin-left: 700px;">저장</button>
							</div>
						</c:forEach>
						
							<script type="text/javascript">
							<!-- 달력 설정 -->
							var G_calendar = {
									startDate: '-0d',
								    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
								    dayNamesMin: ['일','월','화','수','목','금','토'],
								    weekHeader: 'Wk',
								    dateFormat: 'yy-mm-dd',	
								    autoclose : true,
								    showOn:"both",
									buttonImageOnly:false,
								    showMonthAfterYear: true,
								    maxDate: '4w',
								    minDate: '0d'
								        
								}

								var G_calendar = {
										startDate: '-0d',
									    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
									    dayNamesMin: ['일','월','화','수','목','금','토'],
									    weekHeader: 'Wk',
									    dateFormat: 'yy-mm-dd',	
									    autoclose : true,
									    showOn:"both",
										buttonImageOnly:false,
									    showMonthAfterYear: true,
									    maxDate: '4w',
									    minDate: '0d',
									    closeText: '닫기'
									        
								}
							var i = 1;
							
							while(i<9){
							$('#calendar'+i).datepicker(G_calendar);
								i += 1;
							}

							<!-- 버튼들 유효성 검사 -->
								var timeAddContents = $('.timeAdd').html();
								var lastTime = 0;
								var timeGap;
								var listCount = 1;
								var startDay1;
								var startDay2;
								var startDay3;
								var startDay4;
								var endDay5;
								var endDay6;
								var endDay7;
								var endDay8;
								var j = 1;

									
								$('.resetBTN').on('click', function() {
									$('.timeAdd').empty();
									$('.timeAdd').prepend(timeAddContents);
									lastTime = 0;
									listCount = 1;


									$('#calendar').val("시작 날짜");
									$('#calendar').val("마지막 날짜");
									startDay="시작날짜";
									endDay="마지막날짜";
									})
							

							$('#calendar1').change( function(){
								startDay1 = $('#calendar1').val();
								if(startDay1 > endDay5){
									alert("마지막 날짜 이전으로 설정해주세요.");
									$('#calendar1').val("시작날짜");
								}
							})
							

							$('#calendar2').change( function(){
								startDay2 = $('#calendar2').val();
								if(startDay2 > endDay6){
									alert("마지막 날짜 이전으로 설정해주세요.");
									$('#calendar2').val("시작날짜");
								}
							})
							

							$('#calendar3').change( function(){
								startDay3 = $('#calendar3').val();
								if(startDay3 > endDay7){
									alert("마지막 날짜 이전으로 설정해주세요.");
									$('#calendar3').val("시작날짜");
								}
							})
							

							$('#calendar4').change( function(){
								startDay4 = $('#calendar4').val();
								if(startDay4 > endDay8){
									alert("마지막 날짜 이전으로 설정해주세요.");
									$('#calendar4').val("시작날짜");
								}
							})
							
							$('#calendar5').change(function(){
								endDay5=$('#calendar5').val()
								
							if($('#calendar1').val()=="시작날짜"){
								alert("시작날짜를 먼저 선택해주세요.");
								$('#calendar5').val("마지막날짜");
								endDay5 = "마지막날짜";
								}else if(endDay5 < startDay1){
								alert("시작날짜 이후로 설정해주세요.");
								$('#calendar5').val("마지막날짜");
								endDay5 = "마지막날짜";
								}
							})
								
							$('#calendar6').change(function(){
								endDay6=$('#calendar6').val()
								
							if($('#calendar2').val()=="시작날짜"){
								alert("시작날짜를 먼저 선택해주세요.");
								$('#calendar6').val("마지막날짜");
								endDay6 = "마지막날짜";
								}else if(endDay6 < startDay2){
								alert("시작날짜 이후로 설정해주세요.");
								$('#calendar6').val("마지막날짜");
								endDay6 = "마지막날짜";
								}
							})
								
							$('#calendar7').change(function(){
								endDay7=$('#calendar7').val()
								
							if($('#calendar3').val()=="시작날짜"){
								alert("시작날짜를 먼저 선택해주세요.");
								$('#calendar7').val("마지막날짜");
								endDay7 = "마지막날짜";
								}else if(endDay7 < startDay3){
								alert("시작날짜 이후로 설정해주세요.");
								$('#calendar7').val("마지막날짜");
								endDay7 = "마지막날짜";
								}
							})
								
							$('#calendar8').change(function(){
								endDay8=$('#calendar8').val()
								
							if($('#calendar4').val()=="시작날짜"){
								alert("시작날짜를 먼저 선택해주세요.");
								$('#calendar8').val("마지막날짜");
								endDay8 = "마지막날짜";
								}else if(endDay8 < startDay4){
								alert("시작날짜 이후로 설정해주세요.");
								$('#calendar8').val("마지막날짜");
								endDay8 = "마지막날짜";
								}
							})
								
								
								$('.timeAddBtn1').on('click',function() {
								
								if (listCount > 3) {
									alert("상영은 최대 4번");
									return false;
								}

								var timeChoose = $('.timeChoose1').val();
								var movieSelected = $('.movieSelect1').val();
								if (timeChoose == '') {
									alert("시간을 먼저 선택해주세요");
									return false;
								} else if (movieSelected == '') {
									alert("영화를 선택해주세요");
									return false;
								}
								timeGap = parseInt(timeChoose)
										- lastTime;
								if (lastTime != 0) {
									if (timeGap < 3) {
										alert("이전 시간과 3시간 이상으로 설정해주세요.")
										return false;
									}
								}
								lastTime = timeChoose;
								$('.timeChoose1').attr("disabled","disabled");
								$('.timeAdd1').prepend(timeAddContents);

								listCount += 1;
							})
							</script>


						</div>
						
						<div class="btn-group mt40">
							<a href="./getMyPage"> <input type="button"
								class="button large" value="취소">
							</a>
							<button type="submit" class="button purple large" id="updateBtn">완료</button>
						</div>

					</div>



			</div>
		</div>



	<div class="normalStyle"
		style="display: none; position: fixed; top: 0; left: 0; background: #000; opacity: 0.7; text-indent: -9999px; width: 100%; height: 100%; z-index: 100;">닫기</div>
	<div class="alertStyle"
		style="display: none; position: fixed; top: 0px; left: 0px; background: #000; opacity: 0.7; width: 100%; height: 100%; z-index: 5005;"></div>
</body>
</html>