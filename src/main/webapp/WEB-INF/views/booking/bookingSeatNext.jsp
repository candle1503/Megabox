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

<body>

	<c:import url="../template/header.jsp"></c:import>

	<form name="payForm" id="payForm" method="post">
		<input type="hidden" name="playSchdlNo" id="playSchdlNo"
			value="2006301372022"> <input type="hidden"
			name="seatOccupText" id="seatOccupText"
			value="00100901,TKA,6000,MBX,GERN_ZONE,GERN_CLS,1"> <input
			type="hidden" name="totalAmt" id="totalAmt" value="6000"> <input
			type="hidden" name="transNo" id="transNo"
			value="13722006300094132053"> <input type="hidden"
			name="cashBillYn" id="cashBillYn" value=""> <input
			type="hidden" name="cashrecIssueCd" id="cashrecIssueCd" value="">

		<input type="hidden" name="lastPayMethod" id="lastPayMethod"
			value="credit"> <input type="hidden" name="preDisc"
			id="preDisc" value=""> <input type="hidden" name="discType"
			id="discType" value=""> <input type="hidden" name="tellerFee"
			id="tellerFee" value=""> <input type="hidden"
			name="completeYn" id="completeYn" value=""> <input
			type="hidden" name="prepareYn" id="prepareYn" value="Y"> <input
			type="hidden" name="prepareFavorYn" id="prepareFavorYn" value="Y">
		<input type="hidden" name="goBackYn" id="goBackYn" value="">
	</form>
	<form name="completeForm" id="completeForm" method="post">
		<input type="hidden" name="completeTransNo" id="completeTransNo">
		<input type="hidden" name="completeRiaMemberYn"
			id="completeRiaMemberYn"> <input type="hidden"
			name="completeRiaBirthday" id="completeRiaBirthday">
	</form>
	<form name="ifrm" method="POST" target="FD_PAY_FRAME"
		action="/on/oh/ohz/PayBooking/applyCreditCard.do">
		<input type="hidden" name="transNo" id="ifrm_transNo"> <input
			type="hidden" name="useAmt" id="ifrm_useAmt"> <input
			type="hidden" name="methodName" id="ifrm_methodName"> <input
			type="hidden" name="selectCard" id="ifrm_selectCard"> <input
			type="hidden" name="pointDmode" id="ifrm_pointDmode">
	</form>


	<input type="hidden" name="dowCd" id="dowCd">
	<input type="hidden" name="brchNo" id="brchNo" value="1372">
	<!-- 레이어 팝업 처리 시 화면 영역 시작 -->
	<div id="mask"></div>
	<div id="fdpayWin" class="fdLayer">
		<div class="fdContainer"></div>
	</div>
	<!-- 레이어 팝업 처리 시 화면 영역 끝 -->


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
			<div class="seat-select-section">
				<!-- seat-section -->
				<div class="seat-section h-auto">

					<div class="tit-util">
						<h3 class="tit small">
							관람권 및 할인적용
							<!-- 관람권 및 할인적용-->
						</h3>

						<div class="right">
						<button type="button" class="button gray-line small"  onclick="location.href='./bookingSeatNext' ">
								<i class="iconset ico-reset-small"></i>초기화
							</button>
						</div>
					</div>

					<!-- discout-setting -->

					<div class="discout-setting">
						<div class="discout-list">
							<ul>
								<li class="on"><a class="tit"
									id="grp_mega_point" name="grp_mega_dc" title="메가박스 포인트/쿠폰">
										메가박스 포인트/쿠폰<!-- 메가박스 포인트/관람권 --> <!-- <span class="text">멤버십 포인트는 월~금(주말 및 공휴일 제외) 평일에만 사용 가능합니다. </span> -->
								</a>

									<div id="mega_point" class="cont-down">
										<div class="coupon-box">
											<div class="item col-1">
												<a href="#layer_memp" w-data="600" h-data="550"
													class="btn-modal-open" name="btn_pay_memp"
													id="btn_pay_memp" title="메가박스 멤버십 포인트"> <span
													class="txt">메가박스 멤버십 포인트 <!-- 메가박스 멤버십 포인트 --></span>
												</a>

												<button type="button" class="btn-cancel"
													id="btn_cancel_memp" method="memp">
													취소
													<!-- 취소 -->
												</button>
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

						<div class="right">
							<input type="checkbox" id="same_use_payment"> <label
								for="same_use_payment" id="label_use_payment">다음에도 이
								결제수단 사용 <!-- 다음에도 이 결제수단 사용 -->
							</label>
						</div>
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
										tabindex="-1" style="max-height: 300px; overflow-y: auto; ">
										<ul class="dropdown-menu inner " id = "selectCardInner">
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
							$('#cardDrop').click(function() {
								
								if ($("#cardDrop").hasClass("open") == false) {
									$('#cardDrop').addClass('open');
								}

								else if ($("#cardDrop").hasClass("open") == true) {

									$('#cardDrop').removeClass('open');
								}
							})
							
							$('#selectCardInner>li').click(function(){

								$('#selectCardInner>li').removeClass('selected active')
								$(this).addClass('selected active');
								var test = $('#selectCardInner>li.active>a>span').text();
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
							<!--
							관람 등급 표시
							<span class="movie-grade small age-all">전체 관람가</span>
							<span class="movie-grade small age-12">12세 이상 관람가</span>
							<span class="movie-grade small age-15">15세 이상 관람가</span>
							<span class="movie-grade small age-19">청소년 관람 불가</span>
							<span class="movie-grade small age-no">미정</span>
						-->
							<span class="movie-grade small age-12" id="admisClassNm">12세이상관람가</span>

							<p class="tit" id="movieNm">영화제목 JSTL</p>
							<p class="cate" id="playKindNm"></p>
							<p class="theater" id="brchNm">상영관 JSTL</p>
							<p class="date">
								<span id="playDe">상영날짜 JSTL</span><em id="dowNm">(화)</em> <span
									class="time" id="playTime"><i
									class="iconset ico-clock-white"></i>시작시간 JSTL</span>
							</p>
						</div>
						<div class="price-process">
							<div class="box">
								<div class="data">
									<span class="tit">일반 <em>1</em></span><span class="price">8,000</span>
								</div>
								<!--
							<div class="data">
								<span class="tit">일반 <em>1</em></span>
								<span class="price">20,000</span>
							</div>

							<div class="data">
								<span class="tit">어린이 <em>2</em></span>
								<span class="price">6,000</span>
							</div>
							-->
								<div class="all">
									<span class="tit">금액 <!-- 금액 --></span> <span class="price"><em>8,000</em>
										<span>원 <!-- 원 --></span></span>
								</div>
							</div>

							<div class="box discout-box">

								<div class="all">
									<span class="tit">할인적용 <!-- 할인적용 --></span> <span class="price"><em>0</em>
										원 <!-- 원 --></span>
								</div>
							</div>
						</div>

						<div class="pay-area">
							<div class="add-thing">
								<p class="tit">
									추가차액
									<!-- 추가금액 -->
								</p>

								<div class="money">0</div>
							</div>
							<div class="pay">
								<p class="tit">
									최종결제금액
									<!-- 최종결제금액 -->
								</p>

								<div class="money">
									<em>8,000</em> <span>원 <!-- 원 --></span>
								</div>
							</div>
							<div class="payment-thing">
								<span class="tit">결제수단 <!-- 결제수단 --></span> <span class="thing">신용/체크카드
								</span>
							</div>
						</div>

						<div class="btn-group">
							<a href="${pageContext.request.contextPath}/booking/bookingSeat" class="button" id="btn_booking_back" title="이전">이전
								<!-- 이전 -->
							</a> <a href="#" w-data="600" h-data="400"
								class="button active btn-modal-open" id="btn_booking_pay"
								title="결제">결제</a>




						</div>
					</div>
				</div>
				<!--// seat-result -->

			</div>
			<!--// seat-select-section -->

		</div>
		<!--// quick-reserve -->
	</div>


	<!-- 레이어 : 메가박스 VIP영화쿠폰 -->


	<!-- 레이어 : 메가박스 VIP영화쿠폰 -->
	<section id="layer_vip_coupon" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					메가박스 VIP영화쿠폰
					<!-- 메가박스 VIP영화쿠폰 -->
				</h3>
			</header>

			<div class="layer-con">
				<div class="reset mb10">
					사용할 쿠폰을 선택해주세요.
					<!-- 보유중인 VIP 영화쿠폰을 선택해주세요. -->
				</div>

				<div class="table-wrap divide">
					<table class="board-list line">
						<caption>
							VIP영화쿠폰을 쿠폰, 유효기간, 사용여부 항목을 가진 메가박스 VIP영화쿠폰 목록의 제목 표
							<!-- 메가박스 VIP영화쿠폰을 쿠폰, 유효기간, 사용여부 항목을 가진 메가박스 VIP영화쿠폰 목록의 제목 표 -->
						</caption>
						<colgroup>
							<col>
							<col style="width: 200px;">
							<col style="width: 56px;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">쿠폰 <!-- 쿠폰 --></th>
								<th scope="col">유효기간 <!-- 유효기간 --></th>
								<th scope="col">사용 <!-- 사용 --></th>
							</tr>
						</thead>
					</table>

					<!--
					상황에 따라 스크롤 높이값이 달라지기 때문에 인라인으로 넣어줘야 함
				 -->
					<div class="scroll" style="min-height: 340px; max-height: 340px;">
						<table class="board-list line">
							<caption>
								메가박스 VIP영화쿠폰을 쿠폰, 유효기간, 사용여부 항목을 가진 메가박스 VIP영화쿠폰 목록의 내용 표
								<!-- 메가박스 VIP영화쿠폰을 쿠폰, 유효기간, 사용여부 항목을 가진 메가박스 VIP영화쿠폰 목록의 내용 표 -->
							</caption>
							<colgroup>
								<col>
								<col style="width: 200px;">
								<col style="width: 56px;">
							</colgroup>
							<tbody>
								<!-- <tr>
								<td class="a-l">
									<strong>관람권명</strong><br />
									1234-5678-1234-****
								</td>
								<td>2019-01-08~2019-01-31</td>
								<td><input type="checkbox" title="쿠폰 사용" /></td>
							</tr>
							<tr>
								<td class="a-l">
									<strong>부티크프라이빗 관람권</strong><br />
									1234-5678-1234-****
								</td>
								<td>2019-01-08~2019-01-31</td>
								<td><input type="checkbox" title="쿠폰 사용" /></td>
							</tr> -->
							</tbody>
						</table>
					</div>
				</div>
				<!--
			<div class="box-border v1 use-guide mt15">
				<p class="tit">이용안내</p>

				<ul class="dot-list">
					<li>등록된 관람권은 나의메가박스에서 확인 및 삭제하실 수 있습니다.</li>
				</ul>
			</div>
			 -->
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer">
					닫기
					<!-- 닫기 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_cancel_apply_vipCpon" style="display: none;">
					적용취소
					<!-- 적용취소 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_apply_vipCpon">
					적용
					<!-- 적용 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>
	<!--// 레이어 : 메가박스 VIP영화쿠폰 -->


	<!--// 레이어 : 메가박스 VIP영화쿠폰 -->

	<!-- 레이어 : 메가박스 관람권 -->


	<!-- 레이어 : 메가박스 관람권 -->
	<section id="layer_movie_megabox_coupon" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					메가박스 관람권
					<!-- 메가박스 관람권 -->
				</h3>
			</header>

			<div class="layer-con">
				<div class="reset mb10">
					보유하신 관람권은 등록 후 사용하실 수 있습니다.<br>사용할 관람권을 등록 또는 선택해주세요.
					<!-- 보유하신 관람권은 등록 후 사용하실 수 있으며 등록된 관람권은<br />
				온라인에서만 사용 가능합니다. 사용할 관람권 또는 쿠폰을 선택해주세요. -->
				</div>

				<div class="popup-gray mid-info-box">
					<div class="pop-search-area">
						<p class="sh-txt reset mr08">
							<span class="label">관람권번호<!-- 관람권번호 --></span>
						</p>

						<div class="sh-input">
							<input type="text" placeholder="관람권번호 12자리"
								title="메가박스 관람권 번호 입력" class="input-text w150px" id="mcouponNo"
								maxlength="12"> <input type="text"
								placeholder="인증번호 4자리" title="메가박스 관람권 인증번호 입력"
								class="input-text w120px ml05" id="mcouponCertNo" maxlength="4">
						</div>

						<div class="sh-btn gray">
							<a href="#layer_movie_megabox_coupon_regi" w-data="600"
								h-data="320" class="button small gray btn-modal-open"
								id="btn_reg_mcoupon" title="관람권등록">관람권등록<!-- 관람권등록 --></a>
						</div>
					</div>
				</div>

				<div class="table-wrap divide">
					<table class="board-list line">
						<caption>
							관람권, 유효기간, 사용여부 항목을 가진 영화관람권 목록의 제목 표
							<!-- 관람권, 유효기간, 사용여부 항목을 가진 영화관람권 목록의 제목 표 -->
						</caption>
						<colgroup>
							<col>
							<col style="width: 200px;">
							<col style="width: 56px;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">관람권<!-- 관람권 --></th>
								<th scope="col">유효기간<!-- 유효기간 --></th>
								<th scope="col">사용<!-- 사용 --></th>
							</tr>
						</thead>
					</table>

					<!--
					상황에 따라 스크롤 높이값이 달라지기 때문에 인라인으로 넣어줘야 함
				 -->
					<div class="scroll" style="min-height: 129px; max-height: 129px;">
						<table class="board-list line">
							<caption>
								관람권, 유효기간, 사용여부 항목을 가진 영화관람권 목록의 내용 표
								<!-- 관람권, 유효기간, 사용여부 항목을 가진 영화관람권 목록의 내용 표 -->
							</caption>
							<colgroup>
								<col>
								<col style="width: 200px;">
								<col style="width: 56px;">
							</colgroup>
							<tbody>
								<!-- <tr>
								<td class="a-l">
									<strong>관람권명</strong><br />
									1234-5678-1234-****
								</td>
								<td>2019-01-08~2019-01-31</td>
								<td>
									<input type="checkbox" title="사용" />
								</td>
							</tr>
							<tr>
								<td class="a-l">
									<strong>부티크프라이빗 관람권</strong><br />
									1234-5678-1234-****
								</td>
								<td>2019-01-08~2019-01-31</td>
								<td>
									<input type="checkbox" title="사용" />
								</td>
							</tr>
							<tr>
								<td class="a-l">
									<strong>부티크프라이빗 관람권</strong><br />
									1234-5678-1234-****
								</td>
								<td>2019-01-08~2019-01-31</td>
								<td>
									<input type="checkbox" title="사용" />
								</td>
							</tr>
							<tr>
								<td class="a-l">
									<strong>부티크프라이빗 관람권</strong><br />
									1234-5678-1234-****
								</td>
								<td>2019-01-08~2019-01-31</td>
								<td>
									<input type="checkbox" title="사용" />
								</td>
							</tr>
							<tr>
								<td class="a-l">
									<strong>부티크프라이빗 관람권</strong><br />
									1234-5678-1234-****
								</td>
								<td>2019-01-08~2019-01-31</td>
								<td>
									<input type="checkbox" title="사용" />
								</td>
							</tr> -->
							</tbody>
						</table>
					</div>
				</div>

				<div class="box-border v1 use-guide mt15">
					<p class="tit">
						이용안내
						<!-- 이용안내 -->
					</p>

					<ul class="dot-list">
						<li>온라인에 등록된 관람권은 극장 매표소에서는 사용이 불가합니다.<!-- 등록된 관람권은 나의메가박스에서 확인 및 삭제하실 수 있습니다. --></li>
						<li>등록된 관람권은 나의메가박스에서 확인하실 수 있습니다.<!-- 등록된 관람권은 나의메가박스에서 확인 및 삭제하실 수 있습니다. --></li>
					</ul>
				</div>
			</div>
			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer"
					id="btn_close_mcoupon">
					닫기
					<!-- 닫기 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_cancel_apply_mcoupon" style="display: none;">
					적용취소
					<!-- 적용취소 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_apply_mcoupon">
					적용
					<!-- 적용 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close"
				id="btn_close_modal_mcoupon">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>
	<!--// 레이어 : 메가박스 관람권 -->

	<!--// 레이어 : 메가박스 관람권 -->

	<!-- 레이어 : 메가박스 멤버십 포인트 -->

	<!-- 레이어 : 메가박스 멤버십 포인트 -->
	<section id="layer_memp" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					메가박스 멤버십 포인트
					<!-- 메가박스 멤버십 포인트 -->
				</h3>
			</header>

			<div class="layer-con">
				<!-- layer-membership-point -->
				<div class="layer-membership-point">
					<ul class="dot-list">
						<li>회원님께서 보유하고 있는 포인트 중 사용 가능한 포인트입니다.<!-- 회원님께서 보유하고 있는 포인트 중 사용 가능한 포인트입니다. --></li>
						<li>구포인트는 월~금(공휴일 제외) / 신포인트는 요일 상관없이 사용 가능합니다.<!-- 신포인트는 주말 및 공휴일 사용이 가능합니다. --></li>
						<li>포인트 적립 및 사용 내역은 나의 메가박스 &gt; 멤버십 포인트에서 확인하세요.<!-- 포인트 적립 및 사용 내역 나의메가박스 &gt; 멤버십 포인트에서 확인하세요. --></li>
					</ul>

					<div class="usable-point">
						<i class="iconset ico-point"></i> 사용 가능한 멤버십 포인트
						<!-- 사용 가능한 멤버십 포인트 -->
						<span><em>0</em> P</span>
					</div>

					<!-- point-div -->
					<div class="point-div">
						<!--
						비 활성화 처럼 보이게
						<div class="block disabled">
					 -->
						<div class="block" id="divOldPoint">
							<p class="txt">
								구 포인트
								<!-- 구 포인트 -->
							</p>

							<a href="#tooltip01_01" class="tooltip hover" title="구포인트 사용안내">
								<span><i class="iconset ico-tooltip-gray-outline"></i></span>
								<div class="ir" data-width="240">

									<p class="reset">
										<strong>구포인트 사용안내<!-- 구포인트 사용안내 --></strong>
									</p>

									<p class="reset mt05">
										구포인트는 상영일 기준 2020.02.04 이전에 적립된 포인트를 대상으로 하며 주말 및 공휴일을 제외한
										평일에만 사용이 가능합니다.
										<!-- 구포인트는 2019.00.00 이전에<br />
									적립된 포인트를 대상으로 하며<br />
									주말 및 공휴일을 제외한 평일에만<br />
									사용이 가능합니다. -->
									</p>
								</div>
							</a>

							<p class="point">
								<span id="mempOldPoint">0</span> P
							</p>
						</div>

						<div class="block" id="divNewPoint">
							<p class="txt">
								신 포인트
								<!-- 신 포인트 -->
							</p>

							<a href="#tooltip01_02" class="tooltip hover" title="신포인트 사용안내">
								<span><i class="iconset ico-tooltip-gray-outline"></i></span>
								<div class="ir" data-width="240">

									<p class="reset">
										<strong>신포인트 사용안내<!-- 신포인트 사용안내 --></strong>
									</p>

									<p class="reset mt05">
										신포인트는 상영일 기준 2020.02.04 부터 적립된 포인트를 대상으로 하며 요일에 무관하게 사용가능합니다.
										<!-- 신포인트는 2019.00.00 이후에<br />
									적립된 포인트를 대상으로 합니다. -->
									</p>
								</div>
							</a>

							<p class="point">
								<span id="mempNewPoint">0</span> P (주말사용 가능
								<!-- 주말사용 가능 -->
								)
							</p>
						</div>
					</div>
					<!--// point-div -->

					<!-- chk-point -->
					<div class="chk-point">
						<div class="chk-wrap">
							<!--
						<div class="block">
							<span class="bg">
								<input type="checkbox" name="memp_chk_point_1" id="memp_chk_point_1" /> <label for="memp_chk_point_1">1 (8,000 P)</label>
							</span>
						</div>
						-->
						</div>

						<div class="total-point">
							총
							<!-- 총 -->
							<span id="mempUseTotalPoint">0</span> P / <span
								id="mempUseTotalPointCnt">0</span> 매
							<!-- 매 -->
						</div>
					</div>
					<!--// chk-point -->
				</div>
				<!--// layer-membership-point -->
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer">
					닫기
					<!-- 닫기 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_cancel_apply_memp" style="display: none;">
					적용취소
					<!-- 적용취소 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_apply_memp">
					적용
					<!-- 적용 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>
	<!--// 레이어 : 메가박스 멤버십 포인트 -->

	<!--// 레이어 : 메가박스 멤버십 포인트 -->

	<!-- 레이어 : 스토어교환권 -->

	<!-- 레이어 : 스토어교환권 -->
	<section id="layer_store_change" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					스토어교환권
					<!-- 스토어교환권 -->
				</h3>
			</header>

			<div class="layer-con">
				<div class="popup-gray v1 mt0">
					<div class="pop-search-area">
						<p class="sh-txt reset">
							<span class="label">교환권번호<!-- 교환권번호 --></span>
						</p>

						<div class="sh-input ml08">
							<input type="text" title="스토어교환권 번호입력" class="input-text w200px"
								id="scouponNo" name="scouponNo" maxlength="16">
						</div>
						<!-- 스토어교환권 번호입력 -->

						<div class="sh-btn gray">
							<button type="button" class="button small gray"
								id="btn_reg_scoupon">
								교환권등록
								<!-- 교환권등록 -->
							</button>
						</div>
					</div>
				</div>

				<div class="table-wrap divide mt15">
					<table class="board-list line">
						<caption>
							교환권 정보, 사용내역/유효기간, 사용 항목을 가진 스토어교환권 제목표
							<!-- 교환권 정보, 사용내역/유효기간, 사용 항목을 가진 스토어교환권 제목표 -->
						</caption>
						<colgroup>
							<col style="width: 220px;">
							<col>
							<col style="width: 60px;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">교환권 정보<!-- 교환권 정보 --></th>
								<th scope="col">사용내역/유효기간<!-- 사용내역/유효기간 --></th>
								<th scope="col">사용<!-- 사용 --></th>
							</tr>
						</thead>
					</table>

					<!--
                    상황에 따라 스크롤 높이값이 달라지기 때문에 인라인으로 넣어줘야 함
                 -->
					<div class="scroll" style="min-height: 299px; max-height: 299px;">
						<table class="board-list line">
							<caption>
								교환권 정보, 사용내역/유효기간, 사용 항목을 가진 스토어교환권 내용표
								<!-- 교환권 정보, 사용내역/유효기간, 사용 항목을 가진 스토어교환권 내용표 -->
							</caption>
							<colgroup>
								<col style="width: 220px;">
								<col>
								<col style="width: 60px;">
							</colgroup>
							<tbody>
								<!-- <tr>
                                <td class="a-l">러브콤보패키지 러브콤보교환권</td>
                                <td class="a-c">
                                    총(0/1) | 주간(0/1) | 월간(0/1)<br />
                                    / 2019.03.25~2021.03.24<br />
                                    주말에만 사용 가능
                                </td>
                                <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                            </tr>
                            <tr>
                                <td class="a-l">러브콤보패키지 러브콤보교환권</td>
                                <td class="a-c">
                                    총(0/1) | 주간(0/1) | 월간(0/1)<br />
                                    / 2019.03.25~2021.03.24<br />
                                    주말에만 사용 가능
                                </td>
                                <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                            </tr>
                            <tr>
                                <td class="a-l">러브콤보패키지 러브콤보교환권</td>
                                <td class="a-c">
                                    총(0/1) | 주간(0/1) | 월간(0/1)<br />
                                    / 2019.03.25~2021.03.24<br />
                                    주말에만 사용 가능
                                </td>
                                <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                            </tr>
                            <tr>
                                <td class="a-l">러브콤보패키지 러브콤보교환권</td>
                                <td class="a-c">
                                    총(0/1) | 주간(0/1) | 월간(0/1)<br />
                                    / 2019.03.25~2021.03.24<br />
                                    주말에만 사용 가능
                                </td>
                                <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                            </tr>
                            <tr>
                                <td class="a-l">러브콤보패키지 러브콤보교환권</td>
                                <td class="a-c">
                                    총(0/1) | 주간(0/1) | 월간(0/1)<br />
                                    / 2019.03.25~2021.03.24<br />
                                    주말에만 사용 가능
                                </td>
                                <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                            </tr>
                            <tr>
                                <td class="a-l">러브콤보패키지 러브콤보교환권</td>
                                <td class="a-c">
                                    총(0/1) | 주간(0/1) | 월간(0/1)<br />
                                    / 2019.03.25~2021.03.24<br />
                                    주말에만 사용 가능
                                </td>
                                <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                            </tr>
                            <tr>
                                <td class="a-l">러브콤보패키지 러브콤보교환권</td>
                                <td class="a-c">
                                    총(0/1) | 주간(0/1) | 월간(0/1)<br />
                                    / 2019.03.25~2021.03.24<br />
                                    주말에만 사용 가능
                                </td>
                                <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                            </tr>
                            <tr>
                                <td class="a-l">러브콤보패키지 러브콤보교환권</td>
                                <td class="a-c">
                                    총(0/1) | 주간(0/1) | 월간(0/1)<br />
                                    / 2019.03.25~2021.03.24<br />
                                    주말에만 사용 가능
                                </td>
                                <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                            </tr>
                            <tr>
                                <td class="a-l">러브콤보패키지 러브콤보교환권</td>
                                <td class="a-c">
                                    총(0/1) | 주간(0/1) | 월간(0/1)<br />
                                    / 2019.03.25~2021.03.24<br />
                                    주말에만 사용 가능
                                </td>
                                <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                            </tr>
                            <tr>
                                <td class="a-l">러브콤보패키지 러브콤보교환권</td>
                                <td class="a-c">
                                    총(0/1) | 주간(0/1) | 월간(0/1)<br />
                                    / 2019.03.25~2021.03.24<br />
                                    주말에만 사용 가능
                                </td>
                                <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                            </tr> -->
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer"
					id="btn_close_scoupon">
					닫기
					<!-- 닫기 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_cancel_apply_scoupon" style="display: none;">
					적용취소
					<!-- 적용취소 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_apply_scoupon">
					적용
					<!-- 적용 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close"
				id="btn_close_modal_scoupon">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>
	<!-- 레이어 : 스토어교환권 -->

	<!--// 레이어 : 스토어교환권 -->

	<!-- 레이어 : 기프티콘 -->

	<!-- 레이어 : 기프티콘 -->
	<section id="layer_gifticon" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					기프티콘
					<!-- 기프티콘 -->
				</h3>
			</header>

			<div class="layer-con">
				<div class="popup-gray mid-info-box mt0">
					<div class="pop-search-area">
						<p class="sh-txt reset mr08">
							<span class="label">예매권번호<!-- 예매권번호 --></span>
						</p>

						<div class="sh-input">
							<input type="text" title="기프티콘 예매권 번호입력"
								class="input-text w200px" id="gfconCardNum" maxlength="20">
						</div>
						<!-- 기프티콘 예매권 번호입력 -->

						<div class="sh-btn gray">
							<button type="button" class="button small gray"
								id="btn_select_gfcon">
								조회
								<!-- 조회 -->
							</button>
						</div>
					</div>
				</div>

				<div class="table-wrap divide">
					<table class="board-list line">
						<caption>
							기프티콘 예매권 명, 예매권번호, 사용여부 항목을 가진 기프티콘 목록의 제목 표
							<!-- 기프티콘 예매권 명, 예매권번호, 사용여부 항목을 가진 기프티콘 목록의 제목 표 -->
						</caption>
						<colgroup>
							<col>
							<col style="width: 150px;">
							<col style="width: 60px;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">예매권 명<!-- 예매권 명 --></th>
								<th scope="col">예매권번호<!-- 예매권번호 --></th>
								<th scope="col">사용<!-- 사용 --></th>
							</tr>
						</thead>
					</table>

					<!--
                    상황에 따라 스크롤 높이값이 달라지기 때문에 인라인으로 넣어줘야 함
                 -->
					<div class="scroll" style="min-height: 281px; max-height: 281px;">
						<table class="board-list line">
							<caption>
								예매권 명, 예매권번호, 사용여부 항목을 가진 기프티콘 목록의 내용 표
								<!-- 예매권 명, 예매권번호, 사용여부 항목을 가진 기프티콘 목록의 내용 표 -->
							</caption>
							<colgroup>
								<col>
								<col style="width: 150px;">
								<col style="width: 60px;">
							</colgroup>
							<tbody>
								<!-- <tr>
                                <td class="a-l">아이넘버 1인권</td>
                                <td>123456789012</td>
                                <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                            </tr>
                            <tr>
                                <td class="a-l">글자글자글자 글자글자글자</td>
                                <td>123456789012</td>
                                <td><input type="checkbox" title="글자글자글자 글자글자글자 사용여부 체크" /></td>
                            </tr>
                            <tr>
                                <td class="a-l">아이넘버 1인권</td>
                                <td>123456789012</td>
                                <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                            </tr>
                            <tr>
                                <td class="a-l">글자글자글자 글자글자글자</td>
                                <td>123456789012</td>
                                <td><input type="checkbox" title="글자글자글자 글자글자글자 사용여부 체크" /></td>
                            </tr>
                            <tr>
                                <td class="a-l">아이넘버 1인권</td>
                                <td>123456789012</td>
                                <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                            </tr>
                            <tr>
                                <td class="a-l">글자글자글자 글자글자글자</td>
                                <td>123456789012</td>
                                <td><input type="checkbox" title="글자글자글자 글자글자글자 사용여부 체크" /></td>
                            </tr>
                            <tr>
                                <td class="a-l">아이넘버 1인권</td>
                                <td>123456789012</td>
                                <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                            </tr>
                            <tr>
                                <td class="a-l">글자글자글자 글자글자글자</td>
                                <td>123456789012</td>
                                <td><input type="checkbox" title="글자글자글자 글자글자글자 사용여부 체크" /></td>
                            </tr> -->
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer"
					id="btn_close_gfcon">
					닫기
					<!-- 닫기 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_cancel_apply_gfcon" style="display: none;">
					적용취소
					<!-- 적용취소 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_apply_gfcon">
					적용
					<!-- 적용 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close"
				id="btn_close_modal_gfcon">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>
	<!--// 레이어 : 기프티콘 -->

	<!--// 레이어 : 기프티콘 -->

	<!-- 레이어 : 기프티쇼 -->

	<!-- 레이어 : 기프티쇼 -->
	<section id="layer_giftishow" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					기프티쇼
					<!-- 기프티쇼 -->
				</h3>
			</header>

			<div class="layer-con">
				<div class="popup-gray mid-info-box mt0">
					<div class="pop-search-area">
						<p class="sh-txt reset mr08">
							<span class="label">예매권번호<!-- 예매권번호 --></span>
						</p>

						<div class="sh-input">
							<input type="text" title="기프티쇼 예매권 번호입력"
								class="input-text w200px" id="gfshowCardNum" maxlength="">
						</div>
						<!-- 기프티쇼 예매권 번호입력 -->

						<div class="sh-btn gray">
							<button type="button" class="button small gray"
								id="btn_select_gfshow">
								조회
								<!-- 조회 -->
							</button>
						</div>
					</div>
				</div>

				<div class="table-wrap divide">
					<table class="board-list line">
						<caption>
							기프티쇼 예매권 명, 예매권번호, 사용여부 항목을 가진 기프티쇼 목록의 제목 표
							<!-- 기프티쇼 예매권 명, 예매권번호, 사용여부 항목을 가진 기프티쇼 목록의 제목 표 -->
						</caption>
						<colgroup>
							<col>
							<col style="width: 150px;">
							<col style="width: 60px;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">예매권 명<!-- 예매권 명 --></th>
								<th scope="col">예매권번호<!-- 예매권번호 --></th>
								<th scope="col">사용<!-- 사용 --></th>
							</tr>
						</thead>
					</table>

					<div class="scroll" style="min-height: 281px; max-height: 281px;">
						<table class="board-list line">
							<caption>
								예매권 명, 예매권번호, 사용여부 항목을 가진 기프티쇼 목록의 내용 표
								<!-- 예매권 명, 예매권번호, 사용여부 항목을 가진 기프티쇼 목록의 내용 표 -->
							</caption>
							<colgroup>
								<col>
								<col style="width: 150px;">
								<col style="width: 60px;">
							</colgroup>
							<tbody>
								<!-- <tr>
                                    <td class="a-l">아이넘버 1인권</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">글자글자글자 글자글자글자</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="글자글자글자 글자글자글자 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">아이넘버 1인권</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">글자글자글자 글자글자글자</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="글자글자글자 글자글자글자 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">아이넘버 1인권</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">글자글자글자 글자글자글자</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="글자글자글자 글자글자글자 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">아이넘버 1인권</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">글자글자글자 글자글자글자</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="글자글자글자 글자글자글자 사용여부 체크" /></td>
                                </tr> -->
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer"
					id="btn_close_gfshow">
					닫기
					<!-- 닫기 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_cancel_apply_gfshow" style="display: none;">
					적용취소
					<!-- 적용취소 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_apply_gfshow">
					적용
					<!-- 적용 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close"
				id="btn_close_modal_gfshow">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>
	<!--// 레이어 : 기프티쇼 -->
	<!--// 레이어 : 기프티쇼 -->

	<!-- 레이어 : G마켓 -->

	<!-- 레이어 : G마켓 -->
	<section id="layer_gmarket" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					G마켓예매권
					<!-- G마켓예매권 -->
				</h3>
			</header>

			<div class="layer-con">
				<div class="popup-gray mid-info-box mt0">
					<div class="pop-search-area">
						<p class="sh-txt reset mr08">
							<span class="label">예매권번호<!-- 예매권번호 --></span>
						</p>

						<div class="sh-input">
							<input type="text" title="G마켓 예매권 번호입력" class="input-text w200px"
								id="gmarketCardNum" maxlength="20">
						</div>
						<!-- G마켓 예매권 번호입력 -->

						<div class="sh-btn gray">
							<button type="button" class="button small gray"
								id="btn_select_gmarket">
								조회
								<!-- 조회 -->
							</button>
						</div>
					</div>
				</div>

				<div class="table-wrap divide">
					<table class="board-list line">
						<caption>
							G마켓 예매권 명, 예매권번호, 사용여부 항목을 가진 G마켓 예매권 목록의 제목 표
							<!-- G마켓 예매권 명, 예매권번호, 사용여부 항목을 가진 G마켓 예매권 목록의 제목 표 -->
						</caption>
						<colgroup>
							<col>
							<col style="width: 150px;">
							<col style="width: 60px;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">예매권 명<!-- 예매권 명 --></th>
								<th scope="col">예매권번호<!-- 예매권번호 --></th>
								<th scope="col">사용<!-- 사용 --></th>
							</tr>
						</thead>
					</table>

					<div class="scroll" style="min-height: 281px; max-height: 281px;">
						<table class="board-list line">
							<caption>
								G마켓 예매권 명, 예매권번호, 사용여부 항목을 가진 G마켓 예매권 목록의 내용 표
								<!-- G마켓 예매권 명, 예매권번호, 사용여부 항목을 가진 G마켓 예매권 목록의 내용 표 -->
							</caption>
							<colgroup>
								<col>
								<col style="width: 150px;">
								<col style="width: 60px;">
							</colgroup>
							<tbody>
								<!-- <tr>
                                    <td class="a-l">아이넘버 1인권</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">글자글자글자 글자글자글자</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="글자글자글자 글자글자글자 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">아이넘버 1인권</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">글자글자글자 글자글자글자</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="글자글자글자 글자글자글자 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">아이넘버 1인권</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">글자글자글자 글자글자글자</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="글자글자글자 글자글자글자 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">아이넘버 1인권</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">글자글자글자 글자글자글자</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="글자글자글자 글자글자글자 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">아이넘버 1인권</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">글자글자글자 글자글자글자</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="글자글자글자 글자글자글자 사용여부 체크" /></td>
                                </tr> -->
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer"
					id="btn_close_gmarket">
					닫기
					<!-- 닫기 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_cancel_apply_gmarket" style="display: none;">
					적용취소
					<!-- 적용취소 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_apply_gmarket">
					적용
					<!-- 적용 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close"
				id="btn_close_modal_gmarket">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>
	<!--// 레이어 : G마켓 -->
	<!--// 레이어 : G마켓 -->

	<!-- 레이어 : 아이넘버 -->

	<!-- 레이어 : 아이넘버 -->
	<section id="layer_inumber" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					아이넘버
					<!-- 아이넘버 -->
				</h3>
			</header>

			<div class="layer-con">
				<div class="popup-gray mid-info-box mt0">
					<div class="pop-search-area">
						<p class="sh-txt reset mr08">
							<span class="label">예매권번호<!-- 예매권번호 --></span>
						</p>

						<div class="sh-input">
							<input type="text" title="아이넘버 예매권 번호입력"
								class="input-text w200px" id="inumberCardNum" maxlength="20">
						</div>
						<!-- 아이넘버 예매권 번호입력 -->

						<div class="sh-btn gray">
							<button type="button" class="button small gray"
								id="btn_select_inumber">
								조회
								<!-- 조회 -->
							</button>
						</div>
					</div>
				</div>

				<div class="table-wrap">
					<table class="board-list line">
						<caption>
							아이넘버 예매권 명, 예매권번호, 사용여부 항목을 가진 아이넘버 예매권 목록의 제목 표
							<!-- 아이넘버 예매권 명, 예매권번호, 사용여부 항목을 가진 아이넘버 예매권 목록의 제목 표 -->
						</caption>
						<colgroup>
							<col>
							<col style="width: 150px;">
							<col style="width: 60px;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">예매권 명<!-- 예매권 명 --></th>
								<th scope="col">예매권번호<!-- 예매권번호 --></th>
								<th scope="col">사용<!-- 사용 --></th>
							</tr>
						</thead>
					</table>

					<div class="scroll" style="max-height: 281px;">
						<table class="board-list line">
							<caption>
								아이넘버 예매권 명, 예매권번호, 사용여부 항목을 가진 아이넘버 예매권 목록의 내용 표
								<!-- 아이넘버 예매권 명, 예매권번호, 사용여부 항목을 가진 아이넘버 예매권 목록의 내용 표 -->
							</caption>
							<colgroup>
								<col>
								<col style="width: 150px;">
								<col style="width: 60px;">
							</colgroup>
							<tbody>
								<!-- <tr>
                                    <td class="a-l">아이넘버 1인권</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">글자글자글자 글자글자글자</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="글자글자글자 글자글자글자 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">아이넘버 1인권</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">글자글자글자 글자글자글자</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="글자글자글자 글자글자글자 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">아이넘버 1인권</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">글자글자글자 글자글자글자</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="글자글자글자 글자글자글자 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">아이넘버 1인권</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="아이넘버 1인권 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">글자글자글자 글자글자글자</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="글자글자글자 글자글자글자 사용여부 체크" /></td>
                                </tr> -->
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer"
					id="btn_close_inumber">
					닫기
					<!-- 닫기 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_cancel_apply_inumber" style="display: none;">
					적용취소
					<!-- 적용취소 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_apply_inumber">
					적용
					<!-- 적용 -->
				</button>
			</div>
			<button type="button" class="btn-modal-close"
				id="btn_close_modal_inumber">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>
	<!-- // 레이어 : 아이넘버 -->

	<!-- // 레이어 : 아이넘버 -->

	<!-- 레이어 : 도넛북 -->

	<!-- 레이어 : 도넛북 -->
	<section id="layer_donutbook" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					도넛북
					<!-- 도넛북 -->
				</h3>
			</header>

			<div class="layer-con">
				<div class="popup-gray mid-info-box mt0">
					<div class="pop-search-area">
						<p class="sh-txt reset mr08">
							<span class="label">예매권번호<!-- 예매권번호 --></span>
						</p>

						<div class="sh-input">
							<input type="text" title="도넛북 예매권 번호입력" class="input-text w200px"
								id="donutCardNum" maxlength="20">
						</div>
						<!-- 도넛북 예매권 번호입력 -->

						<div class="sh-btn gray">
							<button type="button" class="button small gray"
								id="btn_select_donut">
								조회
								<!-- 조회 -->
							</button>
						</div>
					</div>
				</div>

				<div class="table-wrap divide">
					<table class="board-list line">
						<caption>
							예매권 명, 예매권번호, 사용 항목을 가진 도넛북 예매권 목록의 제목 표
							<!-- 예매권 명, 예매권번호, 사용 항목을 가진 도넛북 예매권 목록의 제목 표 -->
						</caption>
						<colgroup>
							<col>
							<col style="width: 150px;">
							<col style="width: 60px;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">예매권 명<!-- 예매권 명 --></th>
								<th scope="col">예매권번호<!-- 예매권번호 --></th>
								<th scope="col">사용<!-- 사용 --></th>
							</tr>
						</thead>
					</table>

					<div class="scroll" style="min-height: 281px; max-height: 281px;">
						<table class="board-list line">
							<caption>
								예매권 명, 예매권번호, 사용 항목을 가진 도넛북 예매권 목록의 내용 표
								<!-- 예매권 명, 예매권번호, 사용 항목을 가진 도넛북 예매권 목록의 내용 표 -->
							</caption>
							<colgroup>
								<col>
								<col style="width: 150px;">
								<col style="width: 60px;">
							</colgroup>
							<tbody>
								<!-- <tr>
                                    <td class="a-l">도넛북 1인권</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="도넛북 1인권 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">글자글자글자 글자글자글자</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="글자글자글자 글자글자글자 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">도넛북 1인권</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="도넛북 1인권 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">글자글자글자 글자글자글자</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="글자글자글자 글자글자글자 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">도넛북 1인권</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="도넛북 1인권 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">글자글자글자 글자글자글자</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="글자글자글자 글자글자글자 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">도넛북 1인권</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="도넛북 1인권 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">글자글자글자 글자글자글자</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="글자글자글자 글자글자글자 사용여부 체크" /></td>
                                </tr> -->
							</tbody>
						</table>
					</div>
				</div>

			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer"
					id="btn_close_donut">
					닫기
					<!-- 닫기 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_cancel_apply_donut" style="display: none;">
					적용취소
					<!-- 적용취소 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_apply_donut">
					적용
					<!-- 적용 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close"
				id="btn_close_modal_donut">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>
	<!-- // 레이어 : 도넛북 -->
	<!-- // 레이어 : 도넛북 -->

	<!-- 레이어 : 스마트콘 -->

	<!-- 레이어 : 스마트콘 -->
	<section id="layer_smartcon" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					스마트콘
					<!-- 스마트콘 -->
				</h3>
			</header>

			<div class="layer-con">
				<div class="popup-gray mid-info-box mt0">
					<div class="pop-search-area">
						<p class="sh-txt reset mr08">
							<span class="label">예매권번호<!-- 예매권번호 --></span>
						</p>

						<div class="sh-input">
							<input type="text" title="스마트콘 예매권 번호입력"
								class="input-text w200px" id="smConCardNum" maxlength="20">
						</div>
						<!-- 스마트콘 예매권 번호입력 -->

						<div class="sh-btn gray">
							<button type="button" class="button small gray"
								id="btn_select_smcon">
								조회
								<!-- 조회 -->
							</button>
						</div>
					</div>
				</div>

				<div class="table-wrap divide">
					<table class="board-list line">
						<caption>
							예매권 명, 예매권번호, 사용 항목을 가진 스마트콘 예매권 목록의 제목 표
							<!-- 예매권 명, 예매권번호, 사용 항목을 가진 스마트콘 예매권 목록의 제목 표 -->
						</caption>
						<colgroup>
							<col>
							<col style="width: 150px;">
							<col style="width: 60px;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">예매권 명<!-- 예매권 명 --></th>
								<th scope="col">예매권번호<!-- 예매권번호 --></th>
								<th scope="col">사용<!-- 사용 --></th>
							</tr>
						</thead>
					</table>

					<div class="scroll" style="min-height: 281px; max-height: 281px;">
						<table class="board-list line">
							<caption>
								예매권 명, 예매권번호, 사용 항목을 가진 스마트콘 예매권 목록의 내용 표
								<!-- 예매권 명, 예매권번호, 사용 항목을 가진 스마트콘 예매권 목록의 내용 표 -->
							</caption>
							<colgroup>
								<col>
								<col style="width: 150px;">
								<col style="width: 60px;">
							</colgroup>
							<tbody>
								<!-- <tr>
                                    <td class="a-l">스마트콘 1인권</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="스마트콘 1인권 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">글자글자글자 글자글자글자</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="글자글자글자 글자글자글자 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">스마트콘 1인권</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="스마트콘 1인권 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">글자글자글자 글자글자글자</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="글자글자글자 글자글자글자 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">스마트콘 1인권</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="스마트콘 1인권 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">글자글자글자 글자글자글자</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="글자글자글자 글자글자글자 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">스마트콘 1인권</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="스마트콘 1인권 사용여부 체크" /></td>
                                </tr>
                                <tr>
                                    <td class="a-l">글자글자글자 글자글자글자</td>
                                    <td>123456789012</td>
                                    <td><input type="checkbox" title="글자글자글자 글자글자글자 사용여부 체크" /></td>
                                </tr> -->
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer"
					id="btn_close_smcon">
					닫기
					<!-- 닫기 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_cancel_apply_smcon" style="display: none;">
					적용취소
					<!-- 적용취소 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_apply_smcon">
					적용
					<!-- 적용 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close"
				id="btn_close_modal_smcon">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>
	<!-- // 레이어 : 스마트콘 -->

	<!-- // 레이어 : 스마트콘 -->

	<!-- 레이어 : 제휴예매권 -->

	<!-- 레이어 : 제휴예매권 -->
	<section id="layer_alliance" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					제휴예매권
					<!-- 제휴예매권 -->
				</h3>
			</header>

			<div class="layer-con">
				<div class="popup-gray mid-info-box mt0">
					<div class="pop-search-area">
						<p class="sh-txt reset mr08">
							<span class="label">쿠폰번호<!-- 쿠폰번호 --></span>
						</p>

						<div class="sh-input">
							<input type="text" title="제휴예매권 쿠폰 번호입력"
								class="input-text w200px" id="pcouponNo" maxlength="16">
						</div>
						<!-- 제휴예매권 쿠폰 번호입력 -->

						<div class="sh-btn gray">
							<button type="button" class="button small gray"
								id="btn_select_pcoupon">
								조회
								<!-- 조회 -->
							</button>
						</div>
					</div>
				</div>

				<div class="table-wrap divide">
					<table class="board-list line">
						<caption>
							쿠폰정보, 시용내역/유효기간, 인원, 사용 항목을 가진 제휴예매권 목록의 제목 표
							<!-- 쿠폰정보, 시용내역/유효기간, 인원, 사용 항목을 가진 제휴예매권 목록의 제목 표 -->
						</caption>
						<colgroup>
							<col style="width: 200px;">
							<col>
							<col style="width: 100px;">
							<col style="width: 100px;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">쿠폰 정보<!-- 쿠폰 정보 --></th>
								<th scope="col">사용내역/유효기간<!-- 사용내역/유효기간 --></th>
								<th scope="col">인원<!-- 인원 --></th>
								<th scope="col">사용<!-- 사용 --></th>
							</tr>
						</thead>
					</table>

					<div class="scroll" style="min-height: 281px; max-height: 281px;">
						<table class="board-list line">
							<caption>
								쿠폰정보, 시용내역/유효기간, 인원, 사용 항목을 가진 제휴예매권 목록의 내용 표
								<!-- 쿠폰정보, 시용내역/유효기간, 인원, 사용 항목을 가진 제휴예매권 목록의 내용 표 -->
							</caption>
							<colgroup>
								<col style="width: 200px;">
								<col>
								<col style="width: 100px;">
								<col style="width: 100px;">
							</colgroup>
							<tbody>
								<!-- <tr>
                                <td class="a-l"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="a-l"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="a-l"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="a-l"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="a-l"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="a-l"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="a-l"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="a-l"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="a-l"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr> -->
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer"
					id="btn_close_pcoupon">
					닫기
					<!-- 닫기 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_cancel_apply_pcoupon" style="display: none;">
					적용취소
					<!-- 적용취소 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_apply_pcoupon">
					적용
					<!-- 적용 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close"
				id="btn_close_modal_pcoupon">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>
	<!-- // 레이어 : 제휴예매권 -->

	<!-- // 레이어 : 제휴예매권 -->

	<!-- 레이어 : 메가박스 프렌즈 -->

	<!-- 레이어 : 메가박스 프렌즈 -->
	<input type="hidden" id="friendsCardNum_hid">
	<section id="layer_friends" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					메가박스 프렌즈
					<!-- 메가박스 프렌즈 -->
				</h3>
			</header>

			<div class="layer-con">
				<div class="popup-gray mid-info-box mt0">
					<div class="pop-search-area">
						<p class="sh-txt reset mr08">
							<span class="label">카드번호<!-- 카드번호 --></span>
						</p>

						<div class="sh-input">
							<input type="text" title="메가박스 프랜즈 카드번호 입력"
								class="input-text w200px" id="friendsCardNum" maxlength="16">
						</div>

						<div class="sh-btn gray">
							<button type="button" class="button small gray"
								id="btn_select_friends">
								조회
								<!-- 조회 -->
							</button>
						</div>
					</div>
				</div>

				<div class="table-wrap device">
					<table class="board-form">
						<caption>
							메가박스 프랜즈 멤버십을 본인 관람가, 동반자 관람단가, 월 제한수, 일 제한수, 주말가능, 관람가능일 순서로
							입력하는 표
							<!-- 메가박스 프랜즈 멤버십을 본인 관람가, 동반자 관람단가, 월 제한수, 일 제한수, 주말가능, 관람가능일 순서로 입력하는 표 -->
						</caption>
						<colgroup>
							<col style="width: 125px;">
							<col>
							<col style="width: 125px;">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="selFriends01">본인 관람가<!-- 본인 관람가 --></label></th>
								<td colspan="3"><select id="selFriends01"
									class="w150px x-small">
										<option>매수할인선택
											<!-- 매수할인선택 --></option>
								</select></td>
							</tr>
							<tr>
								<th scope="row"><label for="selFriends02">동반자 관람단가<!-- 동반자 관람단가 --></label></th>
								<td colspan="3"><select id="selFriends02"
									class="w150px x-small">
										<option>매수할인선택
											<!-- 매수할인선택 --></option>
								</select></td>
							</tr>
							<tr>
								<th scope="row">월 제한수<!-- 월 제한수 --></th>
								<td id="tdFriendsMonthLmt"></td>
								<th scope="row">일 제한수<!-- 일 제한수 --></th>
								<td id="tdFriendsDayLmt"></td>
							</tr>
							<tr>
								<th scope="row">당일예매<!-- 당일예매 --></th>
								<td id="tdTdayBokdAbleAt"></td>
								<th scope="row">영화중복<!-- 영화중복 --></th>
								<td id="tdMovieDupUseAt"></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer"
					id="btn_close_friends">
					닫기
					<!-- 닫기 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_cancel_apply_friends" style="display: none;">
					적용취소
					<!-- 적용취소 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_apply_friends">
					적용
					<!-- 적용 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close"
				id="btn_close_modal_friends">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>
	<!--// 레이어 : 메가박스 프렌즈 -->

	<!--// 레이어 : 메가박스 프렌즈 -->

	<!-- 레이어 : 메가박스 아너스카드 -->

	<!-- 레이어 : 아너스카드 -->
	<input type="hidden" id="annusCardNum_hid">
	<section id="layer_annus_card" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					메가박스 아너스카드
					<!-- 메가박스 아너스카드 -->
				</h3>
			</header>

			<div class="layer-con">
				<div class="popup-gray mid-info-box mt0">
					<div class="pop-search-area">
						<p class="sh-txt reset mr08">
							<span class="label">카드번호 <!-- 카드번호 --></span>
						</p>

						<div class="sh-input">
							<input type="text"
								title="메가박스 아너스카드 카드번호 입력 <!-- 메가박스 아너스카드 카드번호 입력 -->"
								class="input-text w200px" id="annusCardNum" maxlength="20">
						</div>

						<div class="sh-btn gray">
							<button type="button" class="button small gray"
								id="btn_select_annus">
								조회
								<!-- 조회 -->
							</button>
						</div>
					</div>
				</div>

				<div class="table-wrap">
					<table class="board-form">
						<caption>
							메가박스 아너스카드를 본인 관람가, 동반자 관람단가, 월 제한수, 일 제한수, 주말가능, 관람가능일, 잔여금액 순서로
							입력하는 표
							<!-- 메가박스 아너스카드를 본인 관람가, 동반자 관람단가, 월 제한수, 일 제한수, 주말가능, 관람가능일, 잔여금액 순서로 입력하는 표 -->
						</caption>
						<colgroup>
							<col style="width: 125px;">
							<col>
							<col style="width: 125px;">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="selAnnus">적용매수 <!-- 본인 관람가 --></label></th>
								<td colspan="3"><select id="selAnnus"
									class="w150px x-small">
										<option>선택
											<!-- 매수선택 --></option>
								</select></td>
							</tr>
							<tr>
								<th scope="row">잔여금액 <!-- 잔여금액 --></th>
								<td colspan="3" id="annusUseAbleAmt"></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer"
					id="btn_close_annus">
					닫기
					<!-- 닫기 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_cancel_apply_annus" style="display: none;">
					적용취소
					<!-- 적용취소 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_apply_annus">
					적용
					<!-- 적용 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close"
				id="btn_close_modal_annus">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>
	<!-- 레이어 : 아너스카드 -->

	<!--// 레이어 : 메가박스 아너스카드 -->

	<!-- 레이어 : 메가박스 영화할인 쿠폰 -->

	<!-- 레이어 : 메가박스 영화할인 쿠폰 -->
	<section id="layer_dcoupon" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					메가박스 할인쿠폰
					<!-- 메가박스 할인쿠폰 -->
				</h3>
			</header>

			<div class="layer-con">
				<div class="pop-tit">
					사용할 쿠폰을 선택해주세요.
					<!-- 사용할 쿠폰을 선택해주세요. -->
				</div>

				<div class="popup-gray mid-info-box mb20">
					<div class="pop-search-area">
						<p class="sh-txt reset mr08">
							<span class="label">쿠폰번호<!-- 쿠폰번호 --></span>
						</p>

						<div class="sh-input">
							<input id="dcouponNo" type="text" title="메가박스 영화할인쿠폰 16자리 입력"
								placeholder="" class="input-text" style="width: 250px;"
								maxlength="16">
						</div>

						<div class="sh-btn gray">
							<button type="button" class="button small gray"
								id="btn_reg_dcoupon">
								쿠폰등록
								<!-- 쿠폰등록 -->
							</button>
						</div>
					</div>
				</div>

				<div class="table-wrap divide">
					<table class="board-list line">
						<caption>
							쿠폰명, 쿠폰번호, 유효기간, 사용 항목을 가진 메가박스 영화할인쿠폰 목록의 제목 표
							<!-- 쿠폰명, 쿠폰번호, 유효기간, 사용 항목을 가진 메가박스 영화할인쿠폰 목록의 제목 표 -->
						</caption>
						<colgroup>
							<col>
							<col style="width: 115px;">
							<col style="width: 60px;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">쿠폰명<!-- 쿠폰명 --></th>
								<th scope="col">유효기간<!-- 유효기간 --></th>
								<th scope="col">사용<!-- 사용 --></th>
							</tr>
						</thead>
					</table>

					<div class="scroll" style="min-height: 171px; max-height: 171px;">
						<table class="board-list line">
							<caption>
								쿠폰명, 쿠폰번호, 유효기간, 사용 항목을 가진 메가박스 영화할인쿠폰 목록의 내용 표
								<!-- 쿠폰명, 쿠폰번호, 유효기간, 사용 항목을 가진 메가박스 영화할인쿠폰 목록의 내용 표 -->
							</caption>
							<colgroup>
								<col>
								<col style="width: 115px;">
								<col style="width: 60px;">
							</colgroup>
							<tbody>
							</tbody>
						</table>
					</div>

					<div class="box-border v1 use-guide mt15">
						<p class="tit">
							이용안내
							<!-- 이용안내 -->
						</p>

						<ul class="dot-list gray">
							<li>사용 가능한 쿠폰만 노출됩니다.<!-- 사용 가능한 쿠폰만 노출됩니다. --></li>
							<li>전체 쿠폰 목록은 나의 메가박스 &gt; 할인쿠폰에서 확인 가능합니다.<!-- 전체 쿠폰 목록은 나의 메가박스 > 할인쿠폰에서 확인 가능합니다. --></li>
							<li>보유하신 쿠폰은 등록 후 이용하실 수 있습니다.<!-- 보유하신 쿠폰은 등록 후 이용하실 수 있습니다. --></li>
						</ul>
					</div>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer"
					id="btn_close_dcoupon">
					닫기
					<!-- 닫기 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_cancel_apply_dcoupon" style="display: none;">
					적용취소
					<!-- 적용취소 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_apply_dcoupon">
					적용
					<!-- 적용 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close"
				id="btn_close_modal_dcoupon">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>
	<!-- //레이어 : 메가박스 영화할인 쿠폰 -->
	<!-- //레이어 : 메가박스 영화할인 쿠폰 -->

	<!-- 레이어 : skt -->

	<!-- 레이어 : skt -->
	<input type="hidden" id="sktMemberCardNum_hid">
	<section id="layer_skt" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					T멤버십
					<!-- T멤버십 -->
				</h3>
			</header>

			<div class="layer-con">
				<div class="reset mb10">
					T멤버십 카드 정보를 입력해주세요
					<!-- T멤버십 카드 정보를 입력해주세요 -->
				</div>

				<div class="popup-gray mid-info-box mb15">
					<div class="pop-search-area">
						<p class="sh-txt reset mr08">
							<span class="sktMemberCardNum">카드번호<!-- 카드번호 --></span>
						</p>

						<div class="sh-input">
							<input type="text" title="T멤버십 카드번호 입력" class="input-text w200px"
								id="sktMemberCardNum" maxlength="20">
						</div>

						<div class="sh-btn gray">
							<button type="button" class="button small gray"
								id="btn_select_skt">
								조회
								<!-- 조회 -->
							</button>
						</div>
					</div>
				</div>

				<div class="table-wrap">
					<table class="board-form">
						<caption></caption>
						<colgroup>
							<col style="width: 150px;">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="selSktNormalMember">T
										멤버십<!-- T 멤버십 -->
								</label></th>
								<td>
									<div class="td-relative">
										<select class="w150px mr10 x-small" id="selSktNormalMember">
											<option value="0">선택
												<!-- 선택 --></option>
										</select> 당일 잔여
										<!-- 당일 잔여 -->
										<span class="font-green" id="sktMemberUseAbleCnt">0</span>회
										<!-- 회 -->
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="box-border v1 use-guide mt15">
					<p class="tit">
						이용안내
						<!-- 이용안내 -->
					</p>

					<ul class="dot-list gray">
						<li>장당 2,000원 할인(동반 4인 포함, 1일 최대 5매)<!-- 장당 2,000원 할인(동반 4인 포함, 1일 최대 5매) --></li>
						<li>조조, 심야, 우대, 어린이요금, 문화의날 및 특별콘텐트 이용불가<!-- 조조, 심야, 우대, 어린이요금, 문화의날 및 특별콘텐트 이용불가 --></li>
						<li>타 제휴 및 쿠폰 할인 중복사용 불가<!-- 타 제휴 및 쿠폰 할인 중복사용 불가 --></li>
						<li>VIP무료 예매는 T멤버십 홈페이지에서 가능<!-- VIP무료 예매는 T멤버십 홈페이지에서 가능 --></li>
					</ul>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer"
					id="btn_close_skt">
					닫기
					<!-- 닫기 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_cancel_apply_skt" style="display: none;">
					적용취소
					<!-- 적용취소 -->
				</button>
				<button type="button" class="button small purple" id="btn_apply_skt">
					적용
					<!-- 적용 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close"
				id="btn_close_modal_skt">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>
	<!--// 레이어 : skt -->

	<!--// 레이어 : skt -->

	<!-- 레이어 : 현대 M포인트 카드 -->


	<!-- 레이어 : 현대 M포인트 카드 -->
	<section id="layer_hyundai_m_point" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					현대카드 M포인트
					<!-- 현대 M포인트 카드 -->
				</h3>
			</header>

			<div class="layer-con">
				<div class="reset">
					현대 M포인트 카드 정보를 입력해주세요
					<!-- 현대 M포인트 카드 정보를 입력해주세요 -->
				</div>

				<div class="popup-gray mid-info-box">
					<div class="pop-search-area">
						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="hyundai_m_point_card_num">카드번호<!-- 카드번호 --></label>
							</p>

							<div class="sh-input">
								<input type="text" title="현대 M포인트 카드번호 첫번째자리 입력"
									class="input-text w60px x-small" id="hyMPointCardNum_1"
									maxlength="4"> - <input type="text"
									title="현대 M포인트 카드번호 두번째자리 입력" class="input-text w60px x-small"
									id="hyMPointCardNum_2" maxlength="4"> - <input
									type="number" title="현대 M포인트 카드번호 세번째자리 입력"
									class="input-text w60px x-small pwnew" id="hyMPointCardNum_3"
									maxlength="4" oninput="gfn_numberMaxLength(this);"> - <input
									type="text" title="현대 M포인트 카드번호 네번째자리 입력"
									class="input-text w60px x-small" id="hyMPointCardNum_4"
									maxlength="4">
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="hyundai_m_point_card_date">카드유효기간<!-- 카드유효기간 --></label>
							</p>

							<div class="sh-input">
								<input type="text" id="hy_m_point_card_mm"
									title="현대 M포인트 카드 유효기간 월 입력" placeholder="MM"
									class="input-text w60px x-small a-c" maxlength="2"> / <input
									type="text" id="hy_m_point_card_yy"
									title="현대 M포인트 카드 유효기간 년 입력" placeholder="YY"
									class="input-text w60px x-small a-c" maxlength="2">
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="hyundai_m_point_card_password">비밀번호<!-- 비밀번호 --></label>
							</p>

							<div class="sh-input">
								<input type="text" id="hyundai_m_point_card_password"
									title="현대 M포인트 카드 비밀번호 입력"
									class="input-text w60px x-small pwnew" maxlength="2"> <span
									class="font-size-13 font-gray ml05">앞 2자리<!-- 앞 2자리 --></span>
							</div>
						</div>

						<div class="pop-search-area-line gray">
							<p class="sh-txt reset vt">
								<label for="hyundai_m_point_card_birthday">생년월일<!-- 생년월일 --></label>
							</p>
							<div class="sh-input mr0">
								<input type="text" id="hyundai_m_point_card_birthday"
									title="현대 M포인트 카드 생년월일 입력" class="input-text w80px x-small"
									maxlength="10">

								<p class="reset inline-block font-size-13 ml05 font-gray">
									생년월일 6자리(카드소유자) / 사업자번호 10자리
									<!-- 생년월일 6자리(카드소유자) / 사업자번호 10자리 -->
								</p>

								<button type="button" class="button gray x-small ml07"
									id="btn_select_hydm">
									조회
									<!-- 조회 -->
								</button>
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset vt">
								<label for="hyundai_m_point_card_ticket_counting">적용매수</label>
							</p>
							<div class="sh-input mr0">

								<select title="현대 M포인트 선택" class="w120px v1 x-small"
									id="selHyMPoint">
									<option value="0">선택
										<!-- 선택 --></option>
								</select> <span class="ml05 font-size-13">사용 가능한 포인트는 <em
									class="font-gblue" id="hyMPointUseAbleAmt">0</em> Point 입니다.<!-- 입니다. --></span>
							</div>
						</div>
					</div>
				</div>

				<div class="box-border v1 use-guide">
					<p class="tit">
						이용안내
						<!-- 이용안내 -->
					</p>

					<ul class="dot-list gray">
						<li>영화 2,000포인트 차감 할인(1일 최대 8매), 현대카드로만 결제 가능<!-- 영화 2,000포인트 차감 할인(1일 최대 8매), 현대카드로만 결제 가능 --></li>
						<li>우대, 문화의날 및 특별콘텐트 이용불가<!-- 우대, 문화의날 및 특별콘텐트 이용불가 --></li>
						<li>타 제휴 및 쿠폰 할인 중복사용 불가<!-- 타 제휴 및 쿠폰 할인 중복사용 불가 --></li>
					</ul>
				</div>

				<div class="mt10">
					<input type="checkbox" id="hyundai_m_point_card_agree"> <label
						for="hyundai_m_point_card_agree">결제대행서비스 약관에 모두 동의 <!-- 결제대행서비스 약관에 모두 동의 --></label>

					<div class="mt10">
						<a
							href="https://www.firstpay.co.kr/jsp/common/agreementPopup.jsp?type=1&amp;langtype=HAN"
							title="전자금융거래 이용약관" target="_blank" class="a-link ml20">전자금융거래
							이용약관 <!-- 전자금융거래 이용약관 --> <i class="iconset ico-arr-right-green"></i>
						</a> <a
							href="https://www.firstpay.co.kr/jsp/common/agreementPopup.jsp?type=3&amp;langtype=HAN"
							title="개인정보의 수집 및 이용안내" target="_blank" class="a-link ml20">개인정보의
							수집 및 이용안내 <!-- 개인정보의 수집 및 이용안내 --> <i
							class="iconset ico-arr-right-green"></i>
						</a> <a
							href="https://www.firstpay.co.kr/jsp/common/agreementPopup.jsp?type=4&amp;langtype=HAN"
							title="개인정보 제공 및 위탁안내" target="_blank" class="a-link ml20">개인정보
							제공 및 위탁안내 <!-- 개인정보 제공 및 위탁안내 --> <i
							class="iconset ico-arr-right-green"></i>
						</a>
					</div>
				</div>

			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer"
					id="btn_close_hydm">
					닫기
					<!-- 닫기 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_cancel_apply_hydm" style="display: none;">
					적용취소
					<!-- 적용취소 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_apply_hydm">
					적용
					<!-- 적용 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close"
				id="btn_close_modal_hydm">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>
	<!--// 레이어 : 현대 M포인트 카드 -->
	<!--// 레이어 : 현대 M포인트 카드 -->

	<!-- 레이어 : 문화누리 카드 -->

	<!-- 레이어 : 문화누리 카드 -->
	<input type="hidden" id="culturenuriCardNum_hid">
	<section id="layer_mnuri" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					문화누리 카드
					<!-- 문화누리 카드 -->
				</h3>
			</header>

			<div class="layer-con">
				<div class="reset">
					문화누리 카드 정보를 입력해주세요.
					<!-- 문화누리 카드 정보를 입력해주세요. -->
				</div>

				<div class="popup-gray mid-info-box">
					<div class="pop-search-area">
						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="mnuri_card_num">카드번호<!-- 카드번호 --></label>
							</p>

							<div class="sh-input">
								<input type="text" title="문화누리 카드번호 입력"
									class="input-text w180px x-small" id="culturenuriCardNum"
									maxlength="20">
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="mnuri_card_num_card_date">카드유효기간<!-- 카드유효기간 --></label>
							</p>

							<div class="sh-input">
								<input type="text" id="culturenuri_card_mm"
									title="문화누리 카드 유효기간 월 입력" placeholder="MM"
									class="input-text w60px x-small a-c" maxlength="2"> / <input
									type="text" id="culturenuri_card_yy" title="문화누리 유효기간 년 입력"
									placeholder="YY" class="input-text w60px x-small a-c"
									maxlength="2">
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="culturenuri_card_password">비밀번호<!-- 비밀번호 --></label>
							</p>

							<div class="sh-input">
								<input type="text" id="culturenuri_card_password"
									title="문화누리 카드 비밀번호 입력" class="input-text w60px x-small pwnew"
									maxlength="2"> <span
									class="font-gray ml05 font-size-13">앞 2자리<!-- 앞 2자리 --></span>
							</div>
						</div>

						<div class="pop-search-area-line gray">
							<p class="sh-txt reset vt">
								<label for="mnuri_card_birthday">생년월일<!-- 생년월일 --></label>
							</p>
							<div class="sh-input mr0">
								<input type="text" id="culturenuri_card_birthday"
									title="문화누리 카드 생년월일 입력" class="input-text w80px x-small"
									maxlength="10">

								<p class="reset inline-block font-size-13 font-gray ml05">
									생년월일 6자리(카드소유자)
									<!-- 생년월일 6자리(카드소유자) -->
								</p>
							</div>
							<button type="button" class="button gray x-small ml07"
								id="btn_select_culturenuri">
								조회
								<!-- 조회 -->
							</button>
						</div>
					</div>
				</div>

				<div class="pop-util mb15">
					<ul>
						<li>
							<p class="vm">
								적용매수
								<!-- 적용매수 -->
							</p>
						</li>
						<li class="a-r"><select title="문화누리 적용매수 선택"
							class="w120px x-small" id="selCulturenuri">
								<option value="0">선택
									<!-- 선택 --></option>
						</select></li>
					</ul>
				</div>

				<div class="box-border v1 use-guide">
					<p class="tit">
						이용안내
						<!-- 이용안내 -->
					</p>

					<ul class="dot-list gray">
						<li>장당 2,500원 할인(동반 1인), 문화누리카드로만 결제 가능<!-- 장당 2,500원 할인(동반 1인), 문화누리카드로만 결제 가능 --></li>
						<li>일반관 2D/3D 성인, 청소년 정상가 선택 시 할인 적용 가능<!-- 일반관 2D/3D 성인, 청소년 정상가 선택 시 할인 적용 가능 --></li>
						<li>문화누리카드 잔액 부족 시 결제 불가<!-- 문화누리카드 잔액 부족 시 결제 불가 --></li>
						<li>타 제휴 및 쿠폰 할인 중복사용 불가<!-- 타 제휴 및 쿠폰 할인 중복사용 불가 --></li>
					</ul>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer"
					id="btn_close_culturenuri">
					닫기
					<!-- 닫기 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_cancel_apply_culturenuri" style="display: none;">
					적용취소
					<!-- 적용취소 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_apply_culturenuri">
					적용
					<!-- 적용 -->
				</button>

			</div>

			<button type="button" class="btn-modal-close"
				id="btn_close_modal_culturenuri">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>
	<!-- // 레이어 : 문화누리 카드 -->
	<!-- // 레이어 : 문화누리 카드 -->

	<!-- 레이어 : GS&POINT -->

	<!-- 레이어 : GS&POINT -->
	<input type="hidden" id="gsnPointCardNum_hid">
	<section id="layer_gs_point" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">GS&amp;POINT</h3>
			</header>

			<div class="layer-con">
				<div class="reset">
					GS&amp;POINT 카드 정보를 입력해주세요.
					<!-- 카드 정보를 입력해주세요. -->
				</div>

				<div class="popup-gray mid-info-box">
					<div class="pop-search-area">
						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="gsnPointCardNum_1">카드번호<!-- 카드번호 --></label>
							</p>

							<div class="sh-input">
								<input type="text" title="GS&amp;POINT 카드번호 입력"
									class="input-text w180px x-small" id="gsnPointCardNum"
									maxlength="20">
								<button type="button" class="button gray x-small ml05"
									id="btn_select_gsnp">
									포인트 조회
									<!-- 포인트 조회 -->
								</button>
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								사용가능 포인트
								<!-- 사용가능 포인트 -->
							</p>

							<div class="sh-input">
								<div class="sh-input">
									<em id="gsnPointUseAbleAmt" class="font-gblue">0</em> 점
									<!-- 점 -->
								</div>
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								적용 매수 선택
								<!-- 적용 매수 선택 -->
							</p>

							<div class="sh-input">
								<select title="GS 포인트 적용 매수 선택" class="w100px x-small"
									id="selGsnPoint">
									<option value="0">선택
										<!-- 선택 --></option>
								</select>
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="gs_card_pwd">비밀번호<!-- 비밀번호 --></label>
							</p>

							<div class="sh-input">
								<input type="text" id="gs_card_pwd"
									title="GS&amp;POINT 카드 비밀번호 입력"
									class="input-text w100px x-small pwnew" maxlength="15">
							</div>
						</div>
					</div>
				</div>

				<div class="box-border v1 use-guide">
					<p class="tit">
						이용안내
						<!-- 이용안내 -->
					</p>

					<ul class="dot-list gray">
						<li>장당 2,000포인트 차감 할인(1일 최대 8매)<!-- 장당 2,000포인트 차감 할인(1일 최대 8매) --></li>
						<li>우대, 문화의날 및 특별콘텐트 이용불가<!-- 우대, 문화의날 및 특별콘텐트 이용불가 --></li>
					</ul>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer"
					id="btn_close_gsnp">
					닫기
					<!-- 닫기 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_cancel_apply_gsnp" style="display: none;">
					적용취소
					<!-- 적용취소 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_apply_gsnp">
					적용
					<!-- 적용 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close"
				id="btn_close_modal_gsnp">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>
	<!--// 레이어 : GS&POINT -->
	<!--// 레이어 : GS&POINT -->

	<!-- 레이어 : 현대오일뱅크 -->

	<!-- 레이어 : 현대오일뱅크 -->
	<input type="hidden" id="hyOilCardNum_hid">
	<section id="layer_oilbank" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					현대오일뱅크
					<!-- 현대오일뱅크 -->
				</h3>
			</header>

			<div class="layer-con">
				<div class="reset">
					현대오일뱅크 카드 정보를 입력해주세요.
					<!-- 현대오일뱅크 카드 정보를 입력해주세요. -->
				</div>

				<div class="popup-gray mid-info-box">
					<div class="pop-search-area">
						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="ho_card_num">카드번호<!-- 카드번호 --></label>
							</p>

							<div class="sh-input">
								<input type="text" title="현대오일뱅크 카드번호 입력"
									class="input-text w180px x-small" id="hyOilCardNum"
									maxlength="20">

								<button type="button" class="button gray x-small ml05"
									id="btn_select_hyoil">
									포인트 조회
									<!-- 포인트 조회 -->
								</button>
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								사용가능 한포인트
								<!-- 사용가능 한포인트 -->
							</p>

							<div class="sh-input">
								<em class="font-gblue" id="hyOilUseAbleAmt">0</em> 점
								<!-- 점 -->
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								적용 매수 선택
								<!-- 적용 매수 선택 -->
							</p>

							<div class="sh-input">
								<select title="현대오일뱅크 포인트 적용 매수 선택" class="w100px x-small"
									id="selHyOil">
									<option value="0">선택
										<!-- 선택 --></option>
								</select>
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="ho_card_pwd">비밀번호<!-- 비밀번호 --></label>
							</p>

							<div class="sh-input">
								<input type="text" id="ho_card_pwd" title="현대오일뱅크 카드 비밀번호 입력"
									class="input-text w100px x-small pwnew">
							</div>
						</div>
					</div>
				</div>

				<div class="box-border v1 use-guide">
					<p class="tit">
						이용안내
						<!-- 이용안내 -->
					</p>

					<ul class="dot-list gray">
						<li>장당 2,000포인트 차감 할인(1일 최대 4매)<!-- 장당 2,000포인트 차감 할인(1일 최대 4매) --></li>
						<li>우대, 문화의날 및 특별콘텐트 이용불가<!-- 우대, 문화의날 및 특별콘텐트 이용불가 --></li>
					</ul>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer"
					id="btn_close_hyoil">
					닫기
					<!-- 닫기 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_cancel_apply_hyoil" style="display: none;">
					적용취소
					<!-- 적용취소 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_apply_hyoil">
					적용
					<!-- 적용 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close"
				id="btn_close_modal_hyoil">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>
	<!--// 레이어 : 현대오일뱅크 -->
	<!--// 레이어 : 현대오일뱅크 -->

	<!-- 레이어 : 해피포인트 -->

	<!-- 레이어 : 해피포인트 -->
	<input type="hidden" id="happPointCardNum_hid">
	<section id="layer_happypoint" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					해피포인트
					<!-- 해피포인트 -->
				</h3>
			</header>

			<div class="layer-con">
				<div class="reset">
					해피포인트 카드 정보를 입력해주세요.
					<!-- 해피포인트 카드 정보를 입력해주세요. -->
				</div>

				<div class="popup-gray mid-info-box">
					<div class="pop-search-area">
						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="happy_card_num">카드번호<!-- 카드번호 --></label>
							</p>

							<div class="sh-input">
								<input type="text" title="해피포인트 카드번호 입력"
									class="input-text w180px x-small" id="happPointCardNum"
									maxlength="20">

								<button type="button" class="button gray x-small ml05"
									id="btn_select_happ">
									포인트 조회
									<!-- 포인트 조회 -->
								</button>
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								사용가능 한포인트
								<!-- 사용가능 한포인트 -->
							</p>

							<div class="sh-input">
								<em class="font-gblue" id="happUseAbleAmt">0</em> 점
								<!-- 점 -->
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								적용 매수 선택
								<!-- 적용 매수 선택 -->
							</p>

							<div class="sh-input">
								<select title="해피포인트 포인트 적용 매수 선택" class="w100px x-small"
									id="selHappPoint">
									<option value="0">선택
										<!-- 선택 --></option>
								</select>
							</div>
						</div>
					</div>
				</div>

				<div class="box-border v1 use-guide mt15">
					<p class="tit">
						이용안내
						<!-- 이용안내 -->
					</p>

					<ul class="dot-list gray">
						<li>장당 2,000포인트 차감 할인<!-- 장당 2,000포인트 차감 할인 --></li>
						<li>우대, 문화의날 및 특별콘텐트 이용불가<!-- 우대, 문화의날 및 특별콘텐트 이용불가 --></li>
					</ul>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer"
					id="btn_close_happ">
					닫기
					<!-- 닫기 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_cancel_apply_happ" style="display: none;">
					적용취소
					<!-- 적용취소 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_apply_happ">
					적용
					<!-- 적용 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close"
				id="btn_close_modal_happ">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>
	<!--// 레이어 : 해피포인트 -->
	<!--// 레이어 : 해피포인트 -->

	<!-- 레이어 : 블루멤버스 포인트 -->
	<!-- 레이어 : 블루멤버스 포인트 -->
	<input type="hidden" id="hbPointCardNum_hid">
	<section id="layer_bluemembers" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					블루멤버스 포인트
					<!-- 블루멤버스 포인트 -->
				</h3>
			</header>

			<div class="layer-con">
				<div class="reset">
					블루멤버스 포인트 카드 정보를 입력해주세요.
					<!-- 블루멤버스 포인트 카드 정보를 입력해주세요. -->
				</div>

				<div class="popup-gray mid-info-box">
					<div class="pop-search-area">
						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="bluemembers_card_num">카드번호<!-- 카드번호 --></label>
							</p>

							<div class="sh-input">
								<input type="text" title="블루멤버스 포인트 카드번호 입력"
									class="input-text w180px x-small" id="hbPointCardNum"
									maxlength="20">

								<button type="button" class="button gray x-small ml05"
									id="btn_select_hbluep">
									포인트 조회
									<!-- 포인트 조회 -->
								</button>
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								사용가능 한포인트
								<!-- 사용가능 한포인트 -->
							</p>

							<div class="sh-input">
								<em class="font-gblue" id="hbPointUseAbleAmt">0</em> 점
								<!-- 점 -->
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								적용 매수 선택
								<!-- 적용 매수 선택 -->
							</p>

							<div class="sh-input">
								<select title="블루멤버스 적용 매수 선택" class="w100px x-small"
									id="selHbPoint">
									<option value="0">선택
										<!-- 선택 --></option>
								</select>
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="bluemembers_card_pwd">비밀번호<!-- 비밀번호 --></label>
							</p>

							<div class="sh-input">
								<input type="text" id="bluemembers_card_pwd"
									title="블루멤버스 포인트 카드 비밀번호 입력"
									class="input-text w120px x-small pwnew">
							</div>
						</div>
					</div>
				</div>

				<div class="box-border v1 use-guide mt15">
					<p class="tit">
						이용안내
						<!-- 이용안내 -->
					</p>

					<ul class="dot-list gray">
						<li>장당 4,000포인트 차감 할인(1일 최대 8매)<!-- 장당 4,000포인트 차감 할인(1일 최대 8매) --></li>
						<li>우대, 문화의날 및 특별콘텐트 이용불가<!-- 우대, 문화의날 및 특별콘텐트 이용불가 --></li>
					</ul>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer"
					id="btn_close_hbluep">
					닫기
					<!-- 닫기 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_cancel_apply_hbluep" style="display: none;">
					적용취소
					<!-- 적용취소 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_apply_hbluep">
					적용
					<!-- 적용 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close"
				id="btn_close_modal_hbluep">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>
	<!--// 레이어 : 블루멤버스 포인트 -->

	<!--// 레이어 : 블루멤버스 포인트 -->

	<!-- 레이어 : 중앙멤버십 -->
	<!-- 레이어 : 중앙멤버십 -->
	<input type="hidden" id="joongangCardNum_hid">
	<section id="layer_jmembership" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					중앙멤버십
					<!-- 중앙멤버십 -->
				</h3>
			</header>

			<div class="layer-con">
				<div class="reset">
					멤버십카드 정보를 입력해주세요.
					<!-- 멤버십카드 정보를 입력해주세요. -->
				</div>

				<div class="popup-gray mid-info-box mb15">
					<div class="pop-search-area">
						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="jmembership_card_num">카드번호<!-- 카드번호 --></label>
							</p>

							<div class="sh-input">
								<input type="text" title="중앙멤버십 카드번호 입력"
									class="input-text w200px x-small" maxlength="20"
									id="joongangCardNum">
							</div>

							<div class="sh-btn gray">
								<button type="button" class="button x-small gray"
									id="btn_select_joongang">
									조회
									<!-- 조회 -->
								</button>
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								사용여부
								<!-- 사용여부 -->
							</p>
							<span class="font-green" id="joongangUseAbleText"></span>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								사용가능금액
								<!-- 사용가능금액 -->
							</p>
							<span class="font-green" id="joongangUseAbleAmt">0</span> 점
							<!-- 점 -->
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset vt">
								<label for="hyundai_m_point_card_ticket_counting">적용 매수
									선택</label>
							</p>
							<div class="sh-input mr0">

								<select title="중앙멤버십 선택" class="w120px v1 x-small"
									id="selJoongang">
									<option value="0">선택
										<!-- 선택 --></option>
								</select>
							</div>
						</div>
					</div>
				</div>

				<div class="box-border v1">
					<p class="tit">
						이용안내
						<!-- 이용안내 -->
					</p>

					<ul class="dot-list gray">
						<li>장당 1,000원 할인(연 24회)<!-- 장당 1,000원 할인(연 24회) --></li>
						<li>우대/문화의날 및 특별콘텐트 이용불가<!-- 우대/문화의날 및 특별콘텐트 이용불가 --></li>
					</ul>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer"
					id="btn_close_joongang">
					닫기
					<!-- 닫기 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_cancel_apply_joongang" style="display: none;">
					적용취소
					<!-- 적용취소 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_apply_joongang">
					적용
					<!-- 적용 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close"
				id="btn_close_modal_joongang">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>
	<!--// 레이어 : 중앙멤버십 -->

	<!--// 레이어 : 중앙멤버십 -->

	<!-- 레이어 : 중앙패밀리포인트 -->

	<input type="hidden" id="jfamilyTicketCnt" name="jfamilyTicketCnt">
	<!-- 레이어 : 중앙 패밀리 포인트 -->
	<section id="layer_jfpoint" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					중앙패밀리 포인트
					<!-- 중앙멤버십 포인트 -->
				</h3>
			</header>

			<div class="layer-con">
				<div class="reset">
					회원님께서 보유하고 있는 포인트를 조회 및 적용하는 페이지입니다.
					<!-- 회원님께서 보유하고 있는 포인트를 조회 및 적용하는 페이지입니다. -->
				</div>

				<div class="popup-gray mid-info-box">
					<div class="pop-search-area">
						<div class="pop-search-area-line" style="display: none">
							<p class="sh-txt reset">
								사용가능한 포인트
								<!-- 사용가능한 포인트 -->
							</p>

							<div class="sh-input">
								<button type="button" class="button gray x-small"
									id="btn_select_jfamily">
									조회
									<!-- 조회 -->
								</button>
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								사용가능한 포인트
								<!-- 사용가능 한포인트 -->
							</p>

							<div class="sh-input">
								<em id="jfamilyUseAbleAmt" class="font-gblue">0</em> Point
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="before_sale_card_date">적용 매수 선택<!-- 적용 매수 선택 --></label>
							</p>

							<div class="sh-input">
								<div class="dropdown bootstrap-select x-small bs3">
									<select title="중앙 패밀리 포인트 매수 선택" class="selectpicker x-small"
										id="selJfamily" tabindex="-98"><option
											class="bs-title-option" value=""></option>
										<option>선택
											<!-- 선택 --></option>
									</select>
									<button type="button"
										class="btn dropdown-toggle btn-default bs-placeholder"
										data-toggle="dropdown" role="button" data-id="selJfamily"
										title="중앙 패밀리 포인트 매수 선택">
										<div class="filter-option">
											<div class="filter-option-inner">
												<div class="filter-option-inner-inner">중앙 패밀리 포인트 매수
													선택</div>
											</div>
										</div>
										<span class="bs-caret"><span class="caret"></span></span>
									</button>
									<div class="dropdown-menu open" role="combobox">
										<div class="inner open" role="listbox" aria-expanded="false"
											tabindex="-1">
											<ul class="dropdown-menu inner "></ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer">
					닫기
					<!-- 닫기 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_cancel_apply_jfamily" style="display: none;">
					적용취소
					<!-- 적용취소 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_apply_jfamily">
					적용
					<!-- 적용 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>
	<!--// 레이어 : 중앙 패밀리 포인트 -->

	<!--// 레이어 : 중앙패밀리포인트 -->

	<!-- 레이어 : ok 캐쉬백 -->

	<!-- 레이어 : ok 캐쉬백 -->
	<input type="hidden" id="okCashbagCardNum_hid">
	<section id="layer_okcashbag" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					OK 캐쉬백
					<!-- OK 캐쉬백 -->
				</h3>
			</header>

			<div class="layer-con">

				<div class="reset">
					OK 캐쉬백 카드 정보를 입력해주세요.
					<!-- OK 캐쉬백 카드 정보를 입력해주세요. -->
				</div>

				<div class="popup-gray mid-info-box mb10">
					<div class="pop-search-area line-wid">
						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="okCashbagCardNum">카드번호 <!-- 카드번호 --></label>
							</p>

							<div class="sh-input">
								<input type="text" id="okCashbagCardNum" title="OK 캐쉬백 카드번호 입력"
									class="input-text w200px x-small" maxlength="20">
								<!-- OK 캐쉬백 카드번호 입력 -->
							</div>

							<div class="sh-btn">
								<button type="button" class="button x-small gray"
									id="btn_select_okcb">
									조회
									<!-- 조회 -->
								</button>
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								사용가능한 포인트
								<!-- 사용가능한 포인트 -->
							</p>
							<span class="font-green" id="spn_okcb_useable_amt">0</span> Point
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="okcashbagUsePoint">사용할 포인트 <!-- 사용할 포인트 --></label>
							</p>
							<input type="text" id="okcashbagUsePoint"
								title="사용할 ok 캐쉬백 포인트 입력" class="input-text w120px mr05 x-small"
								maxlength="10"> Point
							<!-- 사용할 ok 캐쉬백 포인트 입력 -->
							<input type="hidden" id="okcashbagPreUsePoint">

							<div class="sh-btn ml05">
								<button type="button" class="button gray-line x-small"
									id="btn_all_use_okcb">
									모두사용
									<!-- 모두사용 -->
								</button>
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="okcashbagUsePwd">비밀번호 <!-- 비밀번호 --></label>
							</p>
							<input type="text" id="okcashbagUsePwd" title=""
								class="input-text w120px x-small pwnew" maxlength="15">
							<!-- ok 캐쉬백 카드 비밀번호 입력 -->
						</div>

					</div>
				</div>

				<div class="a-r mb20">
					<input type="checkbox" id="okcashbag_save_back"> <label
						for="okcashbag_save_back">동일 카드로 적립 <!-- 동일 카드로 적립 --></label>
				</div>

				<div class="box-border v1 use-guide mt10">
					<p class="tit">
						이용안내
						<!-- 이용안내 -->
					</p>

					<ul class="dot-list gray">
						<li><b>OK캐쉬백 사용없이 적립만 진행할 경우 예매완료 후 상영일까지 ‘MY &gt; 예매내역’
								에서 추후적립 하실 수 있습니다.</b> <!-- OK캐쉬백 사용없이 적립만 진행할 경우 예매완료 후 상영일까지 ‘MY > 예매내역’에서 추후적립 하실 수 있습니다. --></li>
						<li>OK캐쉬백 1,000점 이상 보유 시 100점 단위로 사용가능 <!-- OK캐쉬백 1,000점 이상 보유 시 100점 단위로 사용가능 --></li>
						<li>OK캐쉬백 적립 : 최종 결제금액의 2% 적립 <!-- OK캐쉬백 적립 : 최종 결제금액의 2% 적립 --></li>
						<li>고객님의 안전한 포인트 사용을 위하여 온라인 비밀번호로 변경하셔야 합니다. <br>(숫자,
							문자, 특수문자 조합 6~16자리) <!-- 고객님의 안전한 포인트 사용을 위하여 온라인 비밀번호로 변경하셔야 합니다. <br />(숫자, 문자, 특수문자 조합 6~16자리) --></li>
					</ul>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer"
					id="btn_close_okcb">
					닫기
					<!-- 닫기 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_cancel_apply_okcb" style="display: none;">
					적용취소
					<!-- 적용취소 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_apply_okcb">
					적용
					<!-- 적용 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close"
				id="btn_close_modal_okcb">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>
	<!--// 레이어 : ok 캐쉬백 -->




	<!--// 레이어 : ok 캐쉬백 -->

	<!-- 레이어 : 리아결제 -->

	<!-- 레이어  : 리아 결제 -->
	<section id="layer_ria" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					신용/체크 카드
					<!-- 신용/체크 카드 -->
				</h3>
			</header>

			<div class="layer-con">
				<div class="pop-tit pb30">
					<button type="button" class="button small right mr125"
						id="btn_teller_init">
						<i class="iconset ico-reset-small"></i>새로입력
						<!-- 새로입력 -->
					</button>
					<button type="button" class="button small right"
						id="btn_teller_Card_Info">
						카드정보 불러오기
						<!-- 카드정보 불러오기 -->
					</button>
				</div>

				<div class="popup-gray mid-info-box">
					<div class="pop-search-area">
						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="ria_card_num">카드번호 <!-- 카드번호 --></label>
							</p>

							<div class="sh-input">
								<input type="text" id="tellerCardNum_1"
									title="체크/신용카드 카드번호 첫번째자리 입력" class="input-text x-small w60px"
									maxlength="4">
								<!-- 체크/신용카드 카드번호 첫번째자리 입력 -->
								- <input type="text" id="tellerCardNum_2"
									title="체크/신용카드 카드번호 두번째자리 입력" class="input-text w60px x-small "
									maxlength="4">
								<!-- 체크/신용카드 카드번호 두번째자리 입력 -->
								- <input type="number" id="tellerCardNum_3"
									title="체크/신용카드 카드번호 세번째자리 입력"
									class="input-text w60px x-small pwnew" maxlength="4"
									oninput="gfn_numberMaxLength(this);">
								<!-- 체크/신용카드 카드번호 세번째자리 입력 -->
								- <input type="text" id="tellerCardNum_4"
									title="체크/신용카드 카드번호 네번째자리 입력" class="input-text w60px x-small "
									maxlength="4">
								<!-- 체크/신용카드 카드번호 네번째자리 입력 -->
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="teller_card_mm">유효기간 <!-- 유효기간 --></label>
							</p>

							<div class="sh-input">
								<input type="text" id="teller_card_mm" title="체크/신용카드 유효기간 월 입력"
									placeholder="MM" class="input-text w60px  x-small a-c"
									maxlength="2">
								<!-- 체크/신용카드 유효기간 월 입력 -->
								/ <input type="text" id="teller_card_yy"
									title="체크/신용카드 유효기간 년 입력" placeholder="YY"
									class="input-text w60px x-small a-c" maxlength="2">
								<!-- 체크/신용카드 유효기간 년 입력 -->
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="teller_card_password">비밀번호 <!-- 비밀번호 --></label>
							</p>

							<div class="sh-input">
								<input type="text" id="teller_card_password"
									title="체크/신용카드 비밀번호 앞 2자리 입력"
									class="input-text w130px x-small pwnew" maxlength="2">
								<!-- 체크/신용카드 비밀번호 앞 2자리 입력 -->
								<span class="font-size-13 font-gray ml05">앞 2자리</span>
								<!-- 앞 2자리 -->
							</div>
						</div>

						<div class="pop-search-area-line gray">
							<p class="sh-txt reset vt">
								<label for="teller_card_birthday">생년월일 <!-- 생년월일 --></label>
							</p>
							<div class="sh-input mr0">
								<input type="text" id="teller_card_birthday"
									title="체크/신용카드 생년월일 입력" class="input-text w130px x-small pwnew"
									maxlength="10">
								<!-- 체크/신용카드 생년월일 입력 -->

								<p class="reset inline-block font-size-13 ml05 font-gray">
									생년월일 6자리(카드소유자) / 사업자번호 10자리
									<!-- 생년월일 6자리(카드소유자) / 사업자번호 10자리 -->
								</p>
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="teller_install">할부 <!-- 할부 --></label>
							</p>

							<div class="sh-input">
								<select name="" id="teller_install" class="small w130px">
									<option value="00">일시불
										<!-- 일시불 --></option>





									<option value="02">2 개월
										<!-- 개월 --></option>





									<option value="03">3 개월
										<!-- 개월 --></option>





									<option value="04">4 개월
										<!-- 개월 --></option>





									<option value="05">5 개월
										<!-- 개월 --></option>





									<option value="06">6 개월
										<!-- 개월 --></option>





									<option value="07">7 개월
										<!-- 개월 --></option>





									<option value="08">8 개월
										<!-- 개월 --></option>





									<option value="09">9 개월
										<!-- 개월 --></option>





									<option value="10">10 개월
										<!-- 개월 --></option>





									<option value="11">11 개월
										<!-- 개월 --></option>





									<option value="12">12 개월
										<!-- 개월 --></option>

								</select>
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="ria_select">수수료 적용 <!-- 수수료 적용 --></label>
							</p>

							<div class="sh-input">
								<input type="checkbox" id="chk_teller_fee"> <label
									for="chk_teller_fee">수수료 함께 결제시 체크해주세요 <!-- 수수료 함께 결제시 체크해주세요 --></label>
							</div>
						</div>
					</div>
				</div>

				<div class="ria-finish-box">
					<span class="left">최종결제금액 <!-- 최종결제금액 --></span> <span
						class="right"><b>&nbsp;</b> <em>원 <!-- 원 --></em></span>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer"
					id="btn_cancel_teller_booking">
					취소
					<!-- 취소 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_teller_booking">
					결제
					<!-- 결제 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>

	<!--// 레이어 : 리아결제 -->

	<!-- 레이어 : 현금영수증 -->

	<!-- 레이어 : 현금영수증 -->
	<section id="layer_cash_bill" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					현금영수증 발급
					<!-- 현금영수증 발급 -->
				</h3>
			</header>

			<div class="layer-con">
				<div class="pop-tit">
					현금영수증 발행을 위해 아래 정보를 입력해 주세요.
					<!-- 현금영수증 발행을 위해 아래 정보를 입력해 주세요. -->
				</div>

				<div class="popup-gray mid-info-box mb15">
					<div class="pop-search-area line-sht">
						<div class="pop-search-area-line ">
							<p class="sh-txt reset">
								금액
								<!-- 금액 -->
							</p>
							<strong id="cashBillAmt">12,000</strong>원
							<!-- 원 -->
						</div>

						<div class="pop-search-area-line longline">
							<p class="sh-txt reset">
								거래구분
								<!-- 거래구분 -->
							</p>

							<div class="sh-input">
								<div>
									<span> <input type="radio" id="radio_cash_bill01"
										name="bizmDivCd" checked="checked" value="PERSON"> <label
										for="radio_cash_bill01">개인소득공제용 <!-- 개인소득공제용 --></label>
									</span> <span class="ml20"> <input type="radio"
										id="radio_cash_bill02" name="bizmDivCd" value="BIZM">
										<label for="radio_cash_bill02">사업자증빙용 <!-- 사업자증빙용 --></label>
									</span>
								</div>

								<div class="mt05">

									<!-- 개인소득공제용 선택되었을때 -->
									<input type="text" title="휴대폰 번호 입력" class="input-text w200px"
										maxlength="20" id="cashBillPhoneNo" name="cashBillPhoneNo">
									<!-- 휴대폰 번호 입력 -->
									<span class="ml10">휴대폰 번호를 입력해 주세요. <!-- 휴대폰 번호를 입력해 주세요. --></span>

									<!--사업자증빙용 선택되었을때 -->
									<!--
									<input type="text" title="사업자 번호 입력" class="input-text w200px">
									<span class="ml10">사업자 번호를 입력해 주세요.</span>
									 -->
									<!-- //사업자증빙용 선택되었을때 -->
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer"
					id="btn_bill_close">
					자진발급
					<!-- 자진발급 -->
				</button>
				<button type="button" class="button small purple close-layer"
					id="btn_bill_print">
					즉시발급
					<!-- 즉시발급 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close"
				id="btn_bill_layer_close">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>
	<!--// 레이어 : 현금영수증 -->


	<!--// 레이어 : 현금영수증 -->

	<!-- 레이어 : 즉시할인 -->

	<input type="hidden" name="preDiscUseAbleAmt" id="preDiscUseAbleAmt"
		value="0">
	<!-- 레이어  : 선 할인카드 -->
	<section id="layer_before_sale" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					즉시할인카드
					<!-- 즉시할인카드 -->
				</h3>
			</header>

			<div class="layer-con">
				<div class="pop-tit">
					카드정보 입력 후 [조회] 버튼을 눌러 최종 결제금액을 확인해 주세요.
					<!-- 카드정보 입력 후 [조회] 버튼을 눌러 최종 결제금액을 확인해 주세요. -->
				</div>

				<div class="popup-gray mid-info-box">
					<div class="pop-search-area">
						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="before_sale_card_num">카드번호 <!-- 카드번호 --></label>
							</p>

							<div class="sh-input">
								<input type="text" title="즉시할인카드 카드번호 첫번째자리 입력"
									class="input-text x-small w60px" id="preDiscCardNum_1"
									maxlength="4"> -
								<!-- 즉시할인카드 카드번호 첫번째자리 입력 -->
								<input type="text" title="즉시할인카드 카드번호 두번째자리 입력"
									class="input-text w60px x-small " id="preDiscCardNum_2"
									maxlength="4"> -
								<!-- 즉시할인카드 카드번호 두번째자리 입력 -->
								<input type="number" title="즉시할인카드 카드번호 세번째자리 입력"
									class="input-text w60px x-small pwnew" id="preDiscCardNum_3"
									maxlength="4" oninput="gfn_numberMaxLength(this);"> -
								<!-- 즉시할인카드 카드번호 세번째자리 입력 -->
								<input type="text" title="즉시할인카드 카드번호 네번째자리 입력"
									class="input-text w60px x-small " id="preDiscCardNum_4"
									maxlength="4">
								<!-- 즉시할인카드 카드번호 네번째자리 입력 -->
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="before_sale_card_date">카드유효기간 <!-- 카드유효기간 --></label>
							</p>

							<div class="sh-input">
								<input type="text" id="pre_disc_card_mm"
									title="즉시할인카드 유효기간 월 입력" placeholder="MM"
									class="input-text w60px  x-small a-c" maxlength="2"> /
								<!-- 즉시할인카드 유효기간 월 입력 -->
								<input type="text" id="pre_disc_card_yy"
									title="즉시할인카드 유효기간 년 입력 " placeholder="YY"
									class="input-text w60px x-small a-c" maxlength="2">
								<!-- 즉시할인카드 유효기간 년 입력 -->
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="pre_disc_password">비밀번호 <!-- 비밀번호 --></label>
							</p>

							<div class="sh-input">
								<input type="text" id="pre_disc_password"
									title="즉시할인카드 비밀번호 앞 2자리 입력"
									class="input-text w60px x-small pwnew" maxlength="2">
								<!-- 즉시할인카드 비밀번호 앞 2자리 입력 -->
								<span class="font-size-13 font-gray ml05">앞 2자리 <!-- 앞 2자리 --></span>
							</div>
						</div>

						<div class="pop-search-area-line gray">
							<p class="sh-txt reset vt">
								<label for="pre_disc_birthday">생년월일 <!-- 생년월일 --></label>
							</p>
							<div class="sh-input mr0">
								<input type="text" id="pre_disc_birthday"
									title="현대 M포인트 카드 생년월일 입력" class="input-text w80px x-small "
									maxlength="10">

								<p class="reset inline-block font-size-13 ml05 font-gray">
									생년월일 6자리(카드소유자) / 사업자번호 10자리
									<!-- 생년월일 6자리(카드소유자) / 사업자번호 10자리 -->
								</p>
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								최종결제금액
								<!-- 최종결제금액 -->
							</p>

							<div class="sh-input">
								<button type="button" class="button gray x-small"
									id="btn_pre_disc">
									조회
									<!-- 조회 -->
								</button>
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								최종결제금액
								<!-- 최종결제금액 -->
							</p>

							<div class="sh-input" id="pre_disc_all_text"></div>
						</div>
					</div>
				</div>

				<div class="mt10">
					<input type="checkbox" id="chk_pre_disc_agree"> <label
						for="chk_pre_disc_agree">결제대행서비스 약관에 모두 동의 <!-- 결제대행서비스 약관에 모두 동의 --></label>

					<div class="mt10">
						<a
							href="https://www.firstpay.co.kr/jsp/common/agreementPopup.jsp?type=1&amp;langtype=HAN"
							title="전자금융거래 이용약관" target="_blank" class="a-link ml20">전자금융거래
							이용약관 <!-- 전자금융거래 이용약관 --> <i class="iconset ico-arr-right-green"></i>
						</a> <a
							href="https://www.firstpay.co.kr/jsp/common/agreementPopup.jsp?type=3&amp;langtype=HAN"
							title="개인정보의 수집 및 이용안내" target="_blank" class="a-link ml20">개인정보의
							수집 및 이용안내 <!-- 개인정보의 수집 및 이용안내 --> <i
							class="iconset ico-arr-right-green"></i>
						</a> <a
							href="https://www.firstpay.co.kr/jsp/common/agreementPopup.jsp?type=4&amp;langtype=HAN"
							title="개인정보 제공 및 위탁안내" target="_blank" class="a-link ml20">개인정보
							제공 및 위탁안내 <!-- 개인정보 제공 및 위탁안내 --> <i
							class="iconset ico-arr-right-green"></i>
						</a>
					</div>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer">
					닫기
					<!-- 닫기 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_pay_pre_disc">
					결제
					<!-- 결제 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>

	<!--// 레이어 : 즉시할인 -->

	<!-- 레이어 : 구인증 -->

	<!-- 레이어  : 리아 결제 -->
	<section id="layer_favor_credit" class="modal-layer">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit"></h3>
			</header>

			<div class="layer-con">


				<div class="popup-gray mid-info-box">
					<div class="pop-search-area">
						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="ria_card_num">카드번호 <!-- 카드번호 --></label>
							</p>

							<div class="sh-input">
								<input type="text" id="favorCreditCardNum_1"
									title="체크/신용카드 카드번호 첫번째자리 입력" class="input-text x-small w60px"
									maxlength="4">
								<!-- 체크/신용카드 카드번호 첫번째자리 입력 -->
								- <input type="text" id="favorCreditCardNum_2"
									title="체크/신용카드 카드번호 두번째자리 입력" class="input-text w60px x-small "
									maxlength="4">
								<!-- 체크/신용카드 카드번호 두번째자리 입력 -->
								- <input type="text" id="favorCreditCardNum_3"
									title="체크/신용카드 카드번호 세번째자리 입력"
									class="input-text w60px x-small pwnew" maxlength="4"
									oninput="gfn_numberMaxLength(this);">
								<!-- 체크/신용카드 카드번호 세번째자리 입력 -->
								- <input type="text" id="favorCreditCardNum_4"
									title="체크/신용카드 카드번호 네번째자리 입력" class="input-text w60px x-small "
									maxlength="4">
								<!-- 체크/신용카드 카드번호 네번째자리 입력 -->
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="favorCredit_card_mm">유효기간 <!-- 유효기간 --></label>
							</p>

							<div class="sh-input">
								<input type="text" id="favorCredit_card_mm"
									title="체크/신용카드 유효기간 월 입력" placeholder="MM"
									class="input-text w60px  x-small a-c" maxlength="2">
								<!-- 체크/신용카드 유효기간 월 입력 -->
								/ <input type="text" id="favorCredit_card_yy"
									title="체크/신용카드 유효기간 년 입력" placeholder="YY"
									class="input-text w60px x-small a-c" maxlength="2">
								<!-- 체크/신용카드 유효기간 년 입력 -->
							</div>
						</div>

						<div class="pop-search-area-line">
							<p class="sh-txt reset">
								<label for="favorCredit_card_password">비밀번호 <!-- 비밀번호 --></label>
							</p>

							<div class="sh-input">
								<input type="text" id="favorCredit_card_password"
									title="체크/신용카드 비밀번호 앞 2자리 입력"
									class="input-text w130px x-small pwnew" maxlength="2">
								<!-- 체크/신용카드 비밀번호 앞 2자리 입력 -->
								<span class="font-size-13 font-gray ml05">앞 2자리</span>
								<!-- 앞 2자리 -->
							</div>
						</div>

						<div class="pop-search-area-line gray">
							<p class="sh-txt reset vt">
								<label for="favorCredit_card_birthday">생년월일 <!-- 생년월일 --></label>
							</p>
							<div class="sh-input mr0">
								<input type="text" id="favorCredit_card_birthday"
									title="체크/신용카드 생년월일 입력" class="input-text w130px x-small pwnew"
									maxlength="10">
								<!-- 체크/신용카드 생년월일 입력 -->

								<p class="reset inline-block font-size-13 ml05 font-gray">
									생년월일 6자리(카드소유자) / 사업자번호 10자리
									<!-- 생년월일 6자리(카드소유자) / 사업자번호 10자리 -->
								</p>
							</div>
						</div>


					</div>
				</div>




				<div class="ria-pro-box">
					<div class="tp">
						<input type="checkbox" id="checkbox"> <label
							for="checkbox">결제대행서비스 약관에 모두 동의</label>
					</div>
					<ul class="linklist">
						<li><a
							href="https://www.firstpay.co.kr/jsp/common/agreementPopup.jsp?type=1&amp;langtype=HAN"
							title="전자금융거래 이용약관" target="_blank">전자금융거래 이용약관 &gt;</a></li>
						<li><a
							href="https://www.firstpay.co.kr/jsp/common/agreementPopup.jsp?type=3&amp;langtype=HAN"
							title="개인정보의 수집 및 이용안내" target="_blank">개인정보의 수집 및 이용안내 &gt;</a></li>
						<li><a
							href="https://www.firstpay.co.kr/jsp/common/agreementPopup.jsp?type=4&amp;langtype=HAN"
							title="개인정보 제공 및 위탁안내" target="_blank">개인정보 제공 및 위탁안내 &gt;</a></li>
					</ul>
				</div>


			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer"
					id="btn_cancel_favorCredit_booking">
					취소
					<!-- 취소 -->
				</button>
				<button type="button" class="button small purple"
					id="btn_favorCredit_booking">
					결제
					<!-- 결제 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>

	<!--// 레이어 : 구인증 -->

	<!-- 레이어 : 5분연장 -->
	<section id="layer_time_delay" class="modal-layer"
		style="z-index: 4000;">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">
					알림
					<!-- 알림 -->
				</h3>
			</header>

			<div class="layer-con">
				<div class="pop-tit">
					예매가능시간이 1분 남았습니다.<br>연장하시겠습니까? (1회만 가능)
					<!-- 예매가능시간이 1분 남았습니다.<br />
					연장하시겠습니까? (1회만 가능) -->
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button purple" id="delayFiveMin">
					5분연장하기
					<!-- 5분연장하기 -->
				</button>
				<button type="button" class="button close-layer"
					id="delayFiveMinClose">
					취소
					<!-- 취소 -->
				</button>
			</div>

			<button type="button" class="btn-modal-close">
				레이어 닫기
				<!-- 레이어 닫기 -->
			</button>
		</div>
	</section>

	<a href="#layer_cash_bill" w-data="600" h-data="400"
		class="button active btn-modal-open target" id="cash_pop"
		style="display: none;" title="현금영수증">현금영수증<!-- 현금영수증 --></a>
	<a href="#layer_before_sale" w-data="600" h-data="550"
		class="button active btn-modal-open target" id="pre_disc_pop"
		style="display: none;" title="선할인">선할인</a>
	<!--// 레이어 : 5분연장 -->



	<div class="normalStyle"
		style="display: none; position: fixed; top: 0; left: 0; background: #000; opacity: 0.7; text-indent: -9999px; width: 100%; height: 100%; z-index: 100;">닫기</div>
	<div class="alertStyle"
		style="display: none; position: fixed; top: 0px; left: 0px; background: #000; opacity: 0.7; width: 100%; height: 100%; z-index: 5005;"></div>
	<div class="tooltip-layer"
		style="display: block; min-width: 200px; z-index: 501; opacity: 0; pointer-events: none;">
		<div class="wrap" style="min-width: 200px;">
			<div class="tit-area" style="display: none;"></div>
			<div class="cont-area"></div>
		</div>
		<button class="btn-close-tooltip" style="display: none;">툴팁
			닫기</button>
	</div>
	<div class="tipPin"
		style="position: absolute; top: 0px; left: 0px; width: 22px; height: 12px; opacity: 0; z-index: 501;"></div>
	<span class="tempspan4wth"
		style="position: absolute; display: block; font-size: 15px; opacity: 0;"></span>

	<c:import url="../template/footer.jsp"></c:import>

</body>

</html>