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
                                        <div class="scroll m-scroll mCustomScrollbar _mCS_2 mCS_no_scrollbar" id="crtnMovieList"><div id="mCSB_2" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_2_container" class="mCSB_container mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul><li><button type="button" class="btn" movie-nm="콜 미 바이 유어 네임" movie-no="20021700" img-path="/SharedImg/2020/06/16/T43wKaYuW6i30Kc5Rd1SJ8gdtoDLzgwO_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-19">청소년관람불가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">콜 미 바이 유어 네임</span></button></li><li><button type="button" class="btn" movie-nm="야구소녀" movie-no="20019300" img-path="/SharedImg/2020/05/26/4DpEOKISeL20EXabwXkfsfaeeJW27heu_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-12">12세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">야구소녀</span></button></li><li><button type="button" class="btn" movie-nm="[시네도슨트] 루브르 박물관" movie-no="20002500" img-path="/SharedImg/2020/02/10/pYFBsgbriaDyNbaCMcVH5GCkXCpdx4BZ_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">[시네도슨트] 루브르 박물관</span></button></li><li><button type="button" class="btn" movie-nm="패왕별희 디 오리지널" movie-no="20004800" img-path="/SharedImg/2020/04/16/3OHRKnHHelry9f7WY1vM9qghwK48Sr0I_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">패왕별희 디 오리지널</span></button></li><li><button type="button" class="btn" movie-nm="카페 벨에포크" movie-no="20013300" img-path="/SharedImg/2020/05/13/Ke4lvcHauIeImAMNTOAn1IfCcIbLUAaT_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">카페 벨에포크</span></button></li><li><button type="button" class="btn" movie-nm="환상의 마로나" movie-no="20020200" img-path="/SharedImg/2020/05/25/Hk5CYZskPmQjedi5z7Gl8j7AhtMLhppx_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">환상의 마로나</span></button></li><li><button type="button" class="btn" movie-nm="전망좋은 방" movie-no="20020000" img-path="/SharedImg/2020/05/21/2PdCEHVNa13k4zwyEWrhyHY1iooB9kOl_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">전망좋은 방</span></button></li><li><button type="button" class="btn" movie-nm="[오페라] 피델리오" movie-no="20014500" img-path="/SharedImg/2020/04/27/3jXoFpofS8rB3xFhn1JwRWsKTeqv9MQC_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">[오페라] 피델리오</span></button></li><li><button type="button" class="btn" movie-nm="[오페라] 마담 버터플라이 @ The Met" movie-no="20013900" img-path="/SharedImg/2020/04/20/rqm2j2jeEeUaLhnbaTvhcWLZqpqURrwt_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">[오페라] 마담 버터플라이 @ The Met</span></button></li><li><button type="button" class="btn" movie-nm="나는보리" movie-no="20004900" img-path="/SharedImg/2020/04/17/imYX3U493li0BBZKeH9NlqGvwVqi2GBR_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">나는보리</span></button></li><li><button type="button" class="btn" movie-nm="[팝콘클래식] 와인의 영혼 IN VINO VERITAS" movie-no="20021000" img-path="/SharedImg/2020/06/02/SKnIh2xmDHhogB5v6FeGxmiWQfvDXpSG_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">[팝콘클래식] 와인의 영혼 IN VINO VERITAS</span></button></li><li><button type="button" class="btn" movie-nm="파리 오페라 발레단" movie-no="20022100" img-path="/SharedImg/2020/06/04/q2FAKqNfvCKs9bbqOu9yFQulQ8AOgHru_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">파리 오페라 발레단</span></button></li><li><button type="button" class="btn" movie-nm="[오페라] 아크나텐 @The Met" movie-no="20025700" img-path="/SharedImg/2020/06/15/mkuTBD77ntyhS0FQUuZcYX03Fh3Cur6K_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">[오페라] 아크나텐 @The Met</span></button></li><li><button type="button" class="btn" movie-nm="라라랜드" movie-no="20007800" img-path="/SharedImg/2020/03/11/Qgl73W9FxEMYJnnaOYPFtyqSrqB3vmJ2_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-12">12세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">라라랜드</span></button></li><li><button type="button" class="btn" movie-nm="[팝콘클래식] 오페라와 다양한 장르의 음악들" movie-no="20021200" img-path="/SharedImg/2020/06/02/72PgiGFVn6lvlIWvPNK7JGMJi1l1F2of_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">[팝콘클래식] 오페라와 다양한 장르의 음악들</span></button></li><li><button type="button" class="btn" movie-nm="조금씩, 천천히 안녕" movie-no="20013600" img-path="/SharedImg/2020/05/15/QYiZX0Nl68ib7PH81yY8nVyszkm1fK7Q_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">조금씩, 천천히 안녕</span></button></li><li><button type="button" class="btn" movie-nm="카메론 포스트의 잘못된 교육" movie-no="20019100" img-path="/SharedImg/2020/05/25/9CfQz9SGfJPvsyP5SPLBQUprmDA3oQ7w_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">카메론 포스트의 잘못된 교육</span></button></li><li><button type="button" class="btn" movie-nm="바다로 가자" movie-no="20020800" img-path="/SharedImg/2020/05/27/nkPQnTtUwoUS9OlGaTeqpveUvXY3yhP4_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">바다로 가자</span></button></li></ul></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-light mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
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
                                            <ul><li><button type="button" class="btn has-issue" id="MX"><span calss="txt">MX(10)</span></button><div class="depth"><div class="detail-list m-scroll area-cdMX mCustomScrollbar _mCS_12 mCS_no_scrollbar"><div id="mCSB_12" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_12_container" class="mCSB_container mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul><li><button id="btn" type="button" brch-no="4121" brch-nm="고양스타필드" brch-eng-nm="Goyang Starfield" form-at="Y" area-cd="MX" area-cd-nm="MX" spclb-yn="Y" ori-area-cd="30" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="976">고양스타필드</button></li><li><button id="btn" type="button" brch-no="7011" brch-nm="대구신세계(동대구)" brch-eng-nm="Daegu Shinsegae (Dongdaegu)" form-at="Y" area-cd="MX" area-cd-nm="MX" spclb-yn="Y" ori-area-cd="55" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">대구신세계(동대구)</button></li><li><button id="btn" type="button" brch-no="0017" brch-nm="대전현대아울렛" brch-eng-nm="Megabox Daejeon Hyundai Outlet Branch" form-at="N" area-cd="MX" area-cd-nm="MX" spclb-yn="Y" ori-area-cd="45" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0"><span class="jq-tooltip" title="오픈예정">대전현대아울렛</span><i class="iconset ico-theater-open" title="오픈예정">오픈예정</i></button></li><li><button id="btn" type="button" brch-no="1581" brch-nm="목동" brch-eng-nm="Mokdong" form-at="Y" area-cd="MX" area-cd-nm="MX" spclb-yn="Y" ori-area-cd="10" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="968">목동</button></li><li><button id="btn" type="button" brch-no="1211" brch-nm="상암월드컵경기장" brch-eng-nm="Sangam World Cup Stadium" form-at="Y" area-cd="MX" area-cd-nm="MX" spclb-yn="Y" ori-area-cd="10" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">상암월드컵경기장</button></li><li><button id="btn" type="button" brch-no="1331" brch-nm="성수" brch-eng-nm="SEOUNGSU" form-at="Y" area-cd="MX" area-cd-nm="MX" spclb-yn="Y" ori-area-cd="10" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="1006">성수</button></li><li><button id="btn" type="button" brch-no="4062" brch-nm="송도" brch-eng-nm="Song-do" form-at="Y" area-cd="MX" area-cd-nm="MX" spclb-yn="Y" ori-area-cd="35" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="927">송도</button></li><li><button id="btn" type="button" brch-no="4431" brch-nm="영통" brch-eng-nm="Yeongtong" form-at="Y" area-cd="MX" area-cd-nm="MX" spclb-yn="Y" ori-area-cd="30" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="944">영통</button></li><li><button id="btn" type="button" brch-no="1351" brch-nm="코엑스" brch-eng-nm="COEX" form-at="N" area-cd="MX" area-cd-nm="MX" spclb-yn="Y" ori-area-cd="10" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">코엑스</button></li><li><button id="btn" type="button" brch-no="4651" brch-nm="하남스타필드" brch-eng-nm="Hanam Starfield" form-at="Y" area-cd="MX" area-cd-nm="MX" spclb-yn="Y" ori-area-cd="30" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="982">하남스타필드</button></li></ul></div><div id="mCSB_12_scrollbar_vertical" class="mCSB_scrollTools mCSB_12_scrollbar mCS-light mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_12_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div></div></li><li><button type="button" class="btn" id="CFT"><span calss="txt">COMFORT(31)</span></button><div class="depth"><div class="detail-list m-scroll area-cdCFT mCustomScrollbar _mCS_13 mCS_no_scrollbar"><div id="mCSB_13" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_13_container" class="mCSB_container mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul><li><button id="btn" type="button" brch-no="4041" brch-nm="검단" brch-eng-nm="Geomdan" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="35" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="945">검단</button></li><li><button id="btn" type="button" brch-no="5021" brch-nm="광주상무" brch-eng-nm="Gwangju Sangmu" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="65" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="970">광주상무</button></li><li><button id="btn" type="button" brch-no="5061" brch-nm="광주하남" brch-eng-nm="Gwangju Hanam" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="65" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="969">광주하남</button></li><li><button id="btn" type="button" brch-no="7022" brch-nm="대구(칠성로)" brch-eng-nm="Daegu (Chilseong-ro)" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="55" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">대구(칠성로)</button></li><li><button id="btn" type="button" brch-no="3021" brch-nm="대전" brch-eng-nm="Daejeon" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="45" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">대전</button></li><li><button id="btn" type="button" brch-no="6161" brch-nm="덕천" brch-eng-nm="Deokcheon" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="55" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="931">덕천</button></li><li><button id="btn" type="button" brch-no="1003" brch-nm="동대문" brch-eng-nm="Dong Dae Moon" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="10" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">동대문</button></li><li><button id="btn" type="button" brch-no="4451" brch-nm="동탄" brch-eng-nm="Dongtan" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="30" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="923">동탄</button></li><li><button id="btn" type="button" brch-no="6312" brch-nm="마산" brch-eng-nm="Masan" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="55" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="986">마산</button></li><li><button id="btn" type="button" brch-no="1581" brch-nm="목동" brch-eng-nm="Mokdong" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="10" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="968">목동</button></li><li><button id="btn" type="button" brch-no="4113" brch-nm="백석" brch-eng-nm="Baek Seok" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="30" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="940">백석</button></li><li><button id="btn" type="button" brch-no="6906" brch-nm="부산대" brch-eng-nm="Busan &#8203;&#8203;National University" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="55" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="941">부산대</button></li><li><button id="btn" type="button" brch-no="1311" brch-nm="상봉" brch-eng-nm="Sangbong" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="10" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="980">상봉</button></li><li><button id="btn" type="button" brch-no="1211" brch-nm="상암월드컵경기장" brch-eng-nm="Sangam World Cup Stadium" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="10" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">상암월드컵경기장</button></li><li><button id="btn" type="button" brch-no="0008" brch-nm="세종청사" brch-eng-nm="SejongChungsa" form-at="N" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="45" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0"><span class="jq-tooltip" title="오픈예정">세종청사</span><i class="iconset ico-theater-open" title="오픈예정">오픈예정</i></button></li><li><button id="btn" type="button" brch-no="4062" brch-nm="송도" brch-eng-nm="Song-do" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="35" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="927">송도</button></li><li><button id="btn" type="button" brch-no="4291" brch-nm="시흥배곧" brch-eng-nm="Siheung Baegod" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="30" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">시흥배곧</button></li><li><button id="btn" type="button" brch-no="1202" brch-nm="신촌" brch-eng-nm="Sin Chon" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="10" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">신촌</button></li><li><button id="btn" type="button" brch-no="6261" brch-nm="양산" brch-eng-nm="Yangsan" form-at="N" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="55" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="932">양산</button></li><li><button id="btn" type="button" brch-no="6262" brch-nm="양산라피에스타" brch-eng-nm="Yangsan La Fiesta" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="55" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="957">양산라피에스타</button></li><li><button id="btn" type="button" brch-no="0012" brch-nm="용인기흥" brch-eng-nm="Yongin Giheung" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="30" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0"><span class="jq-tooltip" title="신규오픈">용인기흥</span><i class="iconset ico-theater-renewal" title="신규오픈">신규오픈</i></button></li><li><button id="btn" type="button" brch-no="4462" brch-nm="용인테크노밸리" brch-eng-nm="Yongin Technoveli" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="30" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">용인테크노밸리</button></li><li><button id="btn" type="button" brch-no="6811" brch-nm="울산" brch-eng-nm="Ulsan" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="55" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="956">울산</button></li><li><button id="btn" type="button" brch-no="0014" brch-nm="창원내서" brch-eng-nm="Megabox Changwon Naeseo Branch" form-at="N" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="55" brch-bokd-unable-at="Y" brch-popup-at="N" brch-popup-no="0"><span class="jq-tooltip" title="오픈예정">창원내서</span><i class="iconset ico-theater-open" title="오픈예정">오픈예정</i></button></li><li><button id="btn" type="button" brch-no="3301" brch-nm="천안" brch-eng-nm="Cheonan" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="45" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">천안</button></li><li><button id="btn" type="button" brch-no="4043" brch-nm="청라지젤" brch-eng-nm="Cheongna Giselle" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="35" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="928">청라지젤</button></li><li><button id="btn" type="button" brch-no="1351" brch-nm="코엑스" brch-eng-nm="COEX" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="10" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">코엑스</button></li><li><button id="btn" type="button" brch-no="4112" brch-nm="킨텍스" brch-eng-nm="KINTEX" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="30" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="981">킨텍스</button></li><li><button id="btn" type="button" brch-no="4132" brch-nm="파주금촌" brch-eng-nm="Paju Geumchon" form-at="N" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="30" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">파주금촌</button></li><li><button id="btn" type="button" brch-no="4115" brch-nm="파주운정" brch-eng-nm="Paju Unjeong" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="30" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">파주운정</button></li><li><button id="btn" type="button" brch-no="6121" brch-nm="해운대(장산)" brch-eng-nm=" Haeundae (Jangsan)" form-at="Y" area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y" ori-area-cd="55" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">해운대(장산)</button></li></ul></div><div id="mCSB_13_scrollbar_vertical" class="mCSB_scrollTools mCSB_13_scrollbar mCS-light mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_13_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div></div></li><li><button type="button" class="btn has-issue" id="TBQ"><span calss="txt">THE BOUTIQUE(6)</span></button><div class="depth"><div class="detail-list m-scroll area-cdTBQ mCustomScrollbar _mCS_14 mCS_no_scrollbar"><div id="mCSB_14" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_14_container" class="mCSB_container mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul><li><button id="btn" type="button" brch-no="4631" brch-nm="분당" brch-eng-nm="Bundang" form-at="Y" area-cd="TBQ" area-cd-nm="THE BOUTIQUE" spclb-yn="Y" ori-area-cd="30" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="958">분당</button></li><li><button id="btn" type="button" brch-no="1331" brch-nm="성수" brch-eng-nm="SEOUNGSU" form-at="Y" area-cd="TBQ" area-cd-nm="THE BOUTIQUE" spclb-yn="Y" ori-area-cd="10" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="1006">성수</button></li><li><button id="btn" type="button" brch-no="1371" brch-nm="센트럴" brch-eng-nm="Central" form-at="Y" area-cd="TBQ" area-cd-nm="THE BOUTIQUE" spclb-yn="Y" ori-area-cd="10" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="1002">센트럴</button></li><li><button id="btn" type="button" brch-no="4104" brch-nm="일산벨라시타" brch-eng-nm="Ilsan Bellashita" form-at="Y" area-cd="TBQ" area-cd-nm="THE BOUTIQUE" spclb-yn="Y" ori-area-cd="30" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="942">일산벨라시타</button></li><li><button id="btn" type="button" brch-no="1351" brch-nm="코엑스" brch-eng-nm="COEX" form-at="Y" area-cd="TBQ" area-cd-nm="THE BOUTIQUE" spclb-yn="Y" ori-area-cd="10" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">코엑스</button></li><li><button id="btn" type="button" brch-no="4651" brch-nm="하남스타필드" brch-eng-nm="Hanam Starfield" form-at="Y" area-cd="TBQ" area-cd-nm="THE BOUTIQUE" spclb-yn="Y" ori-area-cd="30" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="982">하남스타필드</button></li></ul></div><div id="mCSB_14_scrollbar_vertical" class="mCSB_scrollTools mCSB_14_scrollbar mCS-light mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_14_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div></div></li><li><button type="button" class="btn has-issue" id="MKB"><span calss="txt">MEGABOX KIDS(4)</span></button><div class="depth"><div class="detail-list m-scroll area-cdMKB mCustomScrollbar _mCS_15 mCS_no_scrollbar"><div id="mCSB_15" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_15_container" class="mCSB_container mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul><li><button id="btn" type="button" brch-no="6312" brch-nm="마산" brch-eng-nm="Masan" form-at="Y" area-cd="MKB" area-cd-nm="MEGABOX KIDS" spclb-yn="Y" ori-area-cd="55" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="986">마산</button></li><li><button id="btn" type="button" brch-no="4431" brch-nm="영통" brch-eng-nm="Yeongtong" form-at="N" area-cd="MKB" area-cd-nm="MEGABOX KIDS" spclb-yn="Y" ori-area-cd="30" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="944">영통</button></li><li><button id="btn" type="button" brch-no="4651" brch-nm="하남스타필드" brch-eng-nm="Hanam Starfield" form-at="Y" area-cd="MKB" area-cd-nm="MEGABOX KIDS" spclb-yn="Y" ori-area-cd="30" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="982">하남스타필드</button></li><li><button id="btn" type="button" brch-no="6121" brch-nm="해운대(장산)" brch-eng-nm=" Haeundae (Jangsan)" form-at="Y" area-cd="MKB" area-cd-nm="MEGABOX KIDS" spclb-yn="Y" ori-area-cd="55" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">해운대(장산)</button></li></ul></div><div id="mCSB_15_scrollbar_vertical" class="mCSB_scrollTools mCSB_15_scrollbar mCS-light mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_15_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div></div></li><li><button type="button" class="btn has-issue" id="TFC"><span calss="txt">THE FIRST CLUB(1)</span></button><div class="depth"><div class="detail-list m-scroll area-cdTFC mCustomScrollbar _mCS_16 mCS_no_scrollbar"><div id="mCSB_16" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_16_container" class="mCSB_container mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul><li><button id="btn" type="button" brch-no="4112" brch-nm="킨텍스" brch-eng-nm="KINTEX" form-at="Y" area-cd="TFC" area-cd-nm="THE FIRST CLUB" spclb-yn="Y" ori-area-cd="30" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="981">킨텍스</button></li></ul></div><div id="mCSB_16_scrollbar_vertical" class="mCSB_scrollTools mCSB_16_scrollbar mCS-light mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_16_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div></div></li></ul>
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
                                <div class="no-result" id="playScheduleNonList">
                                    <i class="iconset ico-movie-time"></i>

                                    <p class="txt">
                                        영화와 극장을 선택하시면<br>
                                        상영시간표를 비교하여 볼 수 있습니다.
                                    </p>
                                </div>


                                <!-- 영화, 영화관 선택 했을때 -->
                                <div class="result">
                                    <div class="scroll m-scroll mCustomScrollbar _mCS_3 mCS_no_scrollbar" id="playScheduleList" style="display: none;"><div id="mCSB_3" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 760px;" tabindex="0"><div id="mCSB_3_container" class="mCSB_container mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-light mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>

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

	if(count==0){
		var startTime = startDay;
	}

	//console.log(startDay);
	 
	bookingTimeZone(startDay);
	
	$("#next").click(function(){
		$("#bookingTime-list").empty();
		startDay = startDay + 1;
		startTime = startTime + 1;
		count++;
		bookingTimeZone(startDay);
	});
	
	$("#prev").click(function(){
		$("#bookingTime-list").empty();
		startDay = startDay - 1;
		startTime = startTime - 1;
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
	startTime = startDay+"";
	
	if(startTime.length<2){
		startTime = 0+startTime;
	}
	bookingMovieList(startTime);
	startTime = parseInt(startTime);
	
	function bookingMovieList(startTime){
		$.get("bookingMovieList?startTime="+startTime, function(result){
			$("#bookingMovie-List").append(result);
		});	
	}
	
	/* $("#bookingTime-list").on("click", ".bookingTime-list",function(){
		$("#bookingMovie-List").empty();
		alert(startTime);
		bookingMovieList(startTime);
	}); */

	$("#bookingTime-list").on("click", "#day0", function(){
		$("#bookingMovie-List").empty();
		startTime = startDay+"";
		if(startTime.length<2){
			startTime = 0+startTime;
		}
		//alert(startTime);
		bookingMovieList(startTime);
		startTime = parseInt(startTime);
	});
	$("#bookingTime-list").on("click", "#day1", function(){
		$("#bookingMovie-List").empty();
		var startPlus1 = startTime+1;
		startTime = startPlus1+"";
		if(startTime.length<2){
			startTime = 0+startTime;
		}
		//alert(startTime);
		bookingMovieList(startTime);
		startTime = parseInt(startTime)-1;
	});
	$("#bookingTime-list").on("click", "#day2", function(){
		$("#bookingMovie-List").empty();
		var startPlus2 = startTime+2;
		startTime = startPlus2+"";
		if(startTime.length<2){
			startTime = 0+startTime;
		}
		//alert(startTime);
		bookingMovieList(startTime);
		startTime = parseInt(startTime)-2;
	});
	$("#bookingTime-list").on("click", "#day3", function(){
		$("#bookingMovie-List").empty();
		var startPlus3 = startTime+3;
		startTime = startPlus3+"";
		if(startTime.length<2){
			startTime = 0+startTime;
		}
		//alert(startTime);
		bookingMovieList(startTime);
		startTime = parseInt(startTime)-3;
	});
	$("#bookingTime-list").on("click", "#day4", function(){
		$("#bookingMovie-List").empty();
		var startPlus4 = startTime+4;
		startTime = startPlus4+"";
		if(startTime.length<2){
			startTime = 0+startTime;
		}
		//alert(startTime);
		bookingMovieList(startTime);
		startTime = parseInt(startTime)-4;
	});
	$("#bookingTime-list").on("click", "#day5", function(){
		$("#bookingMovie-List").empty();
		var startPlus5 = startTime+5;
		startTime = startPlus5+"";
		if(startTime.length<2){
			startTime = 0+startTime;
		}
		//alert(startTime);
		bookingMovieList(startTime);
		startTime = parseInt(startTime)-5;
	});
	$("#bookingTime-list").on("click", "#day6", function(){
		$("#bookingMovie-List").empty();
		var startPlus6 = startTime+6;
		startTime = startPlus6+"";
		if(startTime.length<2){
			startTime = 0+startTime;
		}
		//alert(startTime);
		bookingMovieList(startTime);
		startTime = parseInt(startTime)-6;
	});
	$("#bookingTime-list").on("click", "#day7", function(){
		$("#bookingMovie-List").empty();
		var startPlus7 = startTime+7;
		startTime = startPlus7+"";
		if(startTime.length<2){
			startTime = 0+startTime;
		}
		//alert(startTime);
		bookingMovieList(startTime);
		startTime = parseInt(startTime)-7;
	});
	$("#bookingTime-list").on("click", "#day8", function(){
		$("#bookingMovie-List").empty();
		var startPlus8 = startTime+8;
		startTime = startPlus8+"";
		if(startTime.length<2){
			startTime = 0+startTime;
		}
		//alert(startTime);
		bookingMovieList(startTime);
		startTime = parseInt(startTime)-8;
	});
	$("#bookingTime-list").on("click", "#day9", function(){
		$("#bookingMovie-List").empty();
		var startPlus9 = startTime+9;
		startTime = startPlus9+"";
		if(startTime.length<2){
			startTime = 0+startTime;
		}
		//alert(startTime);
		bookingMovieList(startTime);
		startTime = parseInt(startTime)-9;
	});
	$("#bookingTime-list").on("click", "#day10", function(){
		$("#bookingMovie-List").empty();
		var startPlus10 = startTime+10;
		startTime = startPlus10+"";
		if(startTime.length<2){
			startTime = 0+startTime;
		}
		//alert(startTime);
		bookingMovieList(startTime);
		startTime = parseInt(startTime)-10;
	});
	$("#bookingTime-list").on("click", "#day11", function(){
		$("#bookingMovie-List").empty();
		var startPlus11 = startTime+11;
		startTime = startPlus11+"";
		if(startTime.length<2){
			startTime = 0+startTime;
		}
		//alert(startTime);
		bookingMovieList(startTime);
		startTime = parseInt(startTime)-11;
	});
	$("#bookingTime-list").on("click", "#day12", function(){
		$("#bookingMovie-List").empty();
		var startPlus12 = startTime+12;
		startTime = startPlus12+"";
		if(startTime.length<2){
			startTime = 0+startTime;
		}
		//alert(startTime);
		bookingMovieList(startTime);
		startTime = parseInt(startTime)-12;
	});
	$("#bookingTime-list").on("click", "#day13", function(){
		$("#bookingMovie-List").empty();
		var startPlus13 = startTime+13;
		startTime = startPlus13+"";
		if(startTime.length<2){
			startTime = 0+startTime;
		}
		//alert(startTime);
		bookingMovieList(startTime);
		startTime = parseInt(startTime)-13;
	});
	//예매 날짜별로 영화 리스트 부분//

	
	
</script>

</body>
</html>