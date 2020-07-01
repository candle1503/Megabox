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
						<h2 class="tit"> 상영관 설정</h2>
						
						<!-- c:foreach 로 관수 마다 뿌려져야함 -->
						
						<c:forEach items="${list}" var="vo" varStatus="i" >
						<div class="roomNumber">
						<!-- theaterNum 히든으로 넘겨줄거임 -->
						<input type="hidden" value="${theaterNum}">
							<div class="tit-util mt40 mb10">
								<h3 class="tit">${vo.roomName}+${i.count}</h3>
								
								<input class="timeAddBtn${i.count} button" type="button"
									style="margin-left: 50px; font-size: large;" value="상영시간+">

								<div class="right">
									<p class="reset${i.count}">
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
													class="btn dropdown-toggle btn-default bs-placeholder timeChoose${i.count}"
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
											<td style="background-color: #f7f8f9;">
											<select	class="input-text w500px movieSelect${i.count}"
												style="border: none; background-color: #f7f8f9; width: 550px">
													<option value="">영화 선택</option>
												<c:forEach items="${movieList}" var="vo2">
<%-- 												<option>${vo2.openDay}</option> --%>
<%-- 													<c:if test="${vo2.openDay gt 2020-06-10}"> --%>
<%-- 													<option value="${vo2.name}">${vo2.name}</option> --%>
<%-- 													<option value=C"${vo2.name}">${vo2.openDay}</option> --%>
<%-- 													</c:if> --%>
												</c:forEach>
											</select>
										</tr>


									</tbody>
								</table>
								<input type=button class="button resetBTN${i.count}" style="float: right;"
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
							

							<!-- 버튼들 유효성 검사 -->
								var timeAddContents1 = $('.timeAdd1').html();
								var timeAddContents2 = $('.timeAdd2').html();
								var timeAddContents3 = $('.timeAdd3').html();
								var timeAddContents4 = $('.timeAdd4').html();
								var lastTime1 = 0;
								var lastTime2 = 0;
								var lastTime3 = 0;
								var lastTime4 = 0;
								var timeGap1;
								var timeGap2;
								var timeGap3;
								var timeGap4;
								var listCount1 = 1;
								var listCount2 = 1;
								var listCount3 = 1;
								var listCount4 = 1;
								var startDay1;
								var startDay2;
								var startDay3;
								var startDay4;
								var endDay5;
								var endDay6;
								var endDay7;
								var endDay8;
								var i = 1;

								var timeChoose1;
								var timeChoose2;
								var timeChoose3;
								var timeChoose4;
								var movieSelected1;
								var movieSelected2;
								var movieSelected3;
								var movieSelected4;

								
								while(i<9){
								$('#calendar'+i).datepicker(G_calendar);
									i += 1;
								}
								
								$('.resetBTN1').on('click', function() {
									$('.reset1').empty();
									$('.reset1').prepend('<input id="calendar1" style=" left: 1300px;" value="시작 날짜" > <input id="calendar5" style="left: 1400px; " value="마지막 날짜" >')
									$('#calendar1').datepicker(G_calendar);
									$('#calendar5').datepicker(G_calendar);
									$('.timeAdd1').empty();
									$('.timeAdd1').prepend(timeAddContents1);
									lastTime1 = 0;
									listCount1 = 1;


									$('#calendar1').val("시작 날짜");
									$('#calendar5').val("마지막 날짜");
									startDay1="시작 날짜";
									endDay5="마지막 날짜";

									$('#calendar1').change( function(){
										startDay1 = $('#calendar1').val();
										if(startDay1 > endDay5){
											alert("마지막 날짜 이전으로 설정해주세요.");
											$('#calendar1').val("시작날짜");
										}
										$('#calendar1').attr("disabled","disabled");
										$('#calendar1').attr("id","done1");
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

									
								})
							
								$('.resetBTN2').on('click', function() {
									$('.reset2').empty();
									$('.reset2').prepend('<input id="calendar2" style=" left: 1300px;" value="시작 날짜" > <input id="calendar6" style="left: 1400px; " value="마지막 날짜" >')
									$('#calendar2').datepicker(G_calendar);
									$('#calendar6').datepicker(G_calendar);
									$('.timeAdd2').empty();
									$('.timeAdd2').prepend(timeAddContents2);
									lastTime2 = 0;
									listCount2 = 1;


									$('#calendar2').val("시작 날짜");
									$('#calendar6').val("마지막 날짜");
									startDay2="시작 날짜";
									endDay6="마지막 날짜";

									$('#calendar2').change( function(){
										startDay2 = $('#calendar2').val();
										if(startDay2 > endDay6){
											alert("마지막 날짜 이전으로 설정해주세요.");
											$('#calendar2').val("시작날짜");
										}
										$('#calendar2').attr("disabled","disabled");
										$('#calendar2').attr("id","done2");
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

									
								})
							
								$('.resetBTN3').on('click', function() {
									$('.reset3').empty();
									$('.reset3').prepend('<input id="calendar3" style=" left: 1300px;" value="시작 날짜" > <input id="calendar7" style="left: 1400px; " value="마지막 날짜" >')
									$('#calendar3').datepicker(G_calendar);
									$('#calendar7').datepicker(G_calendar);
									$('.timeAdd3').empty();
									$('.timeAdd3').prepend(timeAddContents3);
									lastTime3 = 0;
									listCount3 = 1;


									$('#calendar3').val("시작 날짜");
									$('#calendar7').val("마지막 날짜");
									startDay3="시작 날짜";
									endDay7="마지막 날짜";

									$('#calendar3').change( function(){
										startDay3 = $('#calendar3').val();
										if(startDay3 > endDay7){
											alert("마지막 날짜 이전으로 설정해주세요.");
											$('#calendar3').val("시작날짜");
										}
										$('#calendar3').attr("disabled","disabled");
										$('#calendar3').attr("id","done3");
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

									
								})
							
								$('.resetBTN4').on('click', function() {
									$('.reset4').empty();
									$('.reset4').prepend('<input id="calendar4" style=" left: 1300px;" value="시작 날짜" > <input id="calendar8" style="left: 1400px; " value="마지막 날짜" >')
									$('#calendar4').datepicker(G_calendar);
									$('#calendar8').datepicker(G_calendar);
									$('.timeAdd4').empty();
									$('.timeAdd4').prepend(timeAddContents4);
									lastTime4 = 0;
									listCount4 = 1;


									$('#calendar4').val("시작 날짜");
									$('#calendar8').val("마지막 날짜");
									startDay4="시작 날짜";
									endDay8="마지막 날짜";

									$('#calendar4').change( function(){
										startDay4 = $('#calendar4').val();
										if(startDay4 > endDay8){
											alert("마지막 날짜 이전으로 설정해주세요.");
											$('#calendar4').val("시작날짜");
										}
										$('#calendar4').attr("disabled","disabled");
										$('#calendar4').attr("id","done4");
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

									
								})
							
								

							$('#calendar1').change( function(){
							
								startDay1 = $('#calendar1').val();
								alert(startDay1);
								
								if(startDay1 > endDay5){
									alert("마지막 날짜 이전으로 설정해주세요.");
									$('#calendar1').val("시작날짜");
								}
								$('#calendar1').attr("disabled","disabled");
								$('#calendar1').attr("id","done1");

								$.post("movieTimeCheck", {
									choosedTime : startDay1
								}, function() {
									
								});

								})
							

							$('#calendar2').change( function(){
								startDay2 = $('#calendar2').val();
								if(startDay2 > endDay6){
									alert("마지막 날짜 이전으로 설정해주세요.");
									$('#calendar2').val("시작날짜");
								}
								$('#calendar2').attr("disabled","disabled");
								$('#calendar2').attr("id","done2");
							})
							

							$('#calendar3').change( function(){
								startDay3 = $('#calendar3').val();
								if(startDay3 > endDay7){
									alert("마지막 날짜 이전으로 설정해주세요.");
									$('#calendar3').val("시작날짜");
								}
								$('#calendar3').attr("disabled","disabled");
								$('#calendar3').attr("id","done3");
							})
							

							$('#calendar4').change( function(){
								startDay4 = $('#calendar4').val();
								if(startDay4 > endDay8){
									alert("마지막 날짜 이전으로 설정해주세요.");
									$('#calendar4').val("시작날짜");
								}
								$('#calendar4').attr("disabled","disabled");
								$('#calendar4').attr("id","done4");
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
								
								if (listCount1 > 3) {
									alert("상영은 최대 4번");
									return false;
								}

								var timeChoose1 = $('.timeChoose1').val();
								var movieSelected1 = $('.movieSelect1').val();
								if (timeChoose1 == '') {
									alert("시간을 먼저 선택해주세요");
									return false;
								} else if (movieSelected1 == '') {
									alert("영화를 선택해주세요");
									return false;
								}
								timeGap1 = parseInt(timeChoose1) - lastTime1;

								
								if (lastTime1 != 0) {
									if (timeGap1 < 3) {
										alert("이전 시간과 3시간 이상으로 설정해주세요.")
										return false;
									}
								}
								lastTime1 = timeChoose1;
								$('.timeChoose1').attr("disabled","disabled");
								$('.timeAdd1').prepend(timeAddContents1);

								listCount1 += 1;
							})
							
							$('.timeAddBtn2').on('click',function() {
								
								if (listCount2 > 3) {
									alert("상영은 최대 4번");
									return false;
								}

								var timeChoose2 = $('.timeChoose2').val();
								var movieSelected2 = $('.movieSelect2').val();
								if (timeChoose2 == '') {
									alert("시간을 먼저 선택해주세요");
									return false;
								} else if (movieSelected2 == '') {
									alert("영화를 선택해주세요");
									return false;
								}
								timeGap2 = parseInt(timeChoose2) - lastTime2;

								
								if (lastTime2 != 0) {
									if (timeGap2 < 3) {
										alert("이전 시간과 3시간 이상으로 설정해주세요.")
										return false;
									}
								}
								lastTime2 = timeChoose2;
								$('.timeChoose2').attr("disabled","disabled");
								$('.timeAdd2').prepend(timeAddContents2);

								listCount2 += 1;
							})
							
							$('.timeAddBtn3').on('click',function() {
								
								if (listCount3 > 3) {
									alert("상영은 최대 4번");
									return false;
								}

								var timeChoose3 = $('.timeChoose3').val();
								var movieSelected3 = $('.movieSelect3').val();
								if (timeChoose3 == '') {
									alert("시간을 먼저 선택해주세요");
									return false;
								} else if (movieSelected3 == '') {
									alert("영화를 선택해주세요");
									return false;
								}
								timeGap3 = parseInt(timeChoose3) - lastTime3;

								
								if (lastTime3 != 0) {
									if (timeGap3 < 3) {
										alert("이전 시간과 3시간 이상으로 설정해주세요.")
										return false;
									}
								}
								lastTime3 = timeChoose3;
								$('.timeChoose3').attr("disabled","disabled");
								$('.timeAdd3').prepend(timeAddContents3);

								listCount3 += 1;
							})
							
							$('.timeAddBtn4').on('click',function() {
								
								if (listCount4 > 3) {
									alert("상영은 최대 4번");
									return false;
								}

								var timeChoose4 = $('.timeChoose4').val();
								var movieSelected4 = $('.movieSelect4').val();
								if (timeChoose4 == '') {
									alert("시간을 먼저 선택해주세요");
									return false;
								} else if (movieSelected4 == '') {
									alert("영화를 선택해주세요");
									return false;
								}
								timeGap4 = parseInt(timeChoose4) - lastTime4;

								
								if (lastTime4 != 0) {
									if (timeGap4 < 3) {
										alert("이전 시간과 3시간 이상으로 설정해주세요.")
										return false;
									}
								}
								lastTime4 = timeChoose4;
								$('.timeChoose4').attr("disabled","disabled");
								$('.timeAdd4').prepend(timeAddContents4);

								listCount4 += 1;
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