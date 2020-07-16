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
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<body>

	<c:import url="../template/header.jsp"></c:import>

	<div class="inner-wrap"
		style="padding-top: 40px; padding-bottom: 100px;">
		<!-- quick-reserve -->
		<div class="quick-reserve">

			<h2 class="tit">
				빠른예매
				<!-- 빠른예매 -->
			</h2>

			<!-- cti 일때만 출력 -->
			<div class="cti-area" style="display: none">
				<p>이름</p>
				<input maxlength="20" name="riaName" type="text" title="이름 출력"
					class="input-text a-c w120px" placeholder="이름" value="">

				<p>생년월일</p>
				<input maxlength="8" name="riaBirthday" type="text" title="생년월일 출력"
					class="input-text a-c w150px" placeholder="6자리 또는 8자리" value="">

				<p>휴대폰번호</p>
				<input maxlength="11" name="riaMobileNo" type="text"
					title="휴대폰번호 출력" class="input-text a-c w150px"
					placeholder="- 없이 입력" value="">

				<p>회원</p>
				<input name="riaMemberYn" type="text" title="회원여부 출력"
					class="input-text a-c w100px" value="" readyonly="readyonly">
			</div>

			<!-- seat-select-section -->
			 <!-- ---------------------------form----------------------------------------------- -->
			 <form action="../ticket/paymentDone" id="myForm" method="post">

			
			<input type="hidden" value="${seat}" name="seatNum" class="seat">
			<input type="hidden" value="${bookingVO.movieTime}" name="movieTime">
			<input type="hidden" value="${movieVO.movieNum}" name="movieNum">
			<input type="hidden" value="${memberVO.id}" name="id">
			<input type="hidden" value="${movieVO.name}" name="movieName">
			<input type="text" value="${time}" name="viewDate">
			
			
			<input type="hidden" value="${sizeCount}" name="count">
			<input type="hidden" value="${bookingVO.theaterRoomCode}" name="theaterRoomCode">
			<input type="hidden" value="${bookingVO.startTime}" name="viewDate">
			<input type="hidden" value="${bookingVO.timeCode}" name="timeCode" class="timeCode">
			<input type="hidden" value="" name="savePoint" class="savePoint">
			<input type="hidden" value="" name="usedPoint" class="usedPoint">
			<input type="hidden" value="${memberVO.point}" name="point" >
			
			

			
			
			<div class="seat-select-section">
				<!-- seat-section -->
				<div class="seat-section h-auto">

					<div class="tit-util">
						<h3 class="tit small">
							관람권 및 할인적용
							<!-- 관람권 및 할인적용-->
						</h3>

						<div class="right">
							<button type="button" class="button gray-line small"
								onclick="location.href='./bookingSeatNext' ">
								<i class="iconset ico-reset-small"></i>초기화
							</button>
						</div>
					</div>

					<!-- discout-setting -->

					<div class="discout-setting">
						<div class="discout-list">
							<ul>
								<li class="on"><a class="tit" id="grp_mega_point"
									name="grp_mega_dc" title="메가박스 포인트/쿠폰"> 쌍용씨네마 포인트 및 쿠폰<!-- 메가박스 포인트/관람권 -->
										<!-- <span class="text">멤버십 포인트는 월~금(주말 및 공휴일 제외) 평일에만 사용 가능합니다. </span> -->
								</a>

									<div id="mega_point" class="cont-down">
										<div class="coupon-box">
										
											<div class="" style="width: 333px; margin-left: 10px; margin-top: 10px; float: left; margin-right: 0px; ">
												<input  class="pointUse"
													name="btn_pay_memp" id="btn_pay_memp" title="메가박스 멤버십 포인트" readonly="readonly" style="background-color: #f2f4f5;">
													
											</div>

											<div style="margin-left: 0px; ">
											<input  class="myPoint"
													name="btn_pay_memp" id="btn_pay_memp" title="메가박스 멤버십 포인트" style="margin-left: 10px; margin-top: 10px; background-color: #f2f4f5; border: medium;" readonly="readonly"  value="${memberVO.point}">
												<input type="checkbox"  class="pointCheckBox"> <label
													for="same_use_payment" id="label_use_payment">멤버십
													포인트 사용하기 <!-- 다음에도 이 결제수단 사용 -->
												</label>
											</div>


										</div>
									</div></li>

							</ul>
						</div>
					</div>


					


					<!--// discout-setting -->

					<div class="tit-util mt40">
						<h3 class="tit small">
							결제수단선택
							<!-- 결제수단선택 -->
						</h3>

					</div>

					<!--
					체크 표시 on 클래스 추가

					<button type="button">

					<button type="button" class="on">
				-->
					<div class="select-payment">


						<div class="radio-group">
							<span class="bg-chk small"> <input type="radio"
								name="radio_payment" id="rdo_pay_credit" value="credit"
								checked="checked"> <label for="rdo_pay_credit">신용/체크카드
									<!-- 신용/체크카드 -->
							</label>
							</span> <span class="bg-chk small"> <input type="radio"
								name="radio_payment" id="rdo_pay_mobile" value="mobile">
								<label for="rdo_pay_mobile">휴대폰 결제 <!-- 휴대폰 소액결제 --></label>
							</span> <span class="bg-chk small"> <input type="radio"
								name="radio_payment" id="rdo_pay_kakaopay" value="kakaopay">
								<label for="rdo_pay_kakaopay" class="kakaopay">카카오페이 <!-- 카카오페이 결제 --></label>
							</span>
						</div>

						<script type="text/javascript">

							
							$('#rdo_pay_credit').click(
									function() {

										$('.select-mobile-info').css('display',
												'none');
										$('.select-kakao-info').css('display',
												'none');

										$('.select-payment-card').css(
												'display', 'none');
										$('.select-payment-card').css(
												'display', 'block');

									})

							$('#rdo_pay_mobile').click(
									function() {

										$('.select-payment-card').css(
												'display', 'none');
										$('.select-kakao-info').css('display',
												'none');

										$('.select-mobile-info').css('display',
												'none');
										$('.select-mobile-info').css('display',
												'block');

									})

							$('#rdo_pay_kakaopay').click(
									function() {

										$('.select-payment-card').css(
												'display', 'none');
										$('.select-mobile-info').css('display',
												'none');

										$('.select-kakao-info').css('display',
												'none');
										$('.select-kakao-info').css('display',
												'block');

									})
						</script>

						<div class="select-payment-card" style="display: block;">
							<label for="card_select">카드사 선택 <!-- 카드사 선택 --></label>
							<div class="dropdown bootstrap-select v1 small bs3 dropup"
								id="cardDrop" style="display: inline;">
								<select id="card_select" title="카드사 선택"
									class="selectpicker v1 small" tabindex="-98"><option
										class="bs-title-option" value=""></option>
									<option value="00" selected="">카드선택</option>
									<!-- 전체카드   -->
									<option value="01">비씨카드</option>
									<!-- 비씨카드   -->
									<option value="07">국민카드</option>
									<!-- 국민카드   -->
									<option value="02">신한카드</option>
									<!-- 신한카드   -->
									<option value="03">삼성카드</option>
									<!-- 삼성카드   -->
									<option value="05">롯데카드</option>
									<!-- 롯데카드   -->
									<option value="12">농협카드</option>
									<!-- 농협카드   -->
									<option value="27">하나카드</option>
									<!-- 하나카드   -->
									<option value="04">현대카드</option>
									<!-- 현대카드   -->
									<option value="13">씨티카드</option>
									<!-- 씨티카드   -->
									<option value="22">제주카드</option>
									<!-- 제주카드   -->
									<option value="14">우리카드</option>
									<!-- 우리카드   -->
									<option value="11">수협카드</option>
									<!-- 수협카드   -->
									<option value="24">전북카드</option>
									<!-- 전북카드   -->
									<option value="23">광주카드</option>
									<!-- 광주카드   -->
									<option value="17">신협카드</option>
									<!-- 신협카드   -->
									<option value="90">카카오뱅크</option>
									<!-- 카카오뱅크 -->
									<option value="91">케이뱅크</option>
									<!-- 케이뱅크   -->
								</select>
								<button type="button" class="btn dropdown-toggle btn-default on"
									data-toggle="dropdown" role="button" data-id="card_select"
									title="카드선택" aria-expanded="true" style="width: 14.4%;">
									<div class="filter-option">
										<div class="filter-option-inner">
											<div class="filter-option-inner-inner" id="selectCard">카드선택</div>
										</div>
									</div>
									<span class="bs-caret"><span class="caret"></span></span>
								</button>
								<div class="dropdown-menu open" role="combobox"
									style="max-height: 302px; overflow: hidden; min-width: 104px;">
									<div class="inner open" role="listbox" aria-expanded="true"
										tabindex="-1" style="max-height: 300px; overflow-y: auto;">
										<ul class="dropdown-menu inner " id="selectCardInner">
											<li class="selected active"><a role="option"
												aria-disabled="false" tabindex="0" class="selected active"
												aria-selected="true"><span class="text">카드선택</span></a></li>


											<li><a role="option" aria-disabled="false" tabindex="0"
												aria-selected="false"><span class="text">비씨카드</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0"
												aria-selected="false"><span class="text">국민카드</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0"
												aria-selected="false"><span class="text">신한카드</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0"
												aria-selected="false"><span class="text">삼성카드</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0"
												aria-selected="false"><span class="text">롯데카드</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0"
												aria-selected="false"><span class="text">농협카드</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0"
												aria-selected="false"><span class="text">하나카드</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0"
												aria-selected="false"><span class="text">현대카드</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0"
												aria-selected="false"><span class="text">씨티카드</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0"
												aria-selected="false"><span class="text">제주카드</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0"
												aria-selected="false"><span class="text">우리카드</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0"
												aria-selected="false"><span class="text">수협카드</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0"
												aria-selected="false"><span class="text">전북카드</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0"
												aria-selected="false"><span class="text">광주카드</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0"
												aria-selected="false"><span class="text">신협카드</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0"
												aria-selected="false"><span class="text">카카오뱅크</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0"
												aria-selected="false"><span class="text">케이뱅크</span></a></li>
										</ul>
									</div>
								</div>
							</div>

							<input type="radio" name="rdo_card_select" id="app_card"
								class="ml20" checked="" value="01" style="display: none;">
							<label for="app_card" id="lab_app_card" style="display: none;">앱카드
								<!-- ISP, APP -->
							</label> <input type="radio" name="rdo_card_select" id="general_card"
								class="ml20" value="00" style="display: none;"> <label
								for="general_card" id="lab_general_card" style="display: none;">일반결제
								<!-- 일반결제 -->
							</label> <input type="radio" name="rdo_card_select" id="sepecial_card"
								value="02" style="display: none;"> <label
								for="sepecial_card" id="lab_sepecial_card"
								style="display: none;">포인트사용 <!-- 삼성카드 포인트 사용 --></label>
						</div>

						<script type="text/javascript">
							
						
							$('#cardDrop')
									.click(
											function() {

												if ($("#cardDrop").hasClass(
														"open") == false) {
													$('#cardDrop').addClass(
															'open');
												}

												else if ($("#cardDrop")
														.hasClass("open") == true) {

													$('#cardDrop').removeClass(
															'open');
												}
											})

							$('#selectCardInner>li')
									.click(
											function() {

												$('#selectCardInner>li')
														.removeClass(
																'selected active')
												$(this).addClass(
														'selected active');
												var test = $(
														'#selectCardInner>li.active>a>span')
														.text();
												$('#selectCard').text(test)
											})
						</script>





						<!-- 2020.02.07 수단별 알림 문구 추가 -->
						<div class="select-mobile-info" style="display: none">
							<ul class="dash-list">
								<li>결제하신 금액은 익월 휴대폰 요금에 합산되어 청구되며, 휴대폰 결제한도는 통산사별 월 누적 이용
									제한에 따라 적용됩니다.</li>
								<li>매월 말일 23시30분 ~ 익월 00시 10분까지(40분간)는 시스템 점검시간으로 이용이 어려울 수
									있습니다.</li>
								<li>휴대폰 결제와 관련된 추가 안내는 FAQ를 참조해주세요.</li>
							</ul>
						</div>

						<div class="select-kakao-info" style="display: none">
							<ul class="dash-list">
								<li>BC카드, 시티카드, 우리카드, 새마을카드 등은 카드사 사정으로 사용이 제한되오니 타 카드 사용
									또는 신용/체크카드 결제 도구에서 사용해주시기 바랍니다.</li>
							</ul>
						</div>

					</div>
				</div>
				<!--// seat-section -->

				<!-- seat-result -->
				<div class="seat-result">
					<div class="wrap">

						<div class="tit-area type2">
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

							<p class="tit" id="movieNm">${movieVO.name}</p>
							<p class="cate" id="playKindNm"></p>
							<p class="theater" id="brchNm">${bookingVO.roomName}</p>
							<p class="date">
								<span id="playDe">${bookingVO.startTime}</span><em id="dowNm">(${bookingVO.yoil})</em> <span
									class="time" id="playTime"><i
									class="iconset ico-clock-white"></i>${bookingVO.movieTime}</span>
							</p>
						</div>
						<div class="price-process">
							<div class="box">
								<div class="data">
									<span class="tit">일반 <em>${sizeCount}</em></span><span class="price">${size}</span>
								</div>
								
								<div class="all">
									<span class="tit">금액 <!-- 금액 --></span> <span class="price"><em>${size}</em>
										<span>원 <!-- 원 --></span></span>
								</div>
							</div>

							<div class="box discout-box">

								<div class="all">
									<span class="tit">할인적용 <!-- 할인적용 --></span> <span class="price"><em class="pointAdd"></em>
										원 <!-- 원 --></span>
								</div>
							</div>
						</div>

						<div class="pay-area">
							<div class="pay">
								<p class="tit">
									최종결제금액
									<!-- 최종결제금액 -->
								</p>

								<div class="money">
									<em class="lastPay">${size}</em> <span>원 <!-- 원 --></span>
								</div>
							</div>
							<div class="payment-thing">
								<span class="tit">결제수단 <!-- 결제수단 --></span> <span class="thing">신용/체크카드
								</span>
							</div>
						</div>

						<div class="btn-group"> <!-- ${pageContext.request.contextPath} -->
							<a href="javascript:history.back()"
								class="button" id="btn_booking_back" title="이전">이전 <!-- 이전 -->
							</a> <button type="button" w-data="600" h-data="400"
								class="button active btn-modal-open" id="btn_booking_pay"
								title="결제">결제</button>




						</div>
					</div>
				</div>
				<!--// seat-result -->

			</div>
			
			<script type="text/javascript">
			var beforeMoney = $('.lastPay').html();
			var myPoint = $('.myPoint').val();
			
					$('.pointCheckBox').click(function(){
						if($('.pointCheckBox').is(":checked")==true){
							$('.pointUse').removeAttr("readOnly");
							$('.pointUse').css("background-color","#ffff99");
							}else{
							$('.pointUse').attr("readOnly","readOnly");
							$('.pointUse').css("background-color","#f2f4f5");
							$('.pointUse').val("");
							$('.pointAdd').html("");
							$('.lastPay').html(beforeMoney);
							}
						})
			
						
						$('.pointUse').keyup(function(){
							var point= $('.pointUse').val();
							
							if(point > myPoint){
							alert("현재 포인트보다 적게 써야됌");
							$('.pointUse').val(myPoint);
							point = myPoint;
							}
							
							var lastMoney = beforeMoney - point;
							$('.pointAdd').html(point);
							$('.lastPay').html(lastMoney);
						})

					</script>
			
			
			
			<!--// seat-select-section -->
			<script type="text/javascript">
			
			var timeCode = $('.timeCode').val();
			var seat = $('.seat').val();

			var form = document.createElement("form");
			form.setAttribute("charset", "UTF-8");

			form.setAttribute("method", "Post"); 

			form.setAttribute("action", "/booking/bookingSeatView");

			var hiddenField = document.createElement("input");
			hiddenField.setAttribute("type", "hidden");
			hiddenField.setAttribute("name", "timeCode");
			hiddenField.setAttribute("value", timeCode);
			form.appendChild(hiddenField);

			document.body.appendChild(form);
			
			$('#btn_booking_pay').click(function(){
				var finalPay =$('.lastPay').html();
				var usedPoint= $('.pointUse').val()
				$('.savePoint').val(finalPay/10);
				$('.usedPoint').val(usedPoint);
				$.post("seatCheck",{
					seat : seat,
					timeCode : timeCode
					}, function(result){
						var te = Number(result);
					if(te==1){
						form.submit();
					}else if(te==0){
						window.open("../ticket/payment?seatNum=${seat}&movieTime=${bookingVO.movieTime}&id=${member.id}&count=${sizeCount}&movieNum=${movieVO.movieNum}&theaterRoomCode=${bookingVO.theaterRoomCode}&viewDate=${time}&timeCode=${bookingVO.timeCode}", "PopupWin", "top=200, left=400, width=850,height=600")
						}
					});
			})

			</script>
			</form>
			 <!-- ---------------------------form----------------------------------------------- -->

		</div>
		<!--// quick-reserve -->
	</div>


	<c:import url="../template/footer.jsp"></c:import>

</body>

</html>