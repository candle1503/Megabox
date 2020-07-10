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

	<div id="contents" class="location-fixed">
		<!-- inner-wrap -->
		<div class="inner-wrap">
			<!-- quick-reserve -->
			<div class="quick-reserve">
				<h2 class="tit purple">
					예매완료
					<!-- 예매완료 -->
				</h2>



				<!-- reserve-finish -->
				<div class="reserve-finish">
					<!-- reserve-ininfomation-box -->
					<div class="reserve-ininfomation-box">
						<div class="movie-poster-area">
							<p>
								티켓 예매번호
								<!-- 티켓 예매번호 -->
								<span class="roboto">0000-000-00000</span>
							</p>
							<img
								src="https://img.megabox.co.kr/SharedImg/2020/06/15/pjraLryYt5zQ1HEf6axtAdkXRhfhRZTZ_316.jpg"
								alt="결백" onerror="noImg(this)">
						</div>

						<!-- movie-infomation-area -->
						<div class="movie-infomation-area">
							<div class="movie-info-top">
								<p class="tit">
									<strong>예매가 완료되었습니다 <!-- 예매가 완료되었습니다 --> <i>!</i></strong> <span
										class="righten"> <i class="iconset ico-circle-point"></i>
										고객님의 상영익일 적립예정 포인트는 <!-- 고객님의 상영익일 적립예정 포인트는 --> <em>600P</em>입니다.
										<!-- 입니다. --></span>

								</p>
							</div>

							<div class="movie-info-middle">
								<ul class="dot-list gray">
									<li><span>예매영화 <!-- 예매영화 --></span>
									<c:if test="${movieVO.age eq '전체관람가'}">
										<span class="movie-grade small age-all" style="width: 20px; margin-left: 95px;">${movieVO.age}</span>
									</c:if>
									<c:if test="${movieVO.age eq '12세이상관람가'}">
										<span class="movie-grade small age-12" style="width: 20px; margin-left: 95px;">${movieVO.age}</span>
									</c:if>
									<c:if test="${movieVO.age eq '15세이상관람가'}">
										<span class="movie-grade small age-15" style="width: 20px; margin-left: 95px;">${movieVO.age}</span>
									</c:if>
									<c:if test="${movieVO.age eq '청소년관람불가'}">
										<span class="movie-grade small age-19" style="width: 20px; margin-left: 95px;">${movieVO.age}</span>
									</c:if>${movieVO.name}</li>
									<li><span>관람극장/상영관 <!-- 관람극장/상영관 --></span> ${theaterVO.name} /
										${bookingVO.roomName}</li>
									<li><span>관람일시 <!-- 관람일시 --></span> &nbsp;${bookingVO.startTime}(${bookingVO.yoil}) / ${bookingVO.movieTime}</li>
									<li><span>관람인원 <!-- 관람인원 --></span> &nbsp;일반 ${sizeCount}명</li>
									<li><span>좌석번호 <!-- 좌석번호 --></span> &nbsp;E열 6</li>
									<li><span>전화번호 <!-- 전화번호 --></span> &nbsp;010-0000-0000</li>
									<li><span>결제정보 <!-- 결제정보 --></span> <strong class="roboto">12,000</strong>
										원 <!-- 원 --> <br> <em></em></li>
								</ul>


							</div>

							<!-- movie-info-bottom -->

							<div class="movie-info-bottom">
								<div class="add-send">
									예매정보 추가 발송
									<!-- 예매정보 추가 발송 -->
									<a href="#tooltip01_01" class="tooltip hover"
										title="입력하신 번호로 예매정보를 추가발송합니다."> <span><i
											class="iconset ico-question-white">&nbsp;</i></span>
										<div class="ir" id="tooltip01_01" data-width="220">
											입력하신 번호로 예매정보를 추가발송합니다.
											<!-- 입력하신 번호로 예매정보를 추가발송합니다. -->
										</div>
									</a> <input type="text" title="연락처 입력"
										class="input-text w150px ml10" maxlength="11"
										id="inp_sms_rcv_no">
									<button type="button" class="button" id="btn_re_send_sms">
										전송
										<!-- 전송 -->
									</button>
								</div>


								<!-- 레이어 : ok캐쉬백 적립 -->






								<script type="text/javascript">
									//예매 사용 카드번호 체크
									$.fn.megaBoxCardNumberCheck = function() {
										$(this).on(
												"keypress",
												function(e) {
													if (!e.key.isNumber()
															&& e.key != '-')
														return false;
												})
										$(this)
												.on(
														"focus",
														function(e) {
															$(this)
																	.val(
																			$(
																					'#'
																							+ $(
																									this)
																									.attr(
																											'id')
																							+ '_hid')
																					.val());
														})
										$(this)
												.on(
														"focusout",
														function(e) {
															var val = $(this)
																	.val()
																	.replace(
																			/[^0-9]+/g,
																			'');
															$(this).val(val);
															$(
																	'#'
																			+ $(
																					this)
																					.attr(
																							'id')
																			+ '_hid')
																	.val(val);

															var makNo = $(this)
																	.val()
																	.maskCardNo();
															var varArr = makNo
																	.split('-');
															if (varArr.length > 3) {
																varArr[2] = varArr[2]
																		.replaceAll(
																				/[0-9]/g,
																				'*');
															}

															$(this)
																	.val(
																			varArr
																					.join("-"));
														})
									};

									$(function() {
										//OK 캐쉬백 적립대상 금액 조회
										selectOkCashSaveAmount();

										$("#ok_card_no")
												.megaBoxCardNumberCheck();

										//OK 캐쉬백 인증 버튼 클릭
										$('#btn_ok_save').on('click',
												function() {
													saveOkCashSaveAmount();
												});

									});

									//OK 캐쉬백 적립대상 금액 조회
									function selectOkCashSaveAmount() {
										var transNo = $("#transNo").val();
										var paramData = {
											tranNo : transNo
										};

										$
												.ajax({
													url : "/on/oh/ohz/PayBooking/selectOkCashSaveAmount.do",
													type : "POST",
													contentType : "application/json;charset=UTF-8",
													dataType : "json",
													data : JSON
															.stringify(paramData),
													success : function(data,
															textStatus, jqXHR) {
														//console.log(data);
														if (data.returnMap.resvrObjAt == 'Y') {
															$('.point-save')
																	.show();
															$('#saveAmount')
																	.val(
																			data.returnMap.resvrObjAmt);
														} else {
															$('.point-save')
																	.hide();
															$('#saveAmount')
																	.val(0);
														}
													},
													error : function(xhr,
															status, error) {
														var err = JSON
																.parse(xhr.responseText);
														//err.statCd 에 따라서 이전화면으로 리턴 가능토록
														errBookingChk(err.msg);
													}
												});
									}

									//OK 캐쉬백 적립
									function saveOkCashSaveAmount() {
										var transNo = $("#transNo").val();
										var saveAmount = $("#saveAmount").val();
										var cardNo = $("#ok_card_no_hid").val();
										var paramData = {
											tranNo : transNo,
											saveAmount : saveAmount,
											cardNo : cardNo
										};

										if (cardNo.length < 15) {
											gfn_alertMsgBox('OK캐쉬백 카드번호를 다시 확인해주세요.');
											$("#ok_card_no").focus();
											return;
										}

										$
												.ajaxMegaBox({
													url : "/on/oh/ohz/PayBooking/saveOkCashSaveAmount.do",
													type : "POST",
													data : JSON
															.stringify(paramData),
													sessionAt : true,
													success : function(data,
															textStatus, jqXHR) {
														//console.log(data);

														if (data.statCd != "0") {
															gfn_alertMsgBox(data.msg);
														} else {
															gfn_alertMsgBoxSize(
																	data.returnMap.msg,
																	350, 250);
															$('.point-save')
																	.hide();
														}

														//닫기버튼 클릭
														$('#btn_ok_close')
																.click();
													},
													error : function(xhr,
															status, error) {
														var err = JSON
																.parse(xhr.responseText);
														//err.statCd 에 따라서 이전화면으로 리턴 가능토록
														errBookingChk(err.msg);
													}
												});
									}

									//오류메시지 체크 : 999 로 시작되는 오류 메시지 처음페이지로 리턴
									function errBookingChk(msg) {
										//알림메시지 노출
										if (msg != null && msg != "") {
											if (msg.indexOf("999:") == 0) {
												var almsg = msg.substring(4,
														msg.length);
												gfn_alertMsgBox({
													msg : almsg
												});
											} else {
												if (msg.indexOf("9999:") == 0) {
													var almsg = msg.substring(
															5, msg.length);
													gfn_alertMsgBox({
														msg : almsg
													});
												} else {
													gfn_alertMsgBox({
														msg : msg
													});
												}
											}
										}
									}
								</script>

								<input type="hidden" id="ok_card_no_hid">
								<div class="point-save">
									OK 캐쉬백 추후적립
									<!-- OK 캐쉬백 추후적립 -->
									<a href="#cash_back" class="button btn-modal-open white"
										w-data="600" h-data="325" title="OK캐쉬백 적립">OK캐쉬백 적립 <!-- OK캐쉬백 적립 --></a>

									<!-- 레이어 : OK캐쉬백 적립 -->
									<section id="cash_back" class="modal-layer">
										<a href="" class="focus">레이어로 포커스 이동 됨</a>
										<div class="wrap">
											<header class="layer-header">
												<h3 class="tit">
													OK캐쉬백 적립
													<!-- OK캐쉬백 적립 -->
												</h3>
											</header>

											<div class="layer-con">
												<div class="pop-tit font-black">
													적립 받으실 OK캐쉬백 카드번호 입력후 [인증]버튼을 눌러주세요.
													<!-- 적립 받으실 OK캐쉬백 카드번호 입력후 [인증]버튼을 눌러주세요.<br />자세한 포인트 내역은 OK캐쉬백홈페이지를 참고해 주세요. -->
												</div>
												<div class="popup-gray mid-info-box mb20">
													<input type="text" title="ok캐쉬백 카드번호 입력"
														class="input-text w250px" id="ok_card_no"
														name="ok_card_no" maxlength="20" onkeypress="">
													<!-- ok캐쉬백 카드번호 입력 -->
												</div>

												<div class="btn-group">
													<button type="button" class="button close-layer"
														id="btn_ok_close">
														닫기
														<!-- 닫기 -->
													</button>
													<button type="button" class="button purple"
														id="btn_ok_save">
														인증
														<!-- 인증 -->
													</button>
												</div>
											</div>

											<button type="button" class="btn-modal-close">
												레이어 닫기
												<!-- 레이어 닫기 -->
											</button>
										</div>
									</section>
									<!--// 레이어 : OK캐쉬백 적립 -->
								</div>

								<!-- 레이어 : ok캐쉬백 적립 -->

							</div>

							<!--// movie-info-bottom -->
						</div>
						<!--// movie-infomation-area -->
					</div>
					<!--// reserve-ininfomation-box -->
				</div>
				<!--// reserve-finish -->

				<div class="btn-group pt30">
					<a href="#" class="button large" w-data="600" h-data="600"
						id="btn_ticket_print" title="교환권출력">교환권출력 <!-- 교환권출력 --></a> <a
						href="#" class="button large" id="btn_bill_print" title="영수증출력">영수증출력
						<!-- 영수증출력 -->
					</a> <a href="/mypage/bookinglist?tab=01" class="button purple large"
						title="예매내역 페이지로 이동">예매내역 <!-- 예매내역 --></a>


				</div>


				<div class="box-border v1 mt10">
					<ul class="dot-list gray">

						<li>상영안내 <!-- 상영안내 -->
							<ul class="dash-list">

								<li>쾌적한 관람 환경을 위해 상영시간 이전에 입장 부탁드립니다.</li>

								<li>지연입장에 의한 관람불편을 최소화하고자 본 영화는 10분 후 시작됩니다.</li>

								<li>상영시간 20분전까지 취소 가능하며, 캡쳐화면으로는 입장하실 수 없습니다.</li>

							</ul>
						</li>



						<li class="mt20">주차안내 <!-- 주차안내 -->
							<ul class="dash-list">

								<li>매표소에 당일 영화 티켓 인증 후, 차량 번호 할인 등록. 3시간 -&gt; 3,000원 (지하
									3층 정산소에서 결제)</li>

								<li>주차 공간이 협소하므로 가급적이면 대중교통을 이용 바랍니다. (지하철 2호선 강남역 출구 9번
									출구)</li>

							</ul>
						</li>

					</ul>
				</div>

			</div>
			<!--// quick-reserve -->
		</div>
		<!--// inner-wrap -->
	</div>
	
	<div style="margin-bottom: 100px"></div>



	<c:import url="../template/footer.jsp"></c:import>

</body>
</html>