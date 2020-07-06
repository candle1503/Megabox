<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:import url="../template/header_css.jsp"></c:import>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<style type="text/css">

	.preNext {
		background-color: white;
		border: none;
		outline: none;
	}
	
	.dateNum {
		font-size: 1em;
		font-family: Roboto;
	}
	
	.timeSpan{
		margin-top: 8px;
	}
	
	.bookingTime-list {
		display: inline-block;
		height: 39px;
		width: 3.15%;
	}
	
</style>


</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<body class="body-iframe">
        <!-- inner-wrap -->
        <div class="inner-wrap" style="padding-top:40px; padding-bottom:100px;">
            <input type="hidden" id="playDe" name="playDe" value="2020.06.18">
            <input type="hidden" id="crtDe" name="crtDe" value="2020.06.18">

            <!-- quick-reserve -->
            <div class="quick-reserve">
                <div class="tit-util">
                    <h2 class="tit">빠른예매</h2>

					<div id="btnLangChg" class="right btn-ticket" style="display:none">
                        <button type="button" class="button gray-line" onclick="parent.setLangChg()">English</button>
                    </div>
                </div>

                


<script type="text/javascript">
var requestPayAt = "N";

$(function(){
	//RIA의 경우
    if(parent.sellChnlCd != ""){
        $('.inner-wrap')
        	.css('padding-bottom','')
        	.css('padding-top','');	//하단 상단 공백 제거
//         $('#btnLangChg').hide();    //언어전환 버튼숨김

        //로그인 되었으면
        if(parent.riaLoginAt == "Y"){
        	$('.cti-area input[name=riaName]').attr('value',parent.riaParamName);	//고객명
            $('.cti-area input[name=riaMobileNo]').attr('value',parent.riaParamMobileNo);	//고객전화번호
            $('.cti-area input[name=riaBirthday]').attr('value',parent.riaParamBirthday);	//고객생년월일
        	$('.cti-area input[name=riaMemberYn]').attr('value',parent.riaMemberYn == "Y" ? "회원" : "비회원");	//회원여부

        	$('.cti-area input[name=riaName]').attr("readonly",true);		//고객명
            $('.cti-area input[name=riaMobileNo]').attr("readonly",true);	//고객전화번호
            $('.cti-area input[name=riaBirthday]').attr("readonly",true);	//고객생년월일

            $('.cti-area input[name=riaMemberYn]').attr("readonly",true);	//회원여부

        	$('.cti-area button').attr('login-at',"Y");

            //결제화면이 아니면
            if("N" == requestPayAt){
            	$('.cti-area button').html('재인증');
            }
        }
        //로그인 되지 않았으면
        else {
        	$('.cti-area input[name=riaName]').attr('value',parent.riaParamName);	//고객명
            $('.cti-area input[name=riaMobileNo]').attr('value',parent.riaParamMobileNo);	//고객전화번호
            $('.cti-area input[name=riaBirthday]').attr('value',parent.riaParamBirthday);	//고객생년월일
            $('.cti-area input[name=riaMemberYn]').attr('value','');	//회원여부

        	$('.cti-area input[name=riaName]').attr("readonly",false);		//고객명
            $('.cti-area input[name=riaMobileNo]').attr("readonly",false);	//고객전화번호
            $('.cti-area input[name=riaBirthday]').attr("readonly",false);	//고객생년월일

            $('.cti-area input[name=riaMemberYn]').attr("readonly",true);	//회원여부

            $('.cti-area button').attr('login-at',"N");	//회원여부
          	//결제화면이 아니면
            if("N" == requestPayAt){
        		$('.cti-area button').html('인증요청');
            }
        }

        //드림센터의 경우
		if(parent.sellChnlCd == "TELLER"){
			$('.cti-area').show();	//cti 로그인창 표시
		}
		else {
			$('.cti-area').hide();	//cti 로그인창 표시
		}


		//회원정보 확인을 위한 초기 파라메타 셋팅

		//파라메타 셋팅후
		//회원여부확인				부모창
		//나머지 화면 disable 처리	부모창

	}
    else {
        $('.quick-reserve-ad-area').show();	//광고영역 표시
//         $('#btnLangChg').show();	//언어전환 버튼표시 사용안함 20200106 김민영
    }

    /* RIA 재인증 버튼 클릭 */
    $('.cti-area button').on("click", function(){

		//입력값 검증
		if($('.cti-area button').attr('login-at') == "N"){

// 			if($(".cti-area input[name=riaName]").val().length == 0){
// 				gfn_alertMsgBoxSize('이름은  필수 입력 항목 입니다.',400,250);	//{0} 필수 입력 항목 입니다.
// 				return;
// 			}

			if(!fn_validateDateYn($(".cti-area input[name=riaBirthday]").val())){
				gfn_alertMsgBoxSize('생년월일을 정확히 입력해주세요.',400,250);	//생년월일을 정확히 입력해주세요.
				return;
			}

			if($(".cti-area input[name=riaMobileNo]").val().length < 10){
				gfn_alertMsgBoxSize('휴대폰번호를 정확히 입력해주세요.',400,250);	//휴대폰번호를 정확히 입력해주세요.
				return;
			}

			if($(".cti-area input[name=riaMobileNo]").val().substr(0,2) != "01"){
				gfn_alertMsgBoxSize('휴대폰번호를 정확히 입력해주세요.',400,250);	//휴대폰번호를 정확히 입력해주세요.
				return;
			}
		}
		parent.fn_setRiaLoginToggle( [$('.cti-area button').attr('login-at')
    								 ,$(".cti-area input[name=riaName]").val()
    								 ,$(".cti-area input[name=riaBirthday]").val()
    								 ,$(".cti-area input[name=riaMobileNo]").val()]
    								);
    });


    /* 이름 숫자를 제외한 입력 여부판단 */
	$(".cti-area input[name=riaName]").on("keyup", function(e){
		var partton = /[^ㄱ-힣a-zA-Z]/g;
		if(partton.test($(this).val())) {
			var value = $(this).val().replace(/[^ㄱ-힣a-zA-Z]/g,"");
			$(this).val(value);
		}
 	});
	$(".cti-area input[name=riaName]").focusout(function(){
		var partton = /[^ㄱ-힣a-zA-Z]/g;
		if(partton.test($(this).val())) {
			var value = $(this).val().replace(/[^ㄱ-힣a-zA-Z]/g,"");
			$(this).val(value);
		}
	});

    /* 생년월일 숫자만 입력 여부판단 */
	$(".cti-area input[name=riaBirthday]").on("keyup", function(e){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
	});
	$(".cti-area input[name=riaBirthday]").focusout(function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
	});

    /* 휴대폰번호 숫자만 입력 여부판단 */
	$(".cti-area input[name=riaMobileNo]").on("keyup", function(e){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
    });
	$(".cti-area input[name=riaMobileNo]").focusout(function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
	});
});


