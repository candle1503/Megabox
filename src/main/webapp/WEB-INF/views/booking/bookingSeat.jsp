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

	<input type="hidden" id="playSchdlNo" name="playSchdlNo"
		value="2006291372041">
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

													$(this).closest(	'.num-choice').removeClass('on');
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
												<button type="button" class="btn-seat-row" title="A 행"
													style="position: absolute; left: 206px; top: 52px;">A</button>
												<button type="button" title="A1 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 251px; top: 50px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00100101" rownm="A" seatno="1"
													seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="A2"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">1</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="A2 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 271px; top: 50px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00100201" rownm="A" seatno="2"
													seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="A2"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">2</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="A3 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 291px; top: 50px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00100301" rownm="A" seatno="3"
													seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="A2"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">3</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="A4 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 311px; top: 50px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00100401" rownm="A" seatno="4"
													seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="A2"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">4</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="A5 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 331px; top: 50px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00100501" rownm="A" seatno="5"
													seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="A2"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">5</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="A6 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 351px; top: 50px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00100601" rownm="A" seatno="6"
													seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="A2"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">6</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="A7 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 391px; top: 50px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00100801" rownm="A" seatno="7"
													seatchoidircval="0" seatchoigrpno="3" seatchoigrpnm="A3"
													seatchoirowcnt="5" seatchoigrpseq="1" seattocnt="1">
													<span class="num">7</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="A8 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 411px; top: 50px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00100901" rownm="A" seatno="8"
													seatchoidircval="0" seatchoigrpno="3" seatchoigrpnm="A3"
													seatchoirowcnt="5" seatchoigrpseq="2" seattocnt="1">
													<span class="num">8</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="A9 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 431px; top: 50px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00101001" rownm="A" seatno="9"
													seatchoidircval="0" seatchoigrpno="3" seatchoigrpnm="A3"
													seatchoirowcnt="5" seatchoigrpseq="3" seattocnt="1">
													<span class="num">9</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="A10 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 451px; top: 50px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00101101" rownm="A" seatno="10"
													seatchoidircval="0" seatchoigrpno="3" seatchoigrpnm="A3"
													seatchoirowcnt="5" seatchoigrpseq="4" seattocnt="1">
													<span class="num">10</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="A11 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 471px; top: 50px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00101201" rownm="A" seatno="11"
													seatchoidircval="0" seatchoigrpno="3" seatchoigrpnm="A3"
													seatchoirowcnt="5" seatchoigrpseq="5" seattocnt="1">
													<span class="num">11</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="A12 (스탠다드/장애인석)"
													class="jq-tooltip seat-condition standard disabled"
													style="position: absolute; left: 491px; top: 50px; width: 20px;"
													seatclasscd="DISABLED_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00101301" rownm="A" seatno="12"
													seatchoidircval="0" seatchoigrpno="1" seatchoigrpnm="A1"
													seatchoirowcnt="2" seatchoigrpseq="1" seattocnt="1"
													seatnotimsg="해당좌석은 장애인 전용 좌석으로 일반고객은 다른 좌석을 선택하여  주시기 바랍니다.">
													<span class="num">12</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">장애인석</span>
												</button>
												<button type="button" title="A13 (스탠다드/장애인석)"
													class="jq-tooltip seat-condition standard disabled"
													style="position: absolute; left: 511px; top: 50px; width: 20px;"
													seatclasscd="DISABLED_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00101401" rownm="A" seatno="13"
													seatchoidircval="0" seatchoigrpno="1" seatchoigrpnm="A1"
													seatchoirowcnt="2" seatchoigrpseq="2" seattocnt="1"
													seatnotimsg="해당좌석은 장애인 전용 좌석으로 일반고객은 다른 좌석을 선택하여  주시기 바랍니다.">
													<span class="num">13</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">장애인석</span>
												</button>
												<button type="button" class="btn-seat-row" title="B 행"
													style="position: absolute; left: 206px; top: 72px;">B</button>
												<button type="button" title="B1 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 251px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00200101" rownm="B" seatno="1"
													seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="B4"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">1</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B2 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 271px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00200201" rownm="B" seatno="2"
													seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="B4"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">2</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B3 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 291px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00200301" rownm="B" seatno="3"
													seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="B4"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">3</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B4 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 311px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00200401" rownm="B" seatno="4"
													seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="B4"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">4</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B5 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 331px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00200501" rownm="B" seatno="5"
													seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="B4"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">5</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B6 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 351px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00200601" rownm="B" seatno="6"
													seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="B4"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">6</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B7 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 391px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00200801" rownm="B" seatno="7"
													seatchoidircval="0" seatchoigrpno="5" seatchoigrpnm="B5"
													seatchoirowcnt="7" seatchoigrpseq="1" seattocnt="1">
													<span class="num">7</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B8 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 411px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00200901" rownm="B" seatno="8"
													seatchoidircval="0" seatchoigrpno="5" seatchoigrpnm="B5"
													seatchoirowcnt="7" seatchoigrpseq="2" seattocnt="1">
													<span class="num">8</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B9 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 431px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00201001" rownm="B" seatno="9"
													seatchoidircval="0" seatchoigrpno="5" seatchoigrpnm="B5"
													seatchoirowcnt="7" seatchoigrpseq="3" seattocnt="1">
													<span class="num">9</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B10 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 451px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00201101" rownm="B" seatno="10"
													seatchoidircval="0" seatchoigrpno="5" seatchoigrpnm="B5"
													seatchoirowcnt="7" seatchoigrpseq="4" seattocnt="1">
													<span class="num">10</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B11 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 471px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00201201" rownm="B" seatno="11"
													seatchoidircval="0" seatchoigrpno="5" seatchoigrpnm="B5"
													seatchoirowcnt="7" seatchoigrpseq="5" seattocnt="1">
													<span class="num">11</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B12 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 491px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00201301" rownm="B" seatno="12"
													seatchoidircval="0" seatchoigrpno="5" seatchoigrpnm="B5"
													seatchoirowcnt="7" seatchoigrpseq="6" seattocnt="1">
													<span class="num">12</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B13 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 511px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00201401" rownm="B" seatno="13"
													seatchoidircval="0" seatchoigrpno="5" seatchoigrpnm="B5"
													seatchoirowcnt="7" seatchoigrpseq="7" seattocnt="1">
													<span class="num">13</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" class="btn-seat-row" title="C 행"
													style="position: absolute; left: 206px; top: 92px;">C</button>
												<button type="button" title="C1 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 251px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00300101" rownm="C" seatno="1"
													seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="C6"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">1</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C2 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 271px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00300201" rownm="C" seatno="2"
													seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="C6"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">2</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C3 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 291px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00300301" rownm="C" seatno="3"
													seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="C6"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">3</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C4 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 311px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00300401" rownm="C" seatno="4"
													seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="C6"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">4</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C5 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 331px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00300501" rownm="C" seatno="5"
													seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="C6"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">5</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C6 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 351px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00300601" rownm="C" seatno="6"
													seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="C6"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">6</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C7 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 391px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00300801" rownm="C" seatno="7"
													seatchoidircval="0" seatchoigrpno="7" seatchoigrpnm="C7"
													seatchoirowcnt="7" seatchoigrpseq="1" seattocnt="1">
													<span class="num">7</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C8 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 411px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00300901" rownm="C" seatno="8"
													seatchoidircval="0" seatchoigrpno="7" seatchoigrpnm="C7"
													seatchoirowcnt="7" seatchoigrpseq="2" seattocnt="1">
													<span class="num">8</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C9 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 431px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00301001" rownm="C" seatno="9"
													seatchoidircval="0" seatchoigrpno="7" seatchoigrpnm="C7"
													seatchoirowcnt="7" seatchoigrpseq="3" seattocnt="1">
													<span class="num">9</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C10 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 451px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00301101" rownm="C" seatno="10"
													seatchoidircval="0" seatchoigrpno="7" seatchoigrpnm="C7"
													seatchoirowcnt="7" seatchoigrpseq="4" seattocnt="1">
													<span class="num">10</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C11 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 471px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00301201" rownm="C" seatno="11"
													seatchoidircval="0" seatchoigrpno="7" seatchoigrpnm="C7"
													seatchoirowcnt="7" seatchoigrpseq="5" seattocnt="1">
													<span class="num">11</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C12 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 491px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00301301" rownm="C" seatno="12"
													seatchoidircval="0" seatchoigrpno="7" seatchoigrpnm="C7"
													seatchoirowcnt="7" seatchoigrpseq="6" seattocnt="1">
													<span class="num">12</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C13 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 511px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00301401" rownm="C" seatno="13"
													seatchoidircval="0" seatchoigrpno="7" seatchoigrpnm="C7"
													seatchoirowcnt="7" seatchoigrpseq="7" seattocnt="1">
													<span class="num">13</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" class="btn-seat-row" title="D 행"
													style="position: absolute; left: 206px; top: 112px;">D</button>
												<button type="button" title="D1 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 251px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00400101" rownm="D" seatno="1"
													seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="D8"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">1</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D2 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 271px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00400201" rownm="D" seatno="2"
													seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="D8"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">2</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D3 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 291px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00400301" rownm="D" seatno="3"
													seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="D8"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">3</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D4 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 311px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00400401" rownm="D" seatno="4"
													seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="D8"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">4</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D5 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 331px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00400501" rownm="D" seatno="5"
													seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="D8"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">5</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D6 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 351px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00400601" rownm="D" seatno="6"
													seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="D8"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">6</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D7 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 391px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00400801" rownm="D" seatno="7"
													seatchoidircval="0" seatchoigrpno="9" seatchoigrpnm="D9"
													seatchoirowcnt="7" seatchoigrpseq="1" seattocnt="1">
													<span class="num">7</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D8 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 411px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00400901" rownm="D" seatno="8"
													seatchoidircval="0" seatchoigrpno="9" seatchoigrpnm="D9"
													seatchoirowcnt="7" seatchoigrpseq="2" seattocnt="1">
													<span class="num">8</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D9 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 431px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00401001" rownm="D" seatno="9"
													seatchoidircval="0" seatchoigrpno="9" seatchoigrpnm="D9"
													seatchoirowcnt="7" seatchoigrpseq="3" seattocnt="1">
													<span class="num">9</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D10 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 451px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00401101" rownm="D" seatno="10"
													seatchoidircval="0" seatchoigrpno="9" seatchoigrpnm="D9"
													seatchoirowcnt="7" seatchoigrpseq="4" seattocnt="1">
													<span class="num">10</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D11 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 471px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00401201" rownm="D" seatno="11"
													seatchoidircval="0" seatchoigrpno="9" seatchoigrpnm="D9"
													seatchoirowcnt="7" seatchoigrpseq="5" seattocnt="1">
													<span class="num">11</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D12 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 491px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00401301" rownm="D" seatno="12"
													seatchoidircval="0" seatchoigrpno="9" seatchoigrpnm="D9"
													seatchoirowcnt="7" seatchoigrpseq="6" seattocnt="1">
													<span class="num">12</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D13 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 511px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00401401" rownm="D" seatno="13"
													seatchoidircval="0" seatchoigrpno="9" seatchoigrpnm="D9"
													seatchoirowcnt="7" seatchoigrpseq="7" seattocnt="1">
													<span class="num">13</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" class="btn-seat-row" title="E 행"
													style="position: absolute; left: 206px; top: 132px;">E</button>
												<button type="button" title="E1 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 251px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00500101" rownm="E" seatno="1"
													seatchoidircval="1" seatchoigrpno="10" seatchoigrpnm="E10"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">1</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E2 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 271px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00500201" rownm="E" seatno="2"
													seatchoidircval="1" seatchoigrpno="10" seatchoigrpnm="E10"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">2</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E3 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 291px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00500301" rownm="E" seatno="3"
													seatchoidircval="1" seatchoigrpno="10" seatchoigrpnm="E10"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">3</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E4 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 311px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00500401" rownm="E" seatno="4"
													seatchoidircval="1" seatchoigrpno="10" seatchoigrpnm="E10"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">4</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E5 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 331px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00500501" rownm="E" seatno="5"
													seatchoidircval="1" seatchoigrpno="10" seatchoigrpnm="E10"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">5</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E6 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 351px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00500601" rownm="E" seatno="6"
													seatchoidircval="1" seatchoigrpno="10" seatchoigrpnm="E10"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">6</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E7 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 391px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00500801" rownm="E" seatno="7"
													seatchoidircval="0" seatchoigrpno="11" seatchoigrpnm="E11"
													seatchoirowcnt="7" seatchoigrpseq="1" seattocnt="1">
													<span class="num">7</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E8 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 411px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00500901" rownm="E" seatno="8"
													seatchoidircval="0" seatchoigrpno="11" seatchoigrpnm="E11"
													seatchoirowcnt="7" seatchoigrpseq="2" seattocnt="1">
													<span class="num">8</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E9 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 431px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00501001" rownm="E" seatno="9"
													seatchoidircval="0" seatchoigrpno="11" seatchoigrpnm="E11"
													seatchoirowcnt="7" seatchoigrpseq="3" seattocnt="1">
													<span class="num">9</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E10 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 451px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00501101" rownm="E" seatno="10"
													seatchoidircval="0" seatchoigrpno="11" seatchoigrpnm="E11"
													seatchoirowcnt="7" seatchoigrpseq="4" seattocnt="1">
													<span class="num">10</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E11 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 471px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00501201" rownm="E" seatno="11"
													seatchoidircval="0" seatchoigrpno="11" seatchoigrpnm="E11"
													seatchoirowcnt="7" seatchoigrpseq="5" seattocnt="1">
													<span class="num">11</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E12 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 491px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00501301" rownm="E" seatno="12"
													seatchoidircval="0" seatchoigrpno="11" seatchoigrpnm="E11"
													seatchoirowcnt="7" seatchoigrpseq="6" seattocnt="1">
													<span class="num">12</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E13 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 511px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00501401" rownm="E" seatno="13"
													seatchoidircval="0" seatchoigrpno="11" seatchoigrpnm="E11"
													seatchoirowcnt="7" seatchoigrpseq="7" seattocnt="1">
													<span class="num">13</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" class="btn-seat-row" title="F 행"
													style="position: absolute; left: 206px; top: 152px;">F</button>
												<button type="button" title="F1 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 251px; top: 150px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00600101" rownm="F" seatno="1"
													seatchoidircval="1" seatchoigrpno="12" seatchoigrpnm="F12"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">1</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F2 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 271px; top: 150px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00600201" rownm="F" seatno="2"
													seatchoidircval="1" seatchoigrpno="12" seatchoigrpnm="F12"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">2</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F3 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 291px; top: 150px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00600301" rownm="F" seatno="3"
													seatchoidircval="1" seatchoigrpno="12" seatchoigrpnm="F12"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">3</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F4 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 311px; top: 150px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00600401" rownm="F" seatno="4"
													seatchoidircval="1" seatchoigrpno="12" seatchoigrpnm="F12"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">4</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F5 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 331px; top: 150px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00600501" rownm="F" seatno="5"
													seatchoidircval="1" seatchoigrpno="12" seatchoigrpnm="F12"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">5</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F6 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 351px; top: 150px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00600601" rownm="F" seatno="6"
													seatchoidircval="1" seatchoigrpno="12" seatchoigrpnm="F12"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">6</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F7 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 391px; top: 150px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00600801" rownm="F" seatno="7"
													seatchoidircval="0" seatchoigrpno="13" seatchoigrpnm="F13"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">7</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F8 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 411px; top: 150px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00600901" rownm="F" seatno="8"
													seatchoidircval="0" seatchoigrpno="13" seatchoigrpnm="F13"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">8</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F9 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 431px; top: 150px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00601001" rownm="F" seatno="9"
													seatchoidircval="0" seatchoigrpno="13" seatchoigrpnm="F13"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">9</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F10 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 451px; top: 150px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00601101" rownm="F" seatno="10"
													seatchoidircval="0" seatchoigrpno="13" seatchoigrpnm="F13"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">10</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F11 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 471px; top: 150px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00601201" rownm="F" seatno="11"
													seatchoidircval="0" seatchoigrpno="13" seatchoigrpnm="F13"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">11</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F12 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 491px; top: 150px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00601301" rownm="F" seatno="12"
													seatchoidircval="0" seatchoigrpno="13" seatchoigrpnm="F13"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">12</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" class="btn-seat-row" title="G 행"
													style="position: absolute; left: 206px; top: 172px;">G</button>
												<button type="button" title="G1 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 251px; top: 170px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00700101" rownm="G" seatno="1"
													seatchoidircval="1" seatchoigrpno="14" seatchoigrpnm="G14"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">1</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G2 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 271px; top: 170px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00700201" rownm="G" seatno="2"
													seatchoidircval="1" seatchoigrpno="14" seatchoigrpnm="G14"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">2</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G3 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 291px; top: 170px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00700301" rownm="G" seatno="3"
													seatchoidircval="1" seatchoigrpno="14" seatchoigrpnm="G14"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">3</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G4 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 311px; top: 170px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00700401" rownm="G" seatno="4"
													seatchoidircval="1" seatchoigrpno="14" seatchoigrpnm="G14"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">4</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G5 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 331px; top: 170px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00700501" rownm="G" seatno="5"
													seatchoidircval="1" seatchoigrpno="14" seatchoigrpnm="G14"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">5</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G6 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 351px; top: 170px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00700601" rownm="G" seatno="6"
													seatchoidircval="1" seatchoigrpno="14" seatchoigrpnm="G14"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">6</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G7 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 391px; top: 170px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00700801" rownm="G" seatno="7"
													seatchoidircval="0" seatchoigrpno="15" seatchoigrpnm="G15"
													seatchoirowcnt="5" seatchoigrpseq="1" seattocnt="1">
													<span class="num">7</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G8 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 411px; top: 170px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00700901" rownm="G" seatno="8"
													seatchoidircval="0" seatchoigrpno="15" seatchoigrpnm="G15"
													seatchoirowcnt="5" seatchoigrpseq="2" seattocnt="1">
													<span class="num">8</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G9 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 431px; top: 170px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00701001" rownm="G" seatno="9"
													seatchoidircval="0" seatchoigrpno="15" seatchoigrpnm="G15"
													seatchoirowcnt="5" seatchoigrpseq="3" seattocnt="1">
													<span class="num">9</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G10 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 451px; top: 170px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00701101" rownm="G" seatno="10"
													seatchoidircval="0" seatchoigrpno="15" seatchoigrpnm="G15"
													seatchoirowcnt="5" seatchoigrpseq="4" seattocnt="1">
													<span class="num">10</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G11 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 471px; top: 170px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00701201" rownm="G" seatno="11"
													seatchoidircval="0" seatchoigrpno="15" seatchoigrpnm="G15"
													seatchoirowcnt="5" seatchoigrpseq="5" seattocnt="1">
													<span class="num">11</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" class="btn-seat-row" title="H 행"
													style="position: absolute; left: 206px; top: 192px;">H</button>
												<button type="button" title="H3 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 291px; top: 190px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00800301" rownm="H" seatno="3"
													seatchoidircval="1" seatchoigrpno="16" seatchoigrpnm="H16"
													seatchoirowcnt="4" seatchoigrpseq="1" seattocnt="1">
													<span class="num">3</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="H4 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 311px; top: 190px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00800401" rownm="H" seatno="4"
													seatchoidircval="1" seatchoigrpno="16" seatchoigrpnm="H16"
													seatchoirowcnt="4" seatchoigrpseq="2" seattocnt="1">
													<span class="num">4</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="H5 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 331px; top: 190px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00800501" rownm="H" seatno="5"
													seatchoidircval="1" seatchoigrpno="16" seatchoigrpnm="H16"
													seatchoirowcnt="4" seatchoigrpseq="3" seattocnt="1">
													<span class="num">5</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="H6 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 351px; top: 190px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00800601" rownm="H" seatno="6"
													seatchoidircval="1" seatchoigrpno="16" seatchoigrpnm="H16"
													seatchoirowcnt="4" seatchoigrpseq="4" seattocnt="1">
													<span class="num">6</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="H7 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 391px; top: 190px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00800801" rownm="H" seatno="7"
													seatchoidircval="0" seatchoigrpno="17" seatchoigrpnm="H17"
													seatchoirowcnt="4" seatchoigrpseq="1" seattocnt="1">
													<span class="num">7</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="H8 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 411px; top: 190px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00800901" rownm="H" seatno="8"
													seatchoidircval="0" seatchoigrpno="17" seatchoigrpnm="H17"
													seatchoirowcnt="4" seatchoigrpseq="2" seattocnt="1">
													<span class="num">8</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="H9 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 431px; top: 190px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00801001" rownm="H" seatno="9"
													seatchoidircval="0" seatchoigrpno="17" seatchoigrpnm="H17"
													seatchoirowcnt="4" seatchoigrpseq="3" seattocnt="1">
													<span class="num">9</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="H10 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 451px; top: 190px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00801101" rownm="H" seatno="10"
													seatchoidircval="0" seatchoigrpno="17" seatchoigrpnm="H17"
													seatchoirowcnt="4" seatchoigrpseq="4" seattocnt="1">
													<span class="num">10</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
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
						alert('선택 좌석수(0부터 시작) :' + seatCheckCnt)
						
						if(seatCheckCnt<=cnt){

							var idSeatArray = "seatArray" + seatCheckCnt;
							var idSeatText = $(this).attr('rownm')+$(this).attr('seatno');		

							if(idOn != 'on'){
	
								if(seatCheckCnt<cnt){
								seatCheckCnt = seatCheckCnt+1;
								$(this).addClass('choice');
								$(this).addClass('on');		

								alert($('div.money>em').text())		
								
								$('div.money>em').text(seatCheckCnt * 8000)
														

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