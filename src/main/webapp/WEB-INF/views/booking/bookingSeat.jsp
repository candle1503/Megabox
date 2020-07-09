<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<c:import url="../template/header_css.jsp"></c:import>

<body class="body-iframe">

	<c:import url="../template/header.jsp"></c:import>

	<input type="hidden" id="playSchdlNo" name="playSchdlNo" value="2006291372041">
	<input type="hidden" id="brchNo" name="brchNo" value="1372">

	<div class="inner-wrap" style="">
		<div class="quick-reserve">
			<h2 class="tit"></h2>


			<div class="seat-select-section">
				<div class="seat-section">
					<div class="tit-util">
						<h3 class="tit small">
							관람인원선택<span class="sub">(최대 8매 선택가능)</span>
						</h3>
						<div class="right">
							<button type="button" class="button gray-line small"
								id="seatMemberCntInit" onclick="javascript:location.reload()">
								<i class="iconset ico-reset-small"></i>초기화
							</button>
						</div>
					</div>
					<div class="seat-area">
						<div class="seat-count" style="min-height: 52px">
							<div class="cell">
								<p class="txt">일반</p>
								<div class="count">

									<div class="number">
										<button type="button" class="now" title="성인 현재 좌석 선택 수"
											ticketgrpcd="TKA" style="border-width: 1px 1px"
											id="initBtnCnt">0 ▼</button>
										<ul class="num-choice">
											<li><button type="button" class="btn on">0 ▼</button></li>
											<li><button type="button" class="btn">1</button></li>
											<li><button type="button" class="btn">2</button></li>
											<li><button type="button" class="btn">3</button></li>
											<li><button type="button" class="btn">4</button></li>
											<li><button type="button" class="btn">5</button></li>
											<li><button type="button" class="btn">6</button></li>
											<li><button type="button" class="btn">7</button></li>
											<li><button type="button" class="btn">8</button></li>
										</ul>
									</div>

								</div>
							</div>

							<script type="text/javascript">
								$(document).on(	'click',	'.seat-select-section .seat-section .seat-area .seat-count .cell .count .number .now',
												function() {
									
													if($('#initBtnCnt').text()=="0 ▼"){
													$(this).closest('.number').find('.num-choice')	.addClass('on');
													}	else if($('#initBtnCnt').text() !="0 ▼"){
																alert('새로 설정하려면 오른쪽의 초기화 버튼을 눌러주세요')
													}				
												});

								$(document).on(	'click','.seat-select-section .seat-section .seat-area .seat-count .cell .count .number .num-choice .btn',
												function() {
													_num = $(this).text();
													$(this).closest('.number').find('.now').text(_num);

													$(this).closest('ul').find('.btn').removeClass('on');
													$(this).addClass('on');

													$(this).closest('.num-choice').removeClass('on');
													$(this).closest('.number').find('.now').focus();

												});

							</script>

						</div>
						<div class="seat-layout">
							<div class="alert" style="display: none;"></div>
							<div class="seat-count-before off" style="top: 0px">관람인원을
								선택하십시요</div>
							<div
								class="scroll m-scroll mCustomScrollbar _mCS_1 mCS_no_scrollbar">
								<div id="mCSB_1"
									class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
									style="max-height: none;" tabindex="0">
									<div id="mCSB_1_container"
										class="mCSB_container mCS_no_scrollbar_y"
										style="position: relative; top: 0px; left: 0px; height: 210px;"
										dir="ltr">
										<div id="seatLayout" style="width: 100%; height: 210px;">
											<img src="../resources/static/images/img-theater-screen.png"
												alt="screen"
												style="position: absolute; left: 62px; top: 10px;"
												class="mCS_img_loaded">
											<div class'row'="">
											
											<c:import url="/WEB-INF/views/booking/seatTable.jsp"></c:import>
												
											</div>
											<img src="../resources/static/images/img-door-left-right.png"
												alt="좌우측 출입구"
												style="position: absolute; left: 231px; top: 30px; width: 16px; height: 16px;"
												class="mCS_img_loaded">
										</div>
									</div>
									<div id="mCSB_1_scrollbar_vertical"
										class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical">
										<div class="mCSB_draggerContainer">
											<div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
												style="position: absolute; min-height: 30px; display: none; height: 732px; top: 0px; max-height: 382px;">
												<div class="mCSB_dragger_bar" style="line-height: 30px;"></div>
											</div>
											<div class="mCSB_draggerRail"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="zone-legend" style="display: none"></div>
					</div>
				</div>


				<script type="text/javascript">

					<!-- 결제과 완료된 좌석은 finish pos-->
					<!-- 사회 거리두기 좌석은 finish-->
					<!-- 선택하면 class에  choice 및 selected="selected" 삽입-->
					var seatCheckCnt = 0;
					var seatArrayHelper = seatArrayHelper;
					

					$('.common').click(function(){		

						var cnt = $('ul.num-choice>li>.on').text()
						var array = $(this).attr('class')
						var strArray = array.split(' ');
						var idOn = strArray[strArray.length-1];			

						alert('총 좌석 수 : ' + cnt)
						
						if(seatCheckCnt<=cnt){

							var idSeatArray = "seatArray" + seatCheckCnt;
							var idSeatText = $(this).attr('rownm')+$(this).attr('seatno');		

							if(idOn != 'on'){
	
								if(seatCheckCnt<cnt){
								seatCheckCnt = seatCheckCnt+1;
								$(this).addClass('choice');
								$(this).addClass('on');		
								
								$('div.money>em').text(seatCheckCnt * 8000)
								
								alert('선택 좌석수(1부터 시작) :' + seatCheckCnt)
								alert($('div.money>em').text())		
														

								idSeatArray = "seatArray" + seatCheckCnt;
								idSeatText = $(this).attr('rownm')+$(this).attr('seatno');				

								$('.'+idSeatArray).attr('title',idSeatText);
								$('.'+idSeatArray).text(idSeatText);
					
								$('.'+idSeatArray).removeClass('all');
								$('.'+idSeatArray).addClass('choice');
								}

								<!-- 스트링 split 주의-->
/* 								alert($(this).attr('title').slice(0,2))
								alert($('.'+idSeatArray).attr('title')) */
								
							}
							
							else if(idOn = 'on'){

								var checkingSeatDelete = $(this).attr('rownm') + $(this).attr('seatno')
								alert('자리 삭제 번호 확인 alert : ' + checkingSeatDelete)
								
								if(checkingSeatDelete ==$('.'+idSeatArray).attr('title')){


									$('.'+idSeatArray).removeClass('choice');

									idSeatText = '-';				

									$('.'+idSeatArray).attr('title','구매가능한 좌석');
									$('.'+idSeatArray).text(idSeatText);
									
									seatCheckCnt = seatCheckCnt-1;		
									
									$(this).removeClass('choice');
									$(this).removeClass('on');
									
									$('div.money>em').text(seatCheckCnt * 8000)

									} else{

										alert('선택한 순서대로 해제해주세요')
										
										}
								
							}

							$('#pageNext').attr('href','#')
							$('#pageNext').addClass('disabled')

						}
						if(seatCheckCnt==cnt){
							alert('모두 선택하셨습니다. 결제창으로 이동해 주세요')
							
							$('#pageNext').attr('href','${pageContext.request.contextPath}/booking/bookingSeatNext')
							$('#pageNext').removeClass('disabled')
					}

					})
	
				</script>

				<!-- 				<script type="text/javascript" src="../resources/static/js/testFrame.js"></script>
				<script type="text/javascript" src="../resources/static/js/testJs.js"></script> -->

				<div class="seat-result">
					<div class="wrap">
						<div class="tit-area">
							<c:if test="${movieVO.age eq '전체관람가'}">
								<span class="movie-grade small age-all">${movieVO.age}</span>
							</c:if>
							<c:if test="${movieVO.age eq '12세이상관람가'}">
								<span class="movie-grade small age-12">${movieVO.age}</span>
							</c:if>
							<c:if test="${movieVO.age eq '15세이상관람가'}">
								<span class="movie-grade small age-15">${movieVO.age}</span>
							</c:if>
							<c:if test="${movieVO.age eq '청소년관람불가'}">
								<span class="movie-grade small age-19">${movieVO.age}</span>
							</c:if>
							<p class="tit">${movieVO.name}</p>
							<p class="cate"></p>
						</div>
						<div class="info-area">
							<p class="theater">${theaterVO.name}</p>
							<p class="special">${bookingSeatView.roomName}</p>
							<p class="date">
								<span>${bookingSeatView.startTime}(${yoil})</span>
							</p>
							<div class="other-time">
								<p
									style="border: 1px solid #333; border-bottom: 0; border-radius: 5px 5px 0 0; color: #fff; margin-left: 14px;">
									${movieTime}</p>
								<ul class="other">
									<li><button type="button" choicnt="52"
											playschdlno="2006301372021" class="btn on ">16:05~17:57</button></li>
									<li><button type="button" choicnt="52"
											playschdlno="2006301372040" class="btn ">19:30~21:22</button></li>
									<li><button type="button" choicnt="65"
											playschdlno="2006301372041" class="btn ">21:40~23:32</button></li>
								</ul>
							</div>
							<p class="poster">
								<img alt="" src="../resources/static/images/sTheater.png">
								<!-- <img
									src="/SharedImg/2020/06/16/g8krQAvfYaqZvbZTdDipqRErDbiTUr8Z_150.gif"
									onerror="noImg(this);" alt="온워드: 단 하루의 기적"> -->
							</p>
						</div>
						<div class="choice-seat-area">
							<div class="legend">
								<ul class="list">
									<li><div class="seat-condition choice" title="선택한 좌석"></div>
										<em>선택</em></li>
									<li><div class="seat-condition finish" title="예매 완료"></div>
										<em>예매완료</em></li>
									<li><div class="seat-condition common" title="일반"></div> <em>
											일반</em></li>
									<li><div class="seat-condition disabled" title="장애인석"></div>
										<em> 장애인석</em></li>
								</ul>
							</div>
							<div class="seat-num">
								<p class="tit">선택좌석</p>
								<div class="my-seat">
									<div class="seat all seatArray1" title="구매가능 좌석">-</div>
									<div class="seat all seatArray2" title="구매가능 좌석">-</div>
									<div class="seat all seatArray3" title="구매가능 좌석">-</div>
									<div class="seat all seatArray4" title="구매가능 좌석">-</div>
									<div class="seat all seatArray5" title="구매가능 좌석">-</div>
									<div class="seat all seatArray6" title="구매가능 좌석">-</div>
									<div class="seat all seatArray7" title="구매가능 좌석">-</div>
									<div class="seat all seatArray8" title="구매가능 좌석">-</div>
								</div>
							</div>
						</div>
						<div class="pay-area">
							<p class="count">티켓 가격
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8000원</p>
							<div class="pay">
								<p class="tit">최종결제금액</p>
								<div class="money">
									<em>0</em> <span>원</span>
								</div>
							</div>
						</div>
						<div class="btn-group">
							<a href="./bookingMain" class="button" id="pagePrevious"
								title="이전">이전</a> <a href="#" class="button disabled"
								id="pageNext" title="다음">다음</a>
						</div>
					</div>
				</div>
			</div>



		</div>
	</div>

	<div class="normalStyle"
		style="display: none; position: fixed; top: 0; left: 0; background: #000; opacity: 0.7; text-indent: -9999px; width: 100%; height: 100%; z-index: 100;">닫기</div>
	<div class="alertStyle"
		style="display: none; position: fixed; top: 0px; left: 0px; background: #000; opacity: 0.7; width: 100%; height: 100%; z-index: 5005;"></div>

</body>

<c:import url="../template/footer.jsp"></c:import>

</html>