/*날짜 형태 확인*/
function fn_validateDateYn(param) {
	try
	{
		var yearFront = "";
		var year = "";
		var month = "";
		var day = "";

		param = param.replace(/-/g,'');

		// 자리수가 맞지않을때
		if( isNaN(param) || param.length < 6 || param.length == 7) {
			return false;
		}

		if(param.length == 6){
			year = Number(param.substring(0, 2));
			month = Number(param.substring(2, 4));
			day = Number(param.substring(4, 6));
		}
		else if (param.length == 8){
			var date = new Date();
			yearFront = Number(param.substring(0, 4));
			year = Number(param.substring(2, 4));
			month = Number(param.substring(4, 6));
			day = Number(param.substring(6, 8));

			if(yearFront > date.getFullYear()){
				return false;
			}
		}
		var dd = day / 0;

		if( month<1 || month>12 ) {
			return false;
		}

		var maxDaysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
		var maxDay = maxDaysInMonth[month-1];

		// 윤년 체크
		if( month==2 && ( year%4==0 && year%100!=0 || year%400==0 ) ) {
			maxDay = 29;
		}

		if( day<=0 || day>maxDay ) {
			return false;
		}
		return true;

	} catch (err) {
		return false;
	}
}

</script>
<!-- cti 일때만 출력 -->
<div class="cti-area" style="display:none">
    <p>이름</p>
    <input maxlength="20" name="riaName" type="text" title="이름 출력" class="input-text a-c w120px" placeholder="이름" value="">

    <p>생년월일</p>
    <input maxlength="8" name="riaBirthday" type="text" title="생년월일 출력" class="input-text a-c w150px" placeholder="6자리 또는 8자리" value="">

    <p>휴대폰번호</p>
    <input maxlength="11" name="riaMobileNo" type="text" title="휴대폰번호 출력" class="input-text a-c w150px" placeholder="- 없이 입력" value="">

    <p>회원</p>
    <input name="riaMemberYn" type="text" title="회원여부 출력" class="input-text a-c w100px" value="" readyonly="readyonly">

	
		<button type="button" class="button gray ml10" login-at="N"></button>
	
