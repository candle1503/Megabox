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
								id="seatMemberCntInit" onclick="location.href='./bookingSeat?timeCode=468' ">
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
											
											
<!-- 											DB에서 seat 테이블에서 booked가 0인것만 가져오기 for each로 -->
													
<%-- 											<c:forEach items="${seatList}" var="seat" varStatus="i"> --%>
<%-- 													<button type="button" title="${seat.seatNum}" --%>
<!-- 													class="jq-tooltip seat-condition standard common" -->
<!-- 													style="position: absolute; left: 251px+i; top: 50px; width: 20px;" -->
<%-- 													 rownm="${seat.seatNum}" seatno="${seat.seatNum}"> --%>
<%-- 													<span class="num">${seat.seatNum}</span> --%>
													
<!-- 													</button> -->
													
<%-- 											</c:forEach> --%>
													
												<c:if test="">
												<button type="button" title="${seatList[0].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 251px; top: 50px; width: 20px;"
													 rownm="${seatList[0].rownm}" seatno="${seatList[0].seatnm}">
													<span class="num">${seatList[0].seatnm}</span>
													
												</button>
												</c:if>											
												<button type="button" title="${seatList[1].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 271px; top: 50px; width: 20px;"
													 rownm="${seatList[1].rownm}" seatno="${seatList[1].seatnm}">
													<span class="num">${seatList[1].seatnm}</span>
												</button>
												<button type="button" title="${seatList[2].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 291px; top: 50px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00100301" rownm="${seatList[2].rownm}" seatno="${seatList[2].seatnm}"
													seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="A2"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">${seatList[2].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[3].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 311px; top: 50px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00100401" rownm="${seatList[0].rownm}" seatno="${seatList[3].seatnm}"
													seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="A2"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">${seatList[3].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[4].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 331px; top: 50px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00100501" rownm="${seatList[0].rownm}" seatno="${seatList[4].seatnm}"
													seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="A2"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">${seatList[4].seatnm}</span>
												</button>
												<button type="button" title="${seatList[5].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 351px; top: 50px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00100601" rownm="${seatList[0].rownm}" seatno="${seatList[5].seatnm}"
													seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="A2"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">${seatList[5].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[6].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 391px; top: 50px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00100801" rownm="${seatList[0].rownm}" seatno="${seatList[6].seatnm}"
													seatchoidircval="0" seatchoigrpno="3" seatchoigrpnm="A3"
													seatchoirowcnt="5" seatchoigrpseq="1" seattocnt="1">
													<span class="num">${seatList[6].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[7].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 411px; top: 50px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00100901" rownm="${seatList[7].rownm}" seatno="${seatList[7].seatnm}"
													seatchoidircval="0" seatchoigrpno="3" seatchoigrpnm="A3"
													seatchoirowcnt="5" seatchoigrpseq="2" seattocnt="1">
													<span class="num">${seatList[7].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[8].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 431px; top: 50px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00101001" rownm="${seatList[8].rownm}" seatno="${seatList[8].seatnm}"
													seatchoidircval="0" seatchoigrpno="3" seatchoigrpnm="A3"
													seatchoirowcnt="5" seatchoigrpseq="3" seattocnt="1">
													<span class="num">${seatList[8].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[9].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 451px; top: 50px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00101101" rownm="${seatList[9].rownm}" seatno="${seatList[9].seatnm}"
													seatchoidircval="0" seatchoigrpno="3" seatchoigrpnm="A3"
													seatchoirowcnt="5" seatchoigrpseq="4" seattocnt="1">
													<span class="num">${seatList[9].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[10].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 471px; top: 50px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00101201" rownm="${seatList[10].rownm}" seatno="${seatList[10].seatnm}"
													seatchoidircval="0" seatchoigrpno="3" seatchoigrpnm="A3"
													seatchoirowcnt="5" seatchoigrpseq="5" seattocnt="1">
													<span class="num">${seatList[10].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[11].seatNum}"
													class="jq-tooltip seat-condition standard disabled"
													style="position: absolute; left: 491px; top: 50px; width: 20px;"
													seatclasscd="DISABLED_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00101301" rownm="${seatList[11].rownm}" seatno="${seatList[11].seatnm}"
													seatchoidircval="0" seatchoigrpno="1" seatchoigrpnm="A1"
													seatchoirowcnt="2" seatchoigrpseq="1" seattocnt="1"
													seatnotimsg="해당좌석은 장애인 전용 좌석으로 일반고객은 다른 좌석을 선택하여  주시기 바랍니다.">
													<span class="num">${seatList[11].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">장애인석</span>
												</button>
												<button type="button" title="${seatList[12].seatNum}"
													class="jq-tooltip seat-condition standard disabled"
													style="position: absolute; left: 511px; top: 50px; width: 20px;"
													seatclasscd="DISABLED_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00101401" rownm="${seatList[12].rownm}" seatno="${seatList[12].seatnm}"
													seatchoidircval="0" seatchoigrpno="1" seatchoigrpnm="A1"
													seatchoirowcnt="2" seatchoigrpseq="2" seattocnt="1"
													seatnotimsg="해당좌석은 장애인 전용 좌석으로 일반고객은 다른 좌석을 선택하여  주시기 바랍니다.">
													<span class="num">${seatList[12].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">장애인석</span>
												</button>
												<button type="button" title="${seatList[13].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 251px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00200101" rownm="${seatList[13].rownm}" seatno="${seatList[13].seatnm}"
													seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="B4"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">${seatList[13].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[14].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 271px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00200201" rownm="${seatList[14].rownm}" seatno="${seatList[14].seatnm}"
													seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="B4"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">${seatList[14].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[15].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 291px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00200301" rownm="${seatList[15].rownm}" seatno="${seatList[15].seatnm}"
													seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="B4"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">${seatList[15].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[16].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 311px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00200401" rownm="${seatList[16].rownm}" seatno="${seatList[16].seatnm}"
													seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="B4"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">${seatList[16].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[17].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 331px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00200501" rownm="${seatList[17].rownm}" seatno="${seatList[17].seatnm}"
													seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="B4"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">${seatList[17].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[18].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 351px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00200601" rownm="${seatList[18].rownm}" seatno="${seatList[18].seatnm}"
													seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="B4"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">${seatList[18].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[19].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 391px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00200801" rownm="${seatList[19].rownm}" seatno="${seatList[19].seatnm}"
													seatchoidircval="0" seatchoigrpno="5" seatchoigrpnm="B5"
													seatchoirowcnt="7" seatchoigrpseq="1" seattocnt="1">
													<span class="num">${seatList[19].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[20].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 411px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00200901" rownm="${seatList[20].rownm}" seatno="${seatList[20].seatnm}"
													seatchoidircval="0" seatchoigrpno="5" seatchoigrpnm="B5"
													seatchoirowcnt="7" seatchoigrpseq="2" seattocnt="1">
													<span class="num">${seatList[20].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[21].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 431px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00201001" rownm="${seatList[21].rownm}" seatno="${seatList[21].seatnm}"
													seatchoidircval="0" seatchoigrpno="5" seatchoigrpnm="B5"
													seatchoirowcnt="7" seatchoigrpseq="3" seattocnt="1">
													<span class="num">${seatList[21].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[22].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 451px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00201101" rownm="${seatList[22].rownm}" seatno="${seatList[22].seatnm}"
													seatchoidircval="0" seatchoigrpno="5" seatchoigrpnm="B5"
													seatchoirowcnt="7" seatchoigrpseq="4" seattocnt="1">
													<span class="num">${seatList[22].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[23].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 471px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00201201" rownm="${seatList[23].rownm}" seatno="${seatList[23].seatnm}"
													seatchoidircval="0" seatchoigrpno="5" seatchoigrpnm="B5"
													seatchoirowcnt="7" seatchoigrpseq="5" seattocnt="1">
													<span class="num">${seatList[23].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[24].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 491px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00201301" rownm="${seatList[24].rownm}" seatno="${seatList[24].seatnm}"
													seatchoidircval="0" seatchoigrpno="5" seatchoigrpnm="B5"
													seatchoirowcnt="7" seatchoigrpseq="6" seattocnt="1">
													<span class="num">${seatList[24].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[25].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 511px; top: 70px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00201401" rownm="${seatList[25].rownm}" seatno="${seatList[25].seatnm}"
													seatchoidircval="0" seatchoigrpno="5" seatchoigrpnm="B5"
													seatchoirowcnt="7" seatchoigrpseq="7" seattocnt="1">
													<span class="num">${seatList[25].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[26].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 251px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00300101" rownm="${seatList[26].rownm}" seatno="${seatList[26].seatnm}"
													seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm=""
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">${seatList[26].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[27].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 271px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00300201" rownm="${seatList[27].rownm}" seatno="${seatList[27].seatnm}"
													seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm=""
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">${seatList[27].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[28].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 291px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00300301" rownm="${seatList[28].rownm}" seatno="${seatList[28].seatnm}"
													seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm=""
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">${seatList[28].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[29].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 311px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00300401" rownm="${seatList[29].rownm}" seatno="${seatList[29].seatnm}"
													seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm=""
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">${seatList[29].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[30].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 331px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00300501" rownm="${seatList[30].rownm}" seatno="${seatList[30].seatnm}"
													seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm=""
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">${seatList[30].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[31].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 351px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00300601" rownm="${seatList[31].rownm}" seatno="${seatList[31].seatnm}"
													seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm=""
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">${seatList[31].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[32].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 391px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00300801" rownm="${seatList[32].rownm}" seatno="${seatList[32].seatnm}"
													seatchoidircval="0" seatchoigrpno="7" seatchoigrpnm="C7"
													seatchoirowcnt="7" seatchoigrpseq="1" seattocnt="1">
													<span class="num">${seatList[32].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[33].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 411px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00300901" rownm="${seatList[33].rownm}" seatno="${seatList[33].seatnm}"
													seatchoidircval="0" seatchoigrpno="7" seatchoigrpnm="C7"
													seatchoirowcnt="7" seatchoigrpseq="2" seattocnt="1">
													<span class="num">${seatList[33].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[34].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 431px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00301001" rownm="${seatList[34].rownm}" seatno="${seatList[34].seatnm}"
													seatchoidircval="0" seatchoigrpno="7" seatchoigrpnm="C7"
													seatchoirowcnt="7" seatchoigrpseq="3" seattocnt="1">
													<span class="num">${seatList[34].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[35].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 451px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00301101" rownm="${seatList[35].rownm}" seatno="${seatList[35].seatnm}"
													seatchoidircval="0" seatchoigrpno="7" seatchoigrpnm="C7"
													seatchoirowcnt="7" seatchoigrpseq="4" seattocnt="1">
													<span class="num">${seatList[35].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[36].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 471px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00301201" rownm="${seatList[36].rownm}" seatno="${seatList[36].seatnm}"
													seatchoidircval="0" seatchoigrpno="7" seatchoigrpnm="C7"
													seatchoirowcnt="7" seatchoigrpseq="5" seattocnt="1">
													<span class="num">${seatList[36].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[37].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 491px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00301301" rownm="${seatList[37].rownm}" seatno="${seatList[37].seatnm}"
													seatchoidircval="0" seatchoigrpno="7" seatchoigrpnm="C7"
													seatchoirowcnt="7" seatchoigrpseq="6" seattocnt="1">
													<span class="num">${seatList[37].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[38].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 511px; top: 90px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00301401" rownm="${seatList[38].rownm}" seatno="${seatList[38].seatnm}"
													seatchoidircval="0" seatchoigrpno="7" seatchoigrpnm="C7"
													seatchoirowcnt="7" seatchoigrpseq="7" seattocnt="1">
													<span class="num">${seatList[38].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[39].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 251px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00400101" rownm="${seatList[39].rownm}" seatno="${seatList[39].seatnm}"
													seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="D8"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">${seatList[39].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[40].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 271px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00400201" rownm="${seatList[40].rownm}" seatno="${seatList[40].seatnm}"
													seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="D8"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">${seatList[40].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[41].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 291px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00400301" rownm="${seatList[41].rownm}" seatno="${seatList[41].seatnm}"
													seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="D8"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">${seatList[41].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[42].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 311px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00400401" rownm="${seatList[42].rownm}" seatno="${seatList[42].seatnm}"
													seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="D8"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">${seatList[42].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[43].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 331px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00400501" rownm="${seatList[43].rownm}" seatno="${seatList[43].seatnm}"
													seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="D8"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">${seatList[43].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[44].seatNum}"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 351px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00400601" rownm="${seatList[44].rownm}" seatno="${seatList[44].seatnm}"
													seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="D8"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">${seatList[44].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[45].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 391px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00400801" rownm="${seatList[45].rownm}" seatno="${seatList[45].seatnm}"
													seatchoidircval="0" seatchoigrpno="9" seatchoigrpnm="D9"
													seatchoirowcnt="7" seatchoigrpseq="1" seattocnt="1">
													<span class="num">${seatList[45].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[46].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 411px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00400901" rownm="${seatList[46].rownm}" seatno="${seatList[46].seatnm}"
													seatchoidircval="0" seatchoigrpno="9" seatchoigrpnm="D9"
													seatchoirowcnt="7" seatchoigrpseq="2" seattocnt="1">
													<span class="num">${seatList[46].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[47].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 431px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00401001" rownm="${seatList[47].rownm}" seatno="${seatList[47].seatnm}"
													seatchoidircval="0" seatchoigrpno="9" seatchoigrpnm="D9"
													seatchoirowcnt="7" seatchoigrpseq="3" seattocnt="1">
													<span class="num">${seatList[47].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[48].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 451px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00401101" rownm="${seatList[48].rownm}" seatno="${seatList[48].seatnm}"
													seatchoidircval="0" seatchoigrpno="9" seatchoigrpnm="D9"
													seatchoirowcnt="7" seatchoigrpseq="4" seattocnt="1">
													<span class="num">${seatList[48].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[49].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 471px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00401201" rownm="${seatList[49].rownm}" seatno="${seatList[49].seatnm}"
													seatchoidircval="0" seatchoigrpno="9" seatchoigrpnm="D9"
													seatchoirowcnt="7" seatchoigrpseq="5" seattocnt="1">
													<span class="num">${seatList[49].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[50].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 491px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00401301" rownm="${seatList[50].rownm}" seatno="${seatList[50].seatnm}"
													seatchoidircval="0" seatchoigrpno="9" seatchoigrpnm="D9"
													seatchoirowcnt="7" seatchoigrpseq="6" seattocnt="1">
													<span class="num">${seatList[50].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[51].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 511px; top: 110px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00401401" rownm="${seatList[51].rownm}" seatno="${seatList[51].seatnm}"
													seatchoidircval="0" seatchoigrpno="9" seatchoigrpnm="D9"
													seatchoirowcnt="7" seatchoigrpseq="7" seattocnt="1">
													<span class="num">${seatList[51].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[52].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 251px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00500101" rownm="${seatList[52].rownm}" seatno="${seatList[52].seatnm}"
													seatchoidircval="1" seatchoigrpno="10" seatchoigrpnm="E10"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">${seatList[52].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[53].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 271px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00500201" rownm="${seatList[53].rownm}" seatno="${seatList[53].seatnm}"
													seatchoidircval="1" seatchoigrpno="10" seatchoigrpnm="E10"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">${seatList[53].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[54].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 291px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00500301" rownm="${seatList[54].rownm}" seatno="${seatList[54].seatnm}"
													seatchoidircval="1" seatchoigrpno="10" seatchoigrpnm="E10"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">${seatList[54].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[55].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 311px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00500401" rownm="${seatList[55].rownm}" seatno="${seatList[55].seatnm}"
													seatchoidircval="1" seatchoigrpno="10" seatchoigrpnm="E10"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">${seatList[55].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[56].seatNum}"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 331px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00500501" rownm="${seatList[56].rownm}" seatno="${seatList[56].seatnm}"
													seatchoidircval="1" seatchoigrpno="10" seatchoigrpnm="E10"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">${seatList[56].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[57].seatNum}"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 351px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00500601" rownm="${seatList[57].rownm}" seatno="${seatList[57].seatnm}"
													seatchoidircval="1" seatchoigrpno="10" seatchoigrpnm="E10"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">${seatList[57].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[58].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 391px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00500801" rownm="${seatList[58].rownm}" seatno="${seatList[58].seatnm}"
													seatchoidircval="0" seatchoigrpno="11" seatchoigrpnm="E11"
													seatchoirowcnt="7" seatchoigrpseq="1" seattocnt="1">
													<span class="num">${seatList[58].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[59].seatNum}"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 411px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00500901" rownm="${seatList[59].rownm}" seatno="${seatList[59].seatnm}"
													seatchoidircval="0" seatchoigrpno="11" seatchoigrpnm="E11"
													seatchoirowcnt="7" seatchoigrpseq="2" seattocnt="1">
													<span class="num">${seatList[59].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[60].seatNum}"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 431px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00501001" rownm="${seatList[60].rownm}" seatno="${seatList[60].seatnm}"
													seatchoidircval="0" seatchoigrpno="11" seatchoigrpnm="E11"
													seatchoirowcnt="7" seatchoigrpseq="3" seattocnt="1">
													<span class="num">${seatList[60].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[61].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 451px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00501101" rownm="${seatList[61].rownm}" seatno="${seatList[61].seatnm}"
													seatchoidircval="0" seatchoigrpno="11" seatchoigrpnm="E11"
													seatchoirowcnt="7" seatchoigrpseq="4" seattocnt="1">
													<span class="num">${seatList[61].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[62].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 471px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00501201" rownm="${seatList[62].rownm}" seatno="${seatList[62].seatnm}"
													seatchoidircval="0" seatchoigrpno="11" seatchoigrpnm="E11"
													seatchoirowcnt="7" seatchoigrpseq="5" seattocnt="1">
													<span class="num">${seatList[62].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[63].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 491px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00501301" rownm="${seatList[63].rownm}" seatno="${seatList[63].seatnm}"
													seatchoidircval="0" seatchoigrpno="11" seatchoigrpnm="E11"
													seatchoirowcnt="7" seatchoigrpseq="6" seattocnt="1">
													<span class="num">${seatList[63].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[64].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 511px; top: 130px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00501401" rownm="${seatList[64].rownm}" seatno="${seatList[64].seatnm}"
													seatchoidircval="0" seatchoigrpno="11" seatchoigrpnm="E11"
													seatchoirowcnt="7" seatchoigrpseq="7" seattocnt="1">
													<span class="num">${seatList[64].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[65].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 251px; top: 150px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00600101" rownm="${seatList[65].rownm}" seatno="${seatList[65].seatnm}"
													seatchoidircval="1" seatchoigrpno="12" seatchoigrpnm="F12"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">${seatList[65].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[66].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 271px; top: 150px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00600201" rownm="${seatList[66].rownm}" seatno="${seatList[66].seatnm}"
													seatchoidircval="1" seatchoigrpno="12" seatchoigrpnm="F12"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">${seatList[66].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[67].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 291px; top: 150px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00600301" rownm="${seatList[67].rownm}" seatno="${seatList[67].seatnm}"
													seatchoidircval="1" seatchoigrpno="12" seatchoigrpnm="F12"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">${seatList[67].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[68].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 311px; top: 150px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00600401" rownm="${seatList[68].rownm}" seatno="${seatList[68].seatnm}"
													seatchoidircval="1" seatchoigrpno="12" seatchoigrpnm="F12"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">${seatList[68].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[69].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 331px; top: 150px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00600501" rownm="${seatList[69].rownm}" seatno="${seatList[69].seatnm}"
													seatchoidircval="1" seatchoigrpno="12" seatchoigrpnm="F12"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">${seatList[69].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[70].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 351px; top: 150px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00600601" rownm="${seatList[70].rownm}" seatno="${seatList[70].seatnm}"
													seatchoidircval="1" seatchoigrpno="12" seatchoigrpnm="F12"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">${seatList[70].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[71].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 391px; top: 150px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00600801" rownm="${seatList[71].rownm}" seatno="${seatList[71].seatnm}"
													seatchoidircval="0" seatchoigrpno="13" seatchoigrpnm="F13"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">${seatList[71].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[72].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 411px; top: 150px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00600901" rownm="${seatList[72].rownm}" seatno="${seatList[72].seatnm}"
													seatchoidircval="0" seatchoigrpno="13" seatchoigrpnm="F13"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">${seatList[72].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[73].seatNum}"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 431px; top: 150px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00601001" rownm="${seatList[73].rownm}" seatno="${seatList[73].seatnm}"
													seatchoidircval="0" seatchoigrpno="13" seatchoigrpnm="F13"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">${seatList[73].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[74].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 451px; top: 150px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00601101" rownm="${seatList[74].rownm}" seatno="${seatList[74].seatnm}"
													seatchoidircval="0" seatchoigrpno="13" seatchoigrpnm="F13"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">${seatList[74].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[75].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 471px; top: 150px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00601201" rownm="${seatList[75].rownm}" seatno="${seatList[75].seatnm}"
													seatchoidircval="0" seatchoigrpno="13" seatchoigrpnm="F13"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">${seatList[75].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[76].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 491px; top: 150px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00601301" rownm="${seatList[76].rownm}" seatno="${seatList[76].seatnm}"
													seatchoidircval="0" seatchoigrpno="13" seatchoigrpnm="F13"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">${seatList[76].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[77].seatNum}"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 251px; top: 170px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00700101" rownm="${seatList[77].rownm}" seatno="${seatList[77].seatnm}"
													seatchoidircval="1" seatchoigrpno="14" seatchoigrpnm="G14"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">${seatList[77].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[78].seatNum}"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 271px; top: 170px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00700201" rownm="${seatList[78].rownm}" seatno="${seatList[78].seatnm}"
													seatchoidircval="1" seatchoigrpno="14" seatchoigrpnm="G14"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">${seatList[78].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[79].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 291px; top: 170px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00700301" rownm="${seatList[79].rownm}" seatno="${seatList[79].seatnm}"
													seatchoidircval="1" seatchoigrpno="14" seatchoigrpnm="G14"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">${seatList[79].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[80].seatNum}"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 311px; top: 170px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00700401" rownm="${seatList[80].rownm}" seatno="${seatList[80].seatnm}"
													seatchoidircval="1" seatchoigrpno="14" seatchoigrpnm="G14"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">${seatList[80].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[81].seatNum}"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 331px; top: 170px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00700501" rownm="${seatList[81].rownm}" seatno="${seatList[81].seatnm}"
													seatchoidircval="1" seatchoigrpno="14" seatchoigrpnm="G14"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">${seatList[81].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[82].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 351px; top: 170px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00700601" rownm="${seatList[82].rownm}" seatno="${seatList[82].seatnm}"
													seatchoidircval="1" seatchoigrpno="14" seatchoigrpnm="G14"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">${seatList[82].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[83].seatNum}"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 391px; top: 170px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00700801" rownm="${seatList[83].rownm}" seatno="${seatList[83].seatnm}"
													seatchoidircval="0" seatchoigrpno="15" seatchoigrpnm="G15"
													seatchoirowcnt="5" seatchoigrpseq="1" seattocnt="1">
													<span class="num">${seatList[83].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[84].seatNum}"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 411px; top: 170px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00700901" rownm="${seatList[84].rownm}" seatno="${seatList[84].seatnm}"
													seatchoidircval="0" seatchoigrpno="15" seatchoigrpnm="G15"
													seatchoirowcnt="5" seatchoigrpseq="2" seattocnt="1">
													<span class="num">${seatList[84].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[85].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 431px; top: 170px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00701001" rownm="${seatList[85].rownm}" seatno="${seatList[85].seatnm}"
													seatchoidircval="0" seatchoigrpno="15" seatchoigrpnm="G15"
													seatchoirowcnt="5" seatchoigrpseq="3" seattocnt="1">
													<span class="num">${seatList[85].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[86].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 451px; top: 170px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00701101" rownm="${seatList[86].rownm}" seatno="${seatList[86].seatnm}"
													seatchoidircval="0" seatchoigrpno="15" seatchoigrpnm="G15"
													seatchoirowcnt="5" seatchoigrpseq="4" seattocnt="1">
													<span class="num">${seatList[86].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[87].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 471px; top: 170px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00701201" rownm="${seatList[87].rownm}" seatno="${seatList[87].seatnm}"
													seatchoidircval="0" seatchoigrpno="15" seatchoigrpnm="G15"
													seatchoirowcnt="5" seatchoigrpseq="5" seattocnt="1">
													<span class="num">${seatList[87].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												
												<button type="button" title="${seatList[88].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 291px; top: 190px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00800301" rownm="${seatList[88].rownm}" seatno="${seatList[88].seatnm}"
													seatchoidircval="1" seatchoigrpno="16" seatchoigrpnm="H16"
													seatchoirowcnt="4" seatchoigrpseq="1" seattocnt="1">
													<span class="num">${seatList[88].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[89].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 311px; top: 190px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00800401" rownm="${seatList[89].rownm}" seatno="${seatList[89].seatnm}"
													seatchoidircval="1" seatchoigrpno="16" seatchoigrpnm="H16"
													seatchoirowcnt="4" seatchoigrpseq="2" seattocnt="1">
													<span class="num">${seatList[89].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[90].seatNum}"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 331px; top: 190px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00800501" rownm="${seatList[90].rownm}" seatno="${seatList[90].seatnm}"
													seatchoidircval="1" seatchoigrpno="16" seatchoigrpnm="H16"
													seatchoirowcnt="4" seatchoigrpseq="3" seattocnt="1">
													<span class="num">${seatList[90].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[91].seatNum}"
													class="jq-tooltip seat-condition standard finish"
													style="position: absolute; left: 351px; top: 190px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00800601" rownm="${seatList[91].rownm}" seatno="${seatList[91].seatnm}"
													seatchoidircval="1" seatchoigrpno="16" seatchoigrpnm="H16"
													seatchoirowcnt="4" seatchoigrpseq="4" seattocnt="1">
													<span class="num">${seatList[91].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[92].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 391px; top: 190px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00800801" rownm="${seatList[92].rownm}" seatno="${seatList[92].seatnm}"
													seatchoidircval="0" seatchoigrpno="17" seatchoigrpnm="H17"
													seatchoirowcnt="4" seatchoigrpseq="1" seattocnt="1">
													<span class="num">${seatList[92].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">선택불가</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[93].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 411px; top: 190px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00800901" rownm="${seatList[93].rownm}" seatno="${seatList[93].seatnm}"
													seatchoidircval="0" seatchoigrpno="17" seatchoigrpnm="H17"
													seatchoirowcnt="4" seatchoigrpseq="2" seattocnt="1">
													<span class="num">${seatList[93].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[94].seatNum}"
													class="jq-tooltip seat-condition standard common"
													style="position: absolute; left: 431px; top: 190px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00801001" rownm="${seatList[94].rownm}" seatno="${seatList[94].seatnm}"
													seatchoidircval="0" seatchoigrpno="17" seatchoigrpnm="H17"
													seatchoirowcnt="4" seatchoigrpseq="3" seattocnt="1">
													<span class="num">${seatList[94].seatnm}</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="${seatList[95].seatNum}"
													class="jq-tooltip seat-condition standard finish pos"
													style="position: absolute; left: 451px; top: 190px; width: 20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00801101" rownm="${seatList[95].rownm}" seatno="${seatList[95].seatnm}"
													seatchoidircval="0" seatchoigrpno="17" seatchoigrpnm="H17"
													seatchoirowcnt="4" seatchoigrpseq="4" seattocnt="1">
													<span class="num">${seatList[95].seatnm}</span><span class="kind">스탠다드</span><span
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
							<span class="movie-grade small age-all">전체관람가</span>
							<p class="tit">영화제목 JSTL</p>
							<p class="cate"></p>
						</div>
						<div class="info-area">
							<p class="theater">영화관 제목 JSTL</p>
							<p class="special">상영관 이름 JSTL</p>
							<p class="date">
								<span>상영날짜 JSTL</span>
							</p>
							<div class="other-time">
								<p
									style="border: 1px solid #333; border-bottom: 0; border-radius: 5px 5px 0 0; color: #fff; margin-left: 14px;">
									시작시간JSTL</p>
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
								<img
									src="/SharedImg/2020/06/16/g8krQAvfYaqZvbZTdDipqRErDbiTUr8Z_150.gif"
									onerror="noImg(this);" alt="온워드: 단 하루의 기적">
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
							<a href="javaScript:void(0)" class="button" id="pagePrevious"
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