</div>

                <!-- mege-quick-reserve-inculde : 다른 페이지에서 iframe 으로 설정될 영역 -->
                <div class="mege-quick-reserve-inculde">

                    <!-- time-schedule -->
                    <div class="time-schedule quick">
                        <div class="wrap">

							<!-- <button id="prev" class="timeButton">&lt</button> -->

                            <!-- 이전날짜 -->
                            <button id="prev" class="btn-pre timeButton" title="이전 날짜 보기">
                                <i class="iconset ico-cld-pre"></i> <em>이전</em>
                            </button>
                            <!--// 이전날짜 -->

                            <div class="date-list">
                                <!-- 년도, 월 표시 -->
                                <!-- <div class="year-area">
                                    <div class="year" style="left: 30px; z-index: 1; opacity: 1;">2020.06</div>
                                    <div class="year" style="left: 940px; z-index: 1; opacity: 1;">2020.07</div>
                                </div> -->


							<div class="date-area" id="formDeList">
								<div class="wrap" style="position: relative; width: 2100px; border: none;">
									
									<ul id="bookingTime-list">
				
									</ul>
									
								</div>
							</div>
						</div>

                            <!-- 다음날짜 -->
                            <button id="next" class="btn-next timeButton" title="다음 날짜 보기">
                                <i class="iconset ico-cld-next"></i> <em>다음</em>
                            </button>
                            <!--// 다음날짜 -->
                            
                            <!-- <button id="next" class="timeButton">&gt</button> -->

                            <!-- 달력보기 -->
                            <div class="bg-line">
                                <input type="hidden" id="datePicker" value="2020.06.18" class="hasDatepicker">
                                <button type="button" id="calendar" onclick="$('#datePicker').datepicker('show')" class="btn-calendar-large" title="달력보기"> 달력보기</button>

                            </div>
                            <!--// 달력보기 -->
                        </div>
                    </div>
                    <!--// time-schedule -->


					<script type="text/javascript">
						
						
					</script>



                    <!-- quick-reserve-area -->
                    <div class="quick-reserve-area">

                        <!-- movie-choice : 영화 선택  -->
                        <div class="movie-choice">
                            <p class="tit">영화</p>

                            <!-- list-area -->
                            <div class="list-area">

                                <!-- all : 전체 -->
                                <div class="all-list">
                                    <button type="button" class="btn-tab on" id="movieAll">전체</button>
                                    <div class="list">
									<div class="scroll m-scroll mCustomScrollbar _mCS_1"
										id="movieList">
										<div id="mCSB_1"
											class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
											style="max-height: none;" tabindex="0">
											<div id="mCSB_1_container" class="mCSB_container"
												style="position: relative; top: 0; left: 0;" dir="ltr">
												
												<c:catch>
												<ul id="bookingMovie-List">


												</ul>
												</c:catch>
											</div>
											<div id="mCSB_1_scrollbar_vertical"
												class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical"
												style="display: block;">
												<div class="mCSB_draggerContainer">
													<div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
														style="position: absolute; min-height: 30px; display: block; max-height: 310px; top: 0px; height: 61px;">
														<div class="mCSB_dragger_bar" style="line-height: 30px;"></div>
													</div>
													<div class="mCSB_draggerRail"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
                                </div>
                                <!--// all : 전체 -->

                                <!-- other-list  : 큐레이션 -->
                                <div class="other-list">
                                    <button type="button" class="btn-tab" id="movieCrtn">큐레이션</button>
                                    <div class="list">
                                        
                                    </div>
                                </div>
                                <!--// other-list  : 큐레이션 -->
                            </div>
                            <!--// list-area -->

                            <!-- view-area -->
                            <div class="view-area">

                                <!-- 영화 선택 하지 않았을 때 -->
                                <div class="choice-all" id="choiceMovieNone">
                                    <strong>모든영화</strong>
                                    <span>목록에서 영화를 선택하세요.</span>
                                </div>

                                <!-- 영화를 한개라도 선택했을 때 -->
                                <div class="choice-list" id="choiceMovieList" style="display: none;">
                                    <!-- 비어있는 영역 -->
                                    <div class="bg">
                                    </div>
                                    <div class="bg">
                                    </div>
                                    <div class="bg">
                                    </div>
                                </div>
                            </div>
                            <!--// view-area -->
                        </div>
                        <!--// movie-choice : 영화 선택  -->

                        <!-- theater-choice : 극장 선택  -->
                        <div class="theater-choice">
                            <div class="tit-area">
                                <p class="tit">극장</p>
                            </div>

                            <!-- list-area -->
                            <div class="list-area" id="brchTab">

                                <!-- all-list : 전체 -->
                                <div class="all-list">
                                    <button type="button" class="btn-tab on">전체</button>
                                    <div class="list">
                                        <div class="scroll" id="brchList">
                                        
										<ul id="bookingLocal-List">
											<li class="bookingLocal-Local"><button type="button"
													class="btn" id="local1">
													<!-- btn on 하면 활성화  / has-issue 하면 왼쪽에 점 생김-->
													<span class="txt">서울</span>
												</button>
												<div id="localDepth1" class="depth">
													<!-- on (name출력) -->
													<!-- mCS_no_scrollbar 활성화되면 지워짐 -->
													<div
														class="detail-list m-scroll area-cd10 mCustomScrollbar _mCS_4 mCS_no_scrollbar">
														<div id="mCSB_4"
															class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
															style="max-height: none;" tabindex="0">
															<!-- mCS_no_scrollbar_y 활성화되면 지워짐 -->
															<div id="mCSB_4_container"
																class="mCSB_container mCS_no_scrollbar_y"
																style="position: relative; top: 0; left: 0;" dir="ltr">
																<ul>
																	<li class="bookingLocal-Local"><button id="localBtnS1" type="button" 
																			value="목동" >목동</button></li>
																	<li class="bookingLocal-Local"><button id="localBtnS2" type="button" brch-no="1359"
																			brch-nm="강남대로(씨티)" brch-eng-nm="Gangnam-daero (City)"
																			form-at="Y" area-cd="10" area-cd-nm="서울" spclb-yn="N"
																			brch-bokd-unable-at="N" brch-popup-at="Y"
																			brch-popup-no="988" value="쌍용">쌍용</button></li>
																	<li class="bookingLocal-Local"><button id="localBtnS3" type="button" brch-no="1341"
																			brch-nm="강동" brch-eng-nm="Gangdong" form-at="Y"
																			area-cd="10" area-cd-nm="서울" spclb-yn="N"
																			brch-bokd-unable-at="N" brch-popup-at="Y"
																			brch-popup-no="939">강동</button></li>
																</ul>
															</div>
															<div id="mCSB_4_scrollbar_vertical"
																class="mCSB_scrollTools mCSB_4_scrollbar mCS-light mCSB_scrollTools_vertical">
																<div class="mCSB_draggerContainer">
																	<div id="mCSB_4_dragger_vertical" class="mCSB_dragger"
																		style="position: absolute; min-height: 30px; display: none; top: 0px;">
																		<div class="mCSB_dragger_bar"
																			style="line-height: 30px;"></div>
																	</div>
																	<div class="mCSB_draggerRail"></div>
																</div>
															</div>
														</div>
													</div>
												</div></li>

											<li class="bookingLocal-Local"><button type="button" class="btn" id="local2">
													<span calss="txt">경기</span>
												</button>
												<div id="localDepth2" class="depth">
													<div
														class="detail-list m-scroll area-cd30 mCustomScrollbar _mCS_5 mCS_no_scrollbar">
														<div id="mCSB_5"
															class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
															style="max-height: none;" tabindex="0">
															<div id="mCSB_5_container"
																class="mCSB_container mCS_no_scrollbar_y"
																style="position: relative; top: 0; left: 0;" dir="ltr">
																<ul>
																	<li><button id="btn" type="button" brch-no="1372"
																			brch-nm="강남" brch-eng-nm="Gangnam" form-at="Y"
																			area-cd="10" area-cd-nm="서울" spclb-yn="N"
																			brch-bokd-unable-at="N" brch-popup-at="Y"
																			brch-popup-no="998">고양</button></li>
																</ul>
															</div>
															<div id="mCSB_5_scrollbar_vertical"
																class="mCSB_scrollTools mCSB_5_scrollbar mCS-light mCSB_scrollTools_vertical"
																style="display: block;">
																<div class="mCSB_draggerContainer">
																	<div id="mCSB_5_dragger_vertical" class="mCSB_dragger"
																		style="position: absolute; min-height: 30px; display: none; top: 0px; height: 141px; max-height: 310px;">
																		<div class="mCSB_dragger_bar"
																			style="line-height: 30px;"></div>
																	</div>
																	<div class="mCSB_draggerRail"></div>
																</div>
															</div>
														</div>
													</div>
												</div></li>

											<li><button type="button" class="btn" id="35">
													<span calss="txt">인천</span>
												</button>
												<div class="depth">
													<div
														class="detail-list m-scroll area-cd35 mCustomScrollbar _mCS_6 mCS_no_scrollbar">
														<div id="mCSB_6"
															class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
															style="max-height: none;" tabindex="0">
															<div id="mCSB_6_container"
																class="mCSB_container mCS_no_scrollbar_y"
																style="position: relative; top: 0; left: 0;" dir="ltr">
																<ul>
																</ul>
															</div>
															<div id="mCSB_6_scrollbar_vertical"
																class="mCSB_scrollTools mCSB_6_scrollbar mCS-light mCSB_scrollTools_vertical">
																<div class="mCSB_draggerContainer">
																	<div id="mCSB_6_dragger_vertical" class="mCSB_dragger"
																		style="position: absolute; min-height: 30px; display: none; top: 0px; height: 610px; max-height: 310px;">
																		<div class="mCSB_dragger_bar"
																			style="line-height: 30px;"></div>
																	</div>
																	<div class="mCSB_draggerRail"></div>
																</div>
															</div>
														</div>
													</div>
												</div></li>

											<li><button type="button" class="btn" id="45">
													<span calss="txt">대전/충청/세종</span>
												</button>
												<div class="depth">
													<div
														class="detail-list m-scroll area-cd45 mCustomScrollbar _mCS_7 mCS_no_scrollbar">
														<div id="mCSB_7"
															class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
															style="max-height: none;" tabindex="0">
															<div id="mCSB_7_container"
																class="mCSB_container mCS_no_scrollbar_y"
																style="position: relative; top: 0; left: 0;" dir="ltr">
																<ul>
																</ul>
															</div>
															<div id="mCSB_7_scrollbar_vertical"
																class="mCSB_scrollTools mCSB_7_scrollbar mCS-light mCSB_scrollTools_vertical"
																style="display: block;">
																<div class="mCSB_draggerContainer">
																	<div id="mCSB_7_dragger_vertical" class="mCSB_dragger"
																		style="position: absolute; min-height: 30px; display: none; top: 0px; height: 244px; max-height: 310px;">
																		<div class="mCSB_dragger_bar"
																			style="line-height: 30px;"></div>
																	</div>
																	<div class="mCSB_draggerRail"></div>
																</div>
															</div>
														</div>
													</div>
												</div></li>

											<li><button type="button" class="btn" id="55">
													<span calss="txt">부산/대구/경상</span>
												</button>
												<div class="depth">
													<div
														class="detail-list m-scroll area-cd55 mCustomScrollbar _mCS_8 mCS_no_scrollbar">
														<div id="mCSB_8"
															class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
															style="max-height: none;" tabindex="0">
															<div id="mCSB_8_container"
																class="mCSB_container mCS_no_scrollbar_y"
																style="position: relative; top: 0px; left: 0px;"
																dir="ltr">
																<ul>
																</ul>
															</div>
															<div id="mCSB_8_scrollbar_vertical"
																class="mCSB_scrollTools mCSB_8_scrollbar mCS-light mCSB_scrollTools_vertical mCSB_scrollTools_onDrag"
																style="display: block;">
																<div class="mCSB_draggerContainer">
																	<div id="mCSB_8_dragger_vertical"
																		class="mCSB_dragger mCSB_dragger_onDrag"
																		style="position: absolute; min-height: 30px; display: none; top: 0px; height: 146px; max-height: 310px;">
																		<div class="mCSB_dragger_bar"
																			style="line-height: 30px;"></div>
																	</div>
																	<div class="mCSB_draggerRail"></div>
																</div>
															</div>
														</div>
													</div>
												</div></li>

											<li><button type="button" class="btn" id="65">
													<span calss="txt">광주/전라</span>
												</button>
												<div class="depth">
													<div
														class="detail-list m-scroll area-cd65 mCustomScrollbar _mCS_9 mCS_no_scrollbar">
														<div id="mCSB_9"
															class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
															style="max-height: none;" tabindex="0">
															<div id="mCSB_9_container"
																class="mCSB_container mCS_no_scrollbar_y"
																style="position: relative; top: 0; left: 0;" dir="ltr">
																<ul>
																</ul>
															</div>
															<div id="mCSB_9_scrollbar_vertical"
																class="mCSB_scrollTools mCSB_9_scrollbar mCS-light mCSB_scrollTools_vertical">
																<div class="mCSB_draggerContainer">
																	<div id="mCSB_9_dragger_vertical" class="mCSB_dragger"
																		style="position: absolute; min-height: 30px; display: none; top: 0px; height: 406px; max-height: 310px;">
																		<div class="mCSB_dragger_bar"
																			style="line-height: 30px;"></div>
																	</div>
																	<div class="mCSB_draggerRail"></div>
																</div>
															</div>
														</div>
													</div>
												</div></li>

											<li><button type="button" class="btn" id="70">
													<span calss="txt">강원</span>
												</button>
												<div class="depth">
													<div
														class="detail-list m-scroll area-cd70 mCustomScrollbar _mCS_10 mCS_no_scrollbar">
														<div id="mCSB_10"
															class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
															style="max-height: none;" tabindex="0">
															<div id="mCSB_10_container"
																class="mCSB_container mCS_no_scrollbar_y"
																style="position: relative; top: 0; left: 0;" dir="ltr">
																<ul>
																</ul>
															</div>
															<div id="mCSB_10_scrollbar_vertical"
																class="mCSB_scrollTools mCSB_10_scrollbar mCS-light mCSB_scrollTools_vertical">
																<div class="mCSB_draggerContainer">
																	<div id="mCSB_10_dragger_vertical" class="mCSB_dragger"
																		style="position: absolute; min-height: 30px; display: none; top: 0px; height: 914px; max-height: 310px;">
																		<div class="mCSB_dragger_bar"
																			style="line-height: 30px;"></div>
																	</div>
																	<div class="mCSB_draggerRail"></div>
																</div>
															</div>
														</div>
													</div>
												</div></li>

											<li><button type="button" class="btn" id="80">
													<span calss="txt">제주</span>
												</button>
												<div class="depth">
													<div
														class="detail-list m-scroll area-cd80 mCustomScrollbar _mCS_11 mCS_no_scrollbar">
														<div id="mCSB_11"
															class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
															style="max-height: none;" tabindex="0">
															<div id="mCSB_11_container"
																class="mCSB_container mCS_no_scrollbar_y"
																style="position: relative; top: 0; left: 0;" dir="ltr">
																<ul>
																	<li><button id="btn" type="button" brch-no="6901"
																			brch-nm="제주" brch-eng-nm="Jeju" form-at="Y"
																			area-cd="80" area-cd-nm="제주" spclb-yn="N"
																			brch-bokd-unable-at="N" brch-popup-at="N"
																			brch-popup-no="0">제주</button></li>
																</ul>
															</div>
															<div id="mCSB_11_scrollbar_vertical"
																class="mCSB_scrollTools mCSB_11_scrollbar mCS-light mCSB_scrollTools_vertical">
																<div class="mCSB_draggerContainer">
																	<div id="mCSB_11_dragger_vertical" class="mCSB_dragger"
																		style="position: absolute; min-height: 30px; display: none; top: 0px; height: 3657px; max-height: 310px;">
																		<div class="mCSB_dragger_bar"
																			style="line-height: 30px;"></div>
																	</div>
																	<div class="mCSB_draggerRail"></div>
																</div>
															</div>
														</div>
													</div>
												</div></li>

										</ul>
										
									</div>
                                    </div>
                                </div>
                                <!--// all-list : 전체 -->

                                <!-- other-list : 특별관 -->
                                <div class="other-list">
                                    <button type="button" class="btn-tab">특별관</button>
                                    <!-- list -->
                                    <div class="list" id="specialBrchTab">
                                        <div class="scroll" id="specialBrchList">
                                            
                                        </div>
                                    </div>
                                    <!--// list -->
                                </div>
                                <!--// other-list : 특별관 -->
                            </div>
                            <!--// list-area -->

                            <!-- view-area -->
                            <div class="view-area">

                                <!-- 영화관 선택 하지 않았을 때 -->
                                <div class="choice-all" id="choiceBrchNone">
                                    <strong>전체극장</strong>
                                    <span>목록에서 극장을 선택하세요.</span>
                                </div>

                                <!-- 영화관을 한개라도 선택 했을때 -->
                                <div class="choice-list" id="choiceBrchList" style="display: none;">
                                    <div class="bg">
                                    </div>
                                    <div class="bg">
                                    </div>
                                    <div class="bg">
                                    </div>
                                </div>
                            </div>
                            <!--// view-area -->


                        </div>
                        <!--// theater-choice : 영화관 선택  -->

                        <!-- time-choice : 상영시간표 선택 -->
                        <div class="time-choice">
                            <div class="tit-area">
                                <p class="tit">시간</p>

                                <div class="right legend">
                                    <i class="iconset ico-sun" title="조조"></i> 조조
                                    <i class="iconset ico-brunch" title="브런치"></i> 브런치
                                    <i class="iconset ico-moon" title="심야"></i> 심야
                                </div>
                            </div>

                            <!-- hour-schedule : 시간 선택  : 00~30 시-->
                            <div class="hour-schedule">
                                <button type="button" class="btn-prev-time">이전 시간 보기</button>

                                <div class="wrap">
                                    <div class="view" style="position: absolute; width: 1015px;">
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">00</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">01</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">02</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">03</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">04</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">05</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">06</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">07</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">08</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">09</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">10</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">11</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">12</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">13</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">14</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">15</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">16</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">17</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">18</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">19</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">20</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">21</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">22</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">23</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">24</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">25</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">26</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">27</button>
                                        <button type="button" class="hour" disabled="true" style="opacity: 0.5">28</button>
                                        
                                    </div>
                                </div>

                                <button type="button" class="btn-next-time">다음 시간 보기</button>
                            </div>
                            <!--// hour-schedule : 시간 선택  : 00~30 시-->

                            <!-- movie-schedule-area : 시간표 출력 영역-->
                            <div class="movie-schedule-area">

                                <!-- 영화, 영화관 선택 안했을때 -->
                                <!---->
                                <!-- <div class="no-result" id="playScheduleNonList">
                                    <i class="iconset ico-movie-time"></i>
										
								<p class="txt">
                                        영화와 극장을 선택하시면<br>
                                        상영시간표를 비교하여 볼 수 있습니다.
                                    </p>
                                </div> -->


                                <!-- 영화, 영화관 선택 했을때 -->
                                <div class="result">
                                <div class="scroll m-scroll mCustomScrollbar _mCS_17" id="playScheduleList" style="">
									<div id="mCSB_17" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
										style="max-height: none;" tabindex="0">
											<div id="mCSB_17_container" class="mCSB_container" style="position: relative; top: 0; left: 0;" dir="ltr">
												<ul id="bookingRoom-List">
											

												</ul>
											</div>
											<div id="mCSB_30_scrollbar_vertical"
												class="mCSB_scrollTools mCSB_30_scrollbar mCS-light mCSB_scrollTools_vertical"
												style="display: block;">
												<div class="mCSB_draggerContainer">
													<div id="mCSB_30_dragger_vertical" class="mCSB_dragger"
														style="position: absolute; min-height: 30px; display: block; height: 77px; max-height: 420px; top: 0px;">
														<div class="mCSB_dragger_bar" style="line-height: 30px;"></div>
													</div>
													<div class="mCSB_draggerRail"></div>
												</div>
											</div>
										</div>	
										
										
	                               	 </div>
	                           	 </div>
                            <!--// movie-schedule-area : 시간표 출력 영역-->

                        </div>
                        <!--// time-choice : 상영시간표 선택 -->
                    </div>
                    <!--// quick-reserve-area -->
                </div>
                <!--// mege-quick-reserve-inculde : 다른 페이지에서 iframe 으로 설정될 영역 -->

            </div>
            <!--// quick-reserve -->

				<!--// RIA의 경우에만 표시하도록 -->
	            <div class="quick-reserve-ad-area" style="">
	                <script data-id="Sk8ODqWvTfiYIQGxHdGNHw" name="megabox_p/sub/sub@sub_bottom_booking_1100x80?mlink=347" src="//cast.imp.joins.com/persona.js" async=""></script><script src="//cast.imp.joins.com/body/Sk8ODqWvTfiYIQGxHdGNHw/ctd1SjLS0pFootcP6YRZToHmQNtHyjYW5zPeR5KvzXWEAM4qWzAZAbZfUWVaNDF3RlIxS1RVQ3FDS2hjVWNRAstB17q0AhD3dgPLQde6tAIQ93Y.js"></script><div id="Sk8ODqWvTfiYIQGxHdGNHw"><iframe src="//ad.imp.joins.com/html/megabox_p/sub/sub@sub_bottom_booking_1100x80?_cid=Sk8ODqWvTfiYIQGxHdGNHw&amp;_uid=ctd1SjLS0pFootcP6YRZToHmQNtHyjYW5zPeR5KvzXWEAM4qWzAZAbZfUWVaNDF3RlIxS1RVQ3FDS2hjVWNRAstB17q0AhD3dgPLQde6tAIQ93Y&amp;_ref=https%3A%2F%2Fwww.megabox.co.kr%2Fbooking" title="빠른예매 하단 배너영역" height="80px" width="1100px" name="mliframe" scrolling="no" frameborder="0" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"></iframe></div>
	            </div>
			
        </div>
        <!--// inner-wrap -->

<div class="normalStyle" style="display:none;position:fixed;top:0;left:0;background:#000;opacity:0.7;text-indent:-9999px;width:100%;height:100%;z-index:100;">닫기</div><div class="alertStyle" style="display:none;position:fixed;top:0px;left:0px;background:#000;opacity:0.7;width:100%;height:100%;z-index:5005;"></div><div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div></body>


<c:import url="../template/footer.jsp"></c:import>



<script type="text/javascript">

	//예매 날짜 리스트 부분//
	var count = 0;
	var date = new Date();
	var startDay = parseInt((date.getDate()+100+"").substr(1,3));

	var startYear = date.getFullYear();
	var startMonth = date.getMonth()+1+"";
	var startDaily = startDay+"";
	
	if(startMonth.length < 2){
		startMonth = 0 + startMonth;
	}	

	if(startDaily.length < 2){
		startDaily = 0 + startDaily;
	}

	var startDate = startYear + "-" + startMonth + "-" + startDaily;
	console.log(startDate);
	

	if(count==0){
		var startTime = startDay;
	}

	
	

	//console.log(startDay);
	 
	bookingTimeZone(startDay);
	
	$("#next").click(function(){
		$("#bookingTime-list").empty();
		startDay = startDay + 1;
		//startTime = startTime + 1;
		count++;
		bookingTimeZone(startDay);
	});
	
	$("#prev").click(function(){
		$("#bookingTime-list").empty();
		startDay = startDay - 1;
		//startTime = startTime - 1;
		count--;
		bookingTimeZone(startDay);
	});
	
	function bookingTimeZone(startDay){
		$.get("bookingTimeZone?startDay="+startDay, function(result){
			$("#bookingTime-list").append(result);
		});
	
		if(count == 0){
			$("#prev").prop("disabled", "disabled");
			$("#next").removeAttr("disabled");
		} else if(count > 0 && count < 7){
			$("#prev").removeAttr("disabled");
			$("#next").removeAttr("disabled");
		} else if(count == 14){
			$("#prev").removeAttr("disabled");
			$("#next").prop("disabled", "disabled");
		}
	}
	
	
	$(".wrap").on("click",  function(){
	
		/* $(".dateButton").addClass("on"); */
	
	});
	
	
	$(".wrap").on("mouseover", ".bookingTime-list", function(){
		$(this).css("border-bottom", "2px solid #503396");
	
		/* $(this).click(function(){
			$(".bookingTime-list > button").addClass("on");
		}); */
		
	});
	
	$(".wrap").on("mouseout", ".bookingTime-list", function(){
		$(this).css("border-bottom", "1px solid #d8d9db");
	});
	//예매 날짜 리스트 부분//
	
	
	//예매 날짜별로 영화 리스트 부분//
	/* startTime = startDay+"";
	
	if(startTime.length<2){
		startTime = 0+startTime;
	}
	bookingMovieList(startTime);
	//startTime = parseInt(startTime);
	
	function bookingMovieList(startTime){
		$.get("bookingMovieList?startTime="+startTime, function(result){
			$("#bookingMovie-List").append(result);
		});	
	}
	
	$("#bookingTime-list").on("click", ".bookingTime-list",function(){
		$("#bookingMovie-List").empty();
		var days = $(this).text().split('/');
		startTime = parseInt(days[0]);

		startTime = startTime+"";
		
		if(startTime.length<2){
			startTime = 0+startTime;
		}
		
		//alert(startTime);
		bookingMovieList(startTime);
	}); */


	//-----------------------------------------------
	
	bookingMovieList(startDate);
	
	function bookingMovieList(startDate){
		$.get("bookingMovieList?startTime="+startDate, function(result){
			$("#bookingMovie-List").append(result);
		});	
	}
	
	$("#bookingTime-list").on("click", ".bookingTime-list",function(){
		$("#bookingMovie-List").empty();
		var days = $(this).text().split('/');
		startTime = parseInt(days[0]);

		startTime = startTime+"";
		
		if(startTime.length<2){
			startTime = 0+startTime;
		}
		
		//alert(startTime);
		bookingMovieList(startTime);
	});
	

	
	//예매 날짜별로 영화 리스트 부분//
	var lastDepth;
	var lastlocal;
	//localCode 눌렀을 때
	$(".bookingLocal-Local").on("click", "#local1", function(){
		$(lastDepth).removeClass("on");
		$(lastlocal).removeClass("on");
		$(this).addClass("on");
		$("#localDepth1").addClass("on");
		lastDepth = "#localDepth1";
		lastlocal = "#local1";

		})
	$(".bookingLocal-Local").on("click", "#local2", function(){
		$(lastDepth).removeClass("on");
		$(lastlocal).removeClass("on");
		$(this).addClass("on");
		$("#localDepth2").addClass("on");
		lastDepth = "#localDepth2";
		lastlocal = "#local2";
		})
	
// 	$(".bookingLocal-Local").on("click", "#local2", function(){
// 		$(this).addClass("on");
// 		$("#localDepth2").addClass("on");
// 	});
	 

	//예매 날짜별로 극장을 선택했을 때 리스트 부분//
	function bookingRoomList(startTime, name){
		$.get("bookingRoomList?startTime="+startTime+"&name="+name, function(result){
			$("#bookingRoom-List").append(result);
		});
	}

	var name = "";
	
	//name
	for(var i=1; i<10; i++){
		
		$("#localBtnS"+i).on("click" , function(){
			$(this).addClass("on");
			$("#bookingRoom-List").empty();

			name = encodeURIComponent($(this).val());
			/* alert(name);	
			alert(startTime); */

			bookingRoomList(startTime, name);
		});

		
		/* $(".bookingLocal-Local").on("click", "#localBtnS"+i, function(){
			$(this).addClass("on");
			alert("목동");
			//$("#bookingRoom-List").
		}); */
		
		/* $(".bookingLocal-Local").on("click", "#localBtnS2", function(){
			$(this).addClass("on");
		}); */
	}
	//예매 날짜별로 극장을 선택했을 때 리스트 부분//
	

	//
	
	
	
</script>

</body>
</html>