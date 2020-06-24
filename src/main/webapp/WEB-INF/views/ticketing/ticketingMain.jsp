<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:import url="../template/header_css.jsp"></c:import>

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

                            <!-- 이전날짜 -->
                            <button type="button" title="이전 날짜 보기" class="btn-pre" disabled="true">
                                <i class="iconset ico-cld-pre"></i> <em>이전</em>
                            </button>
                            <!--// 이전날짜 -->

                            <div class="date-list">
                                <!-- 년도, 월 표시 -->
                                <div class="year-area">
                                    <div class="year" style="left: 30px; z-index: 1; opacity: 1;">2020.06</div>
                                    <div class="year" style="left: 940px; z-index: 1; opacity: 1;">2020.07</div>
                                </div>


							<div class="date-area" id="formDeList">
								<div class="wrap"
									style="position: relative; width: 2100px; border: none; left: -70px;">
									<button class="disabled" type="button" date-data="2020.06.17"
										month="5" tabindex="-1">
										<span class="ir">2020년 6월</span><em
											style="pointer-events: none;">17<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">수</span><span
											class="day-en" style="pointer-events: none; display: none">Wed</span>
									</button>
									<button class="on" type="button" date-data="2020.06.18"
										month="5">
										<span class="ir">2020년 6월</span><em
											style="pointer-events: none;">18<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">오늘</span><span
											class="day-en" style="pointer-events: none; display: none">Thu</span>
									</button>
									<button class="" type="button" date-data="2020.06.19" month="5">
										<span class="ir">2020년 6월</span><em
											style="pointer-events: none;">19<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">내일</span><span
											class="day-en" style="pointer-events: none; display: none">Fri</span>
									</button>
									<button class="sat" type="button" date-data="2020.06.20"
										month="5">
										<span class="ir">2020년 6월</span><em
											style="pointer-events: none;">20<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">토</span><span
											class="day-en" style="pointer-events: none; display: none">Sat</span>
									</button>
									<button class="holi" type="button" date-data="2020.06.21"
										month="5">
										<span class="ir">2020년 6월</span><em
											style="pointer-events: none;">21<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">일</span><span
											class="day-en" style="pointer-events: none; display: none">Sun</span>
									</button>
									<button class="" type="button" date-data="2020.06.22" month="5">
										<span class="ir">2020년 6월</span><em
											style="pointer-events: none;">22<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">월</span><span
											class="day-en" style="pointer-events: none; display: none">Mon</span>
									</button>
									<button class="" type="button" date-data="2020.06.23" month="5">
										<span class="ir">2020년 6월</span><em
											style="pointer-events: none;">23<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">화</span><span
											class="day-en" style="pointer-events: none; display: none">Tue</span>
									</button>
									<button class="" type="button" date-data="2020.06.24" month="5">
										<span class="ir">2020년 6월</span><em
											style="pointer-events: none;">24<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">수</span><span
											class="day-en" style="pointer-events: none; display: none">Wed</span>
									</button>
									<button class="" type="button" date-data="2020.06.25" month="5">
										<span class="ir">2020년 6월</span><em
											style="pointer-events: none;">25<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">목</span><span
											class="day-en" style="pointer-events: none; display: none">Thu</span>
									</button>
									<button class="disabled" type="button" date-data="2020.06.26"
										month="5">
										<span class="ir">2020년 6월</span><em
											style="pointer-events: none;">26<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">금</span><span
											class="day-en" style="pointer-events: none; display: none">Fri</span>
									</button>
									<button class="sat" type="button" date-data="2020.06.27"
										month="5">
										<span class="ir">2020년 6월</span><em
											style="pointer-events: none;">27<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">토</span><span
											class="day-en" style="pointer-events: none; display: none">Sat</span>
									</button>
									<button class="holi" type="button" date-data="2020.06.28"
										month="5">
										<span class="ir">2020년 6월</span><em
											style="pointer-events: none;">28<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">일</span><span
											class="day-en" style="pointer-events: none; display: none">Sun</span>
									</button>
									<button class="" type="button" date-data="2020.06.29" month="5">
										<span class="ir">2020년 6월</span><em
											style="pointer-events: none;">29<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">월</span><span
											class="day-en" style="pointer-events: none; display: none">Mon</span>
									</button>
									<button class="" type="button" date-data="2020.06.30" month="5">
										<span class="ir">2020년 6월</span><em
											style="pointer-events: none;">30<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">화</span><span
											class="day-en" style="pointer-events: none; display: none">Tue</span>
									</button>
									<button class="" type="button" date-data="2020.07.01" month="6">
										<span class="ir">2020년 7월</span><em
											style="pointer-events: none;">1<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">수</span><span
											class="day-en" style="pointer-events: none; display: none">Wed</span>
									</button>
									<button class="disabled" type="button" date-data="2020.07.02"
										month="6" tabindex="-1">
										<span class="ir">2020년 7월</span><em
											style="pointer-events: none;">2<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">목</span><span
											class="day-en" style="pointer-events: none; display: none">Thu</span>
									</button>
								</div>
							</div>
						</div>

                            <!-- 다음날짜 -->
                            <button type="button" title="다음 날짜 보기" class="btn-next">
                                <i class="iconset ico-cld-next"></i> <em>다음</em>
                            </button>
                            <!--// 다음날짜 -->

                            <!-- 달력보기 -->
                            <div class="bg-line">
                                <input type="hidden" id="datePicker" value="2020.06.18" class="hasDatepicker">
                                <button type="button" id="calendar" onclick="$('#datePicker').datepicker('show')" class="btn-calendar-large" title="달력보기"> 달력보기</button>

                            </div>
                            <!--// 달력보기 -->
                        </div>
                    </div>
                    <!--// time-schedule -->

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
                                        <div class="scroll m-scroll mCustomScrollbar _mCS_1" id="movieList"><div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr"><ul><li><button type="button" class="btn" movie-nm="온워드: 단 하루의 기적" movie-no="01693600" img-path="/SharedImg/2020/06/16/g8krQAvfYaqZvbZTdDipqRErDbiTUr8Z_150.gif" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">온워드: 단 하루의 기적</span></button></li><li><button type="button" class="btn" movie-nm="사라진 시간" movie-no="20018900" img-path="/SharedImg/2020/06/08/s0lDFGluXxYc6hNTqfr1qfOeS2UVw7nc_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">사라진 시간</span></button></li><li><button type="button" class="btn" movie-nm="결백" movie-no="20003500" img-path="/SharedImg/2020/06/15/pjraLryYt5zQ1HEf6axtAdkXRhfhRZTZ_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">결백</span></button></li><li><button type="button" class="btn" movie-nm="위대한 쇼맨" movie-no="01309400" img-path="/SharedImg/asis/system/mop/poster/2017/D0/D558A7-DE6C-4178-B3F6-27A023AA5DEE.small.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-12">12세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">위대한 쇼맨</span></button></li><li><button type="button" class="btn" movie-nm="콜 미 바이 유어 네임" movie-no="20021700" img-path="/SharedImg/2020/06/16/T43wKaYuW6i30Kc5Rd1SJ8gdtoDLzgwO_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-19">청소년관람불가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">콜 미 바이 유어 네임</span></button></li><li><button type="button" class="btn" movie-nm="야구소녀" movie-no="20019300" img-path="/SharedImg/2020/05/26/4DpEOKISeL20EXabwXkfsfaeeJW27heu_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-12">12세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">야구소녀</span></button></li><li><button type="button" class="btn" movie-nm="에어로너츠" movie-no="20005400" img-path="/SharedImg/2020/05/25/3nE8zx0IneEL2zhcyDWIx9mh8mA8EWgI_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-12">12세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">에어로너츠</span></button></li><li><button type="button" class="btn" movie-nm="[시네도슨트] 루브르 박물관" movie-no="20002500" img-path="/SharedImg/2020/02/10/pYFBsgbriaDyNbaCMcVH5GCkXCpdx4BZ_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">[시네도슨트] 루브르 박물관</span></button></li><li><button type="button" class="btn" movie-nm="날씨의 아이" movie-no="01580700" img-path="/SharedImg/2020/05/15/TAFm5eSuCBRThONLHqqDpRR6oDAFjD8U_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">날씨의 아이</span></button></li><li><button type="button" class="btn" movie-nm="침입자" movie-no="20003100" img-path="/SharedImg/2020/05/13/L1M5yrfpINDCNXETFojjPzPfJk8jcpxx_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">침입자</span></button></li><li><button type="button" class="btn" movie-nm="나의 첫 번째 슈퍼스타" movie-no="20020400" img-path="/SharedImg/2020/05/25/zI1Vb9sD0zS10onJOoI305JLLNn6kz9q_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-12">12세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">나의 첫 번째 슈퍼스타</span></button></li><li><button type="button" class="btn" movie-nm="레옹 디 오리지널" movie-no="20022300" img-path="/SharedImg/2020/06/17/E5s47ZECrcMEWmGVdDBaVEX3kYiaXYoZ_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-19">청소년관람불가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">레옹 디 오리지널</span></button></li><li><button type="button" class="btn" movie-nm="패왕별희 디 오리지널" movie-no="20004800" img-path="/SharedImg/2020/04/16/3OHRKnHHelry9f7WY1vM9qghwK48Sr0I_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">패왕별희 디 오리지널</span></button></li><li><button type="button" class="btn" movie-nm="카페 벨에포크" movie-no="20013300" img-path="/SharedImg/2020/05/13/Ke4lvcHauIeImAMNTOAn1IfCcIbLUAaT_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">카페 벨에포크</span></button></li><li><button type="button" class="btn" movie-nm="프리즌 이스케이프" movie-no="20014600" img-path="/SharedImg/2020/04/28/hDUkLr58n3u70NXwJU8gBkMjFldKAwfi_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-12">12세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">프리즌 이스케이프</span></button></li><li><button type="button" class="btn" movie-nm="환상의 마로나" movie-no="20020200" img-path="/SharedImg/2020/05/25/Hk5CYZskPmQjedi5z7Gl8j7AhtMLhppx_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">환상의 마로나</span></button></li><li><button type="button" class="btn" movie-nm="아이 캔 온리 이매진" movie-no="01665200" img-path="/SharedImg/2020/05/18/0RqweQlBIg53f2AiqcrCwpAeYR2EDZxs_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-12">12세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">아이 캔 온리 이매진</span></button></li><li><button type="button" class="btn" movie-nm="런 보이 런" movie-no="20019400" img-path="/SharedImg/2020/05/21/0lMH4GiVQlMxbHibYmzQjhJSmplbhNOb_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">런 보이 런</span></button></li><li><button type="button" class="btn" movie-nm="전망좋은 방" movie-no="20020000" img-path="/SharedImg/2020/05/21/2PdCEHVNa13k4zwyEWrhyHY1iooB9kOl_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">전망좋은 방</span></button></li><li><button type="button" class="btn" movie-nm="[오페라] 피델리오" movie-no="20014500" img-path="/SharedImg/2020/04/27/3jXoFpofS8rB3xFhn1JwRWsKTeqv9MQC_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">[오페라] 피델리오</span></button></li><li><button type="button" class="btn" movie-nm="[오페라] 마담 버터플라이 @ The Met" movie-no="20013900" img-path="/SharedImg/2020/04/20/rqm2j2jeEeUaLhnbaTvhcWLZqpqURrwt_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">[오페라] 마담 버터플라이 @ The Met</span></button></li><li><button type="button" class="btn" movie-nm="[GET9] 커피와 담배" movie-no="01538400" img-path="/SharedImg/asis/system/mop/poster/2019/28/2011C2-59F0-4F5F-B426-167ECF2CC609.small.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-12">12세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">[GET9] 커피와 담배</span></button></li><li><button type="button" class="btn" movie-nm="[GET9] 데드맨" movie-no="20020600" img-path="/SharedImg/2020/05/26/cHKNnrkPgfEVE2k4995bQbIsov7NJR0C_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">[GET9] 데드맨</span></button></li><li><button type="button" class="btn" movie-nm="슈퍼스타 뚜루" movie-no="01687900" img-path="/SharedImg/2020/05/21/FYVMxk03Squc46YJ5BXBw8QZibrB2yAa_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">슈퍼스타 뚜루</span></button></li><li><button type="button" class="btn" movie-nm="나는보리" movie-no="20004900" img-path="/SharedImg/2020/04/17/imYX3U493li0BBZKeH9NlqGvwVqi2GBR_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">나는보리</span></button></li><li><button type="button" class="btn" movie-nm="킹 오브 프리즘 올 스타즈 -프리즘 쇼☆베스트10-" movie-no="20004100" img-path="/SharedImg/2020/04/13/6R6F5khxY400ZPHaixQDjZL7zabPSrLF_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-12">12세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">킹 오브 프리즘 올 스타즈 -프리즘 쇼☆베스트10-</span></button></li><li><button type="button" class="btn" movie-nm="도미노" movie-no="20019600" img-path="/SharedImg/2020/05/21/XCiv9F6xEPAR63rs8lH2olKfQT9rz101_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">도미노</span></button></li><li><button type="button" class="btn" movie-nm="그레텔과 헨젤" movie-no="20015200" img-path="/SharedImg/2020/06/17/b2o38NFbC4uvxsUN33KQ0PIhOvgQSeeb_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">그레텔과 헨젤</span></button></li><li><button type="button" class="btn" movie-nm="와일드 시티" movie-no="20020100" img-path="/SharedImg/2020/06/05/GOpT3E6rt8copM6XqVWqlAkiMLJY8hG9_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-19">청소년관람불가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">와일드 시티</span></button></li><li><button type="button" class="btn" movie-nm="배트맨 비긴즈" movie-no="20026500" img-path="/SharedImg/2020/06/17/8y5RfA6a6O3PAPnmwzI1GKFD8I926ife_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-12">12세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">배트맨 비긴즈</span></button></li><li><button type="button" class="btn" movie-nm="[팝콘클래식] 와인의 영혼 IN VINO VERITAS" movie-no="20021000" img-path="/SharedImg/2020/06/02/SKnIh2xmDHhogB5v6FeGxmiWQfvDXpSG_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">[팝콘클래식] 와인의 영혼 IN VINO VERITAS</span></button></li><li><button type="button" class="btn" movie-nm="프랭크" movie-no="00776700" img-path="/SharedImg/asis/system/mop/poster/2014/B1/90C08E-DEF9-4371-85FA-099E845146D7.small.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">프랭크</span></button></li><li><button type="button" class="btn" movie-nm="언더워터" movie-no="20018800" img-path="/SharedImg/2020/05/19/33PV0IxdVj6sW2l8FC0KWZvzGtq5VKpH_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">언더워터</span></button></li><li><button type="button" class="btn" movie-nm="파리 오페라 발레단" movie-no="20022100" img-path="/SharedImg/2020/06/04/q2FAKqNfvCKs9bbqOu9yFQulQ8AOgHru_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">파리 오페라 발레단</span></button></li><li><button type="button" class="btn" movie-nm="8인: 최후의 결사단" movie-no="20023000" img-path="/SharedImg/2020/06/17/E6LqHUFCDAs1d7Yq5GFy6wgZQacR3zY9_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">8인: 최후의 결사단</span></button></li><li><button type="button" class="btn" movie-nm="[오페라] 아크나텐 @The Met" movie-no="20025700" img-path="/SharedImg/2020/06/15/mkuTBD77ntyhS0FQUuZcYX03Fh3Cur6K_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">[오페라] 아크나텐 @The Met</span></button></li><li><button type="button" class="btn" movie-nm="라라랜드" movie-no="20007800" img-path="/SharedImg/2020/03/11/Qgl73W9FxEMYJnnaOYPFtyqSrqB3vmJ2_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-12">12세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">라라랜드</span></button></li><li><button type="button" class="btn" movie-nm="[팝콘클래식] 오페라와 다양한 장르의 음악들" movie-no="20021200" img-path="/SharedImg/2020/06/02/72PgiGFVn6lvlIWvPNK7JGMJi1l1F2of_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">[팝콘클래식] 오페라와 다양한 장르의 음악들</span></button></li><li><button type="button" class="btn" movie-nm="미스비헤이비어" movie-no="20016400" img-path="/SharedImg/2020/05/14/wOZ8LWNLfPPhM1kMLkal9sqiI98rZIeY_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">미스비헤이비어</span></button></li><li><button type="button" class="btn" movie-nm="초미의 관심사" movie-no="20014200" img-path="/SharedImg/2020/05/07/pzM5IaIAXWGSKLstS47ZHT6Xt6y3EK04_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">초미의 관심사</span></button></li><li><button type="button" class="btn" movie-nm="스타 이즈 본" movie-no="01438700" img-path="/SharedImg/asis/system/mop/poster/2018/C6/013959-C07F-401A-AAC0-CA9A76DB48AE.small.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">스타 이즈 본</span></button></li><li><button type="button" class="btn" movie-nm="조금씩, 천천히 안녕" movie-no="20013600" img-path="/SharedImg/2020/05/15/QYiZX0Nl68ib7PH81yY8nVyszkm1fK7Q_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">조금씩, 천천히 안녕</span></button></li><li><button type="button" class="btn" movie-nm="열혈형사" movie-no="20019700" img-path="/SharedImg/2020/06/17/E3djH70gtye5r8xxcPPCGpV8jWSnCKzU_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-12">12세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">열혈형사</span></button></li><li><button type="button" class="btn" movie-nm="카메론 포스트의 잘못된 교육" movie-no="20019100" img-path="/SharedImg/2020/05/25/9CfQz9SGfJPvsyP5SPLBQUprmDA3oQ7w_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">카메론 포스트의 잘못된 교육</span></button></li><li><button type="button" class="btn" movie-nm="시간을 달리는 소녀" movie-no="20016300" img-path="/SharedImg/2020/05/07/RtRhOaX5OrDJPvP7QGDvPhjwWsEjuWDJ_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">시간을 달리는 소녀</span></button></li><li><button type="button" class="btn" movie-nm="바다로 가자" movie-no="20020800" img-path="/SharedImg/2020/05/27/nkPQnTtUwoUS9OlGaTeqpveUvXY3yhP4_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">바다로 가자</span></button></li><li><button type="button" class="btn" movie-nm="트롤: 월드 투어" movie-no="20003900" img-path="/SharedImg/2020/05/07/FPu782r61QMPQ44Yr0YdHbBTwF5Ags94_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">트롤: 월드 투어</span></button></li><li><button type="button" class="btn" movie-nm="썸머 워즈" movie-no="00154600" img-path="/SharedImg/asis/system/mop/poster/2009/FE/1AB080-8619-4AE2-A388-94204A03B6B5.small.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">썸머 워즈</span></button></li><li><button type="button" class="btn" movie-nm="괴물의 아이" movie-no="00978000" img-path="/SharedImg/asis/system/mop/poster/2015/DD/FAC56C-D1A3-440F-86F6-0C0333072F74.small.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-12">12세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">괴물의 아이</span></button></li><li><button type="button" class="btn" movie-nm="미래의 미라이" movie-no="01454300" img-path="/SharedImg/asis/system/mop/poster/2018/56/CF4307-A8C4-43F1-9920-1E70BC16F240.small.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">미래의 미라이</span></button></li><li><button type="button" class="btn" movie-nm="톰보이" movie-no="20013400" img-path="/SharedImg/2020/04/21/0XLqinzHFuemgowSBF1j7mHRvWxpjdJ9_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-12">12세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">톰보이</span></button></li><li><button type="button" class="btn" movie-nm="문라이즈 킹덤" movie-no="00480700" img-path="/SharedImg/asis/system/mop/poster/2013/F7/7B1657-98B1-4B21-B43C-FA1D4675D9AF.small.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">문라이즈 킹덤</span></button></li><li><button type="button" class="btn" movie-nm="저 산 너머" movie-no="20012700" img-path="/SharedImg/2020/05/13/eXsrtnolJEthN7wxaaFJXot40dz60WCA_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-12">12세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">저 산 너머</span></button></li><li><button type="button" class="btn" movie-nm="늑대아이" movie-no="00416900" img-path="/SharedImg/asis/system/mop/poster/2013/5D/327950-248A-4A26-9882-233CEC98E77C.small.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">늑대아이</span></button></li><li><button type="button" class="btn" movie-nm="프랑스여자" movie-no="20016900" img-path="/SharedImg/2020/05/19/1uSZAqVXCYBgV0E0ChwbTVy9D0nGTwxp_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">프랑스여자</span></button></li><li><button type="button" class="btn" movie-nm="제인의 썸머" movie-no="20025600" img-path="/SharedImg/2020/06/17/dSgeidaI0zgrSj4NHR7AS4QOlp9Lx10E_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="Y"><span class="movie-grade small age-19">청소년관람불가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">제인의 썸머</span></button></li><li><button type="button" class="btn" movie-nm="[GET9] 지상의 밤" movie-no="01538300" img-path="/SharedImg/asis/system/mop/poster/2019/38/35865E-20F3-4775-97AF-3E5590D88410.small.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">[GET9] 지상의 밤</span></button></li><li><button type="button" class="btn" movie-nm="로렌스 애니웨이" movie-no="00637200" img-path="/SharedImg/asis/system/mop/poster/2013/53/7AFDC6-7273-4781-B371-AEB11677F19D.small.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-15">15세이상관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">로렌스 애니웨이</span></button></li><li><button type="button" class="btn" movie-nm="백년의 기억" movie-no="20022600" img-path="/SharedImg/2020/06/09/KXwCK9WrULMOXb3aHIe7KpXbrJIkUsPu_150.jpg" movie-popup-at="N" movie-popup-no="0" form-at="N"><span class="movie-grade small age-all">전체관람가</span><i class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">백년의 기억</span></button></li></ul></div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: block;"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: block; max-height: 310px; top: 0px; height: 61px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
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
                                            <ul><li><button type="button" class="btn" id="10"><span calss="txt">서울(20)</span></button><div class="depth"><div class="detail-list m-scroll area-cd10 mCustomScrollbar _mCS_4 mCS_no_scrollbar"><div id="mCSB_4" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_4_container" class="mCSB_container mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul><li><button id="btn" type="button" brch-no="1372" brch-nm="강남" brch-eng-nm="Gangnam" form-at="Y" area-cd="10" area-cd-nm="서울" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="998">강남</button></li><li><button id="btn" type="button" brch-no="1359" brch-nm="강남대로(씨티)" brch-eng-nm="Gangnam-daero (City)" form-at="Y" area-cd="10" area-cd-nm="서울" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="988">강남대로(씨티)</button></li><li><button id="btn" type="button" brch-no="1341" brch-nm="강동" brch-eng-nm="Gangdong" form-at="Y" area-cd="10" area-cd-nm="서울" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="939">강동</button></li><li><button id="btn" type="button" brch-no="1431" brch-nm="군자" brch-eng-nm="Gunja" form-at="Y" area-cd="10" area-cd-nm="서울" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="1669">군자</button></li><li><button id="btn" type="button" brch-no="1003" brch-nm="동대문" brch-eng-nm="Dong Dae Moon" form-at="Y" area-cd="10" area-cd-nm="서울" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">동대문</button></li><li><button id="btn" type="button" brch-no="1572" brch-nm="마곡" brch-eng-nm="Magok" form-at="Y" area-cd="10" area-cd-nm="서울" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="936">마곡</button></li><li><button id="btn" type="button" brch-no="1581" brch-nm="목동" brch-eng-nm="Mokdong" form-at="Y" area-cd="10" area-cd-nm="서울" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="968">목동</button></li><li><button id="btn" type="button" brch-no="1311" brch-nm="상봉" brch-eng-nm="Sangbong" form-at="Y" area-cd="10" area-cd-nm="서울" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="980">상봉</button></li><li><button id="btn" type="button" brch-no="1211" brch-nm="상암월드컵경기장" brch-eng-nm="Sangam World Cup Stadium" form-at="Y" area-cd="10" area-cd-nm="서울" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">상암월드컵경기장</button></li><li><button id="btn" type="button" brch-no="1331" brch-nm="성수" brch-eng-nm="SEOUNGSU" form-at="Y" area-cd="10" area-cd-nm="서울" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="1006">성수</button></li><li><button id="btn" type="button" brch-no="1371" brch-nm="센트럴" brch-eng-nm="Central" form-at="Y" area-cd="10" area-cd-nm="서울" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="1002">센트럴</button></li><li><button id="btn" type="button" brch-no="1381" brch-nm="송파파크하비오" brch-eng-nm="Songpa Park Habio" form-at="Y" area-cd="10" area-cd-nm="서울" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">송파파크하비오</button></li><li><button id="btn" type="button" brch-no="1202" brch-nm="신촌" brch-eng-nm="Sin Chon" form-at="Y" area-cd="10" area-cd-nm="서울" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">신촌</button></li><li><button id="btn" type="button" brch-no="1221" brch-nm="은평" brch-eng-nm="Eunpyeong" form-at="N" area-cd="10" area-cd-nm="서울" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">은평</button></li><li><button id="btn" type="button" brch-no="1561" brch-nm="이수" brch-eng-nm="Isu" form-at="Y" area-cd="10" area-cd-nm="서울" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">이수</button></li><li><button id="btn" type="button" brch-no="1321" brch-nm="창동" brch-eng-nm="Changdong" form-at="Y" area-cd="10" area-cd-nm="서울" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="921">창동</button></li><li><button id="btn" type="button" brch-no="1351" brch-nm="코엑스" brch-eng-nm="COEX" form-at="Y" area-cd="10" area-cd-nm="서울" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">코엑스</button></li><li><button id="btn" type="button" brch-no="1212" brch-nm="홍대" brch-eng-nm="Hongdae" form-at="Y" area-cd="10" area-cd-nm="서울" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="1003">홍대</button></li><li><button id="btn" type="button" brch-no="1571" brch-nm="화곡" brch-eng-nm="Hwagok" form-at="Y" area-cd="10" area-cd-nm="서울" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="999">화곡</button></li><li><button id="btn" type="button" brch-no="1562" brch-nm="ARTNINE" brch-eng-nm="ARTNINE" form-at="Y" area-cd="10" area-cd-nm="서울" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="955">ARTNINE</button></li></ul></div><div id="mCSB_4_scrollbar_vertical" class="mCSB_scrollTools mCSB_4_scrollbar mCS-light mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_4_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div></div></li><li><button type="button" class="btn has-issue" id="30"><span calss="txt">경기(26)</span></button><div class="depth"><div class="detail-list m-scroll area-cd30 mCustomScrollbar _mCS_5 mCS_no_scrollbar"><div id="mCSB_5" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_5_container" class="mCSB_container mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul><li><button id="btn" type="button" brch-no="4121" brch-nm="고양스타필드" brch-eng-nm="Goyang Starfield" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="976">고양스타필드</button></li><li><button id="btn" type="button" brch-no="4152" brch-nm="김포한강신도시" brch-eng-nm="Gimpo Han River New City" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="990">김포한강신도시</button></li><li><button id="btn" type="button" brch-no="4721" brch-nm="남양주" brch-eng-nm="Namyangju" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="922">남양주</button></li><li><button id="btn" type="button" brch-no="4451" brch-nm="동탄" brch-eng-nm="Dongtan" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="923">동탄</button></li><li><button id="btn" type="button" brch-no="4652" brch-nm="미사강변" brch-eng-nm=" Misa Riverside" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="989">미사강변</button></li><li><button id="btn" type="button" brch-no="4113" brch-nm="백석" brch-eng-nm="Baek Seok" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="940">백석</button></li><li><button id="btn" type="button" brch-no="4722" brch-nm="별내" brch-eng-nm="Byeolnae" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="924">별내</button></li><li><button id="btn" type="button" brch-no="4221" brch-nm="부천스타필드시티" brch-eng-nm="Bucheon Starfield City" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="991">부천스타필드시티</button></li><li><button id="btn" type="button" brch-no="4631" brch-nm="분당" brch-eng-nm="Bundang" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="958">분당</button></li><li><button id="btn" type="button" brch-no="4411" brch-nm="수원" brch-eng-nm="Suwon" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="964">수원</button></li><li><button id="btn" type="button" brch-no="4421" brch-nm="수원남문" brch-eng-nm="Suwon Nammun" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="953">수원남문</button></li><li><button id="btn" type="button" brch-no="4291" brch-nm="시흥배곧" brch-eng-nm="Siheung Baegod" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">시흥배곧</button></li><li><button id="btn" type="button" brch-no="4253" brch-nm="안산중앙" brch-eng-nm="Ansan Jungang" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="983">안산중앙</button></li><li><button id="btn" type="button" brch-no="4821" brch-nm="양주" brch-eng-nm="Yangju" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="925">양주</button></li><li><button id="btn" type="button" brch-no="4431" brch-nm="영통" brch-eng-nm="Yeongtong" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="944">영통</button></li><li><button id="btn" type="button" brch-no="0012" brch-nm="용인기흥" brch-eng-nm="Yongin Giheung" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0"><span class="jq-tooltip" title="신규오픈">용인기흥</span><i class="iconset ico-theater-renewal" title="신규오픈">신규오픈</i></button></li><li><button id="btn" type="button" brch-no="4462" brch-nm="용인테크노밸리" brch-eng-nm="Yongin Technoveli" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">용인테크노밸리</button></li><li><button id="btn" type="button" brch-no="4804" brch-nm="의정부민락" brch-eng-nm="Uijeongbuminlag" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="993">의정부민락</button></li><li><button id="btn" type="button" brch-no="4111" brch-nm="일산" brch-eng-nm="Ilsan" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="926">일산</button></li><li><button id="btn" type="button" brch-no="4104" brch-nm="일산벨라시타" brch-eng-nm="Ilsan Bellashita" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="942">일산벨라시타</button></li><li><button id="btn" type="button" brch-no="4112" brch-nm="킨텍스" brch-eng-nm="KINTEX" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="981">킨텍스</button></li><li><button id="btn" type="button" brch-no="4132" brch-nm="파주금촌" brch-eng-nm="Paju Geumchon" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">파주금촌</button></li><li><button id="btn" type="button" brch-no="4115" brch-nm="파주운정" brch-eng-nm="Paju Unjeong" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">파주운정</button></li><li><button id="btn" type="button" brch-no="4131" brch-nm="파주출판도시" brch-eng-nm="Paju Publishing City" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="960">파주출판도시</button></li><li><button id="btn" type="button" brch-no="4501" brch-nm="평택" brch-eng-nm="Pyeongtaek" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="995">평택</button></li><li><button id="btn" type="button" brch-no="4651" brch-nm="하남스타필드" brch-eng-nm="Hanam Starfield" form-at="Y" area-cd="30" area-cd-nm="경기" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="982">하남스타필드</button></li></ul></div><div id="mCSB_5_scrollbar_vertical" class="mCSB_scrollTools mCSB_5_scrollbar mCS-light mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_5_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div></div></li><li><button type="button" class="btn" id="35"><span calss="txt">인천(6)</span></button><div class="depth"><div class="detail-list m-scroll area-cd35 mCustomScrollbar _mCS_6 mCS_no_scrollbar"><div id="mCSB_6" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_6_container" class="mCSB_container mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul><li><button id="btn" type="button" brch-no="4041" brch-nm="검단" brch-eng-nm="Geomdan" form-at="Y" area-cd="35" area-cd-nm="인천" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="945">검단</button></li><li><button id="btn" type="button" brch-no="4062" brch-nm="송도" brch-eng-nm="Song-do" form-at="Y" area-cd="35" area-cd-nm="인천" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="927">송도</button></li><li><button id="btn" type="button" brch-no="4001" brch-nm="영종" brch-eng-nm="Yeongjong" form-at="Y" area-cd="35" area-cd-nm="인천" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">영종</button></li><li><button id="btn" type="button" brch-no="4051" brch-nm="인천논현" brch-eng-nm="Incheon Nonhyeon" form-at="Y" area-cd="35" area-cd-nm="인천" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">인천논현</button></li><li><button id="btn" type="button" brch-no="4042" brch-nm="청라" brch-eng-nm="Cheongna" form-at="Y" area-cd="35" area-cd-nm="인천" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="996">청라</button></li><li><button id="btn" type="button" brch-no="4043" brch-nm="청라지젤" brch-eng-nm="Cheongna Giselle" form-at="Y" area-cd="35" area-cd-nm="인천" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="928">청라지젤</button></li></ul></div><div id="mCSB_6_scrollbar_vertical" class="mCSB_scrollTools mCSB_6_scrollbar mCS-light mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_6_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div></div></li><li><button type="button" class="btn has-issue" id="45"><span calss="txt">대전/충청/세종(15)</span></button><div class="depth"><div class="detail-list m-scroll area-cd45 mCustomScrollbar _mCS_7 mCS_no_scrollbar"><div id="mCSB_7" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_7_container" class="mCSB_container mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul><li><button id="btn" type="button" brch-no="3141" brch-nm="공주" brch-eng-nm="Gongju" form-at="Y" area-cd="45" area-cd-nm="대전/충청/세종" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">공주</button></li><li><button id="btn" type="button" brch-no="3021" brch-nm="대전" brch-eng-nm="Daejeon" form-at="Y" area-cd="45" area-cd-nm="대전/충청/세종" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">대전</button></li><li><button id="btn" type="button" brch-no="0009" brch-nm="대전유성" brch-eng-nm="Megabox Daejeon Yuseong Branch" form-at="Y" area-cd="45" area-cd-nm="대전/충청/세종" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">대전유성</button></li><li><button id="btn" type="button" brch-no="3011" brch-nm="대전중앙로" brch-eng-nm="Daejeon Central Road" form-at="Y" area-cd="45" area-cd-nm="대전/충청/세종" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="971">대전중앙로</button></li><li><button id="btn" type="button" brch-no="0017" brch-nm="대전현대아울렛" brch-eng-nm="Megabox Daejeon Hyundai Outlet Branch" form-at="N" area-cd="45" area-cd-nm="대전/충청/세종" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0"><span class="jq-tooltip" title="오픈예정">대전현대아울렛</span><i class="iconset ico-theater-open" title="오픈예정">오픈예정</i></button></li><li><button id="btn" type="button" brch-no="3391" brch-nm="세종(조치원)" brch-eng-nm="Sejong" form-at="Y" area-cd="45" area-cd-nm="대전/충청/세종" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="1000">세종(조치원)</button></li><li><button id="btn" type="button" brch-no="3392" brch-nm="세종나성" brch-eng-nm="SejongNaseong" form-at="Y" area-cd="45" area-cd-nm="대전/충청/세종" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="1004">세종나성</button></li><li><button id="btn" type="button" brch-no="0008" brch-nm="세종청사" brch-eng-nm="SejongChungsa" form-at="N" area-cd="45" area-cd-nm="대전/충청/세종" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0"><span class="jq-tooltip" title="오픈예정">세종청사</span><i class="iconset ico-theater-open" title="오픈예정">오픈예정</i></button></li><li><button id="btn" type="button" brch-no="3631" brch-nm="오창" brch-eng-nm="Ochang" form-at="Y" area-cd="45" area-cd-nm="대전/충청/세종" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">오창</button></li><li><button id="btn" type="button" brch-no="3901" brch-nm="제천" brch-eng-nm="Jecheon" form-at="Y" area-cd="45" area-cd-nm="대전/충청/세종" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">제천</button></li><li><button id="btn" type="button" brch-no="3651" brch-nm="진천" brch-eng-nm="Jincheon" form-at="Y" area-cd="45" area-cd-nm="대전/충청/세종" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">진천</button></li><li><button id="btn" type="button" brch-no="3301" brch-nm="천안" brch-eng-nm="Cheonan" form-at="Y" area-cd="45" area-cd-nm="대전/충청/세종" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">천안</button></li><li><button id="btn" type="button" brch-no="3611" brch-nm="청주사창" brch-eng-nm="Cheongju Chungbuk National University" form-at="N" area-cd="45" area-cd-nm="대전/충청/세종" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">청주사창</button></li><li><button id="btn" type="button" brch-no="3801" brch-nm="충주" brch-eng-nm="Chungju" form-at="Y" area-cd="45" area-cd-nm="대전/충청/세종" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">충주</button></li><li><button id="btn" type="button" brch-no="3501" brch-nm="홍성내포" brch-eng-nm="Hongseong Naepo" form-at="Y" area-cd="45" area-cd-nm="대전/충청/세종" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">홍성내포</button></li></ul></div><div id="mCSB_7_scrollbar_vertical" class="mCSB_scrollTools mCSB_7_scrollbar mCS-light mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_7_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div></div></li><li><button type="button" class="btn has-issue" id="55"><span calss="txt">부산/대구/경상(25)</span></button><div class="depth"><div class="detail-list m-scroll area-cd55 mCustomScrollbar _mCS_8 mCS_no_scrollbar"><div id="mCSB_8" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_8_container" class="mCSB_container mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul><li><button id="btn" type="button" brch-no="6701" brch-nm="거창" brch-eng-nm="Geochang" form-at="Y" area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">거창</button></li><li><button id="btn" type="button" brch-no="7602" brch-nm="경북도청" brch-eng-nm="Gyeongbuk Provincial Office" form-at="Y" area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">경북도청</button></li><li><button id="btn" type="button" brch-no="7122" brch-nm="경산하양" brch-eng-nm="Gyeongsan Hayang" form-at="Y" area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">경산하양</button></li><li><button id="btn" type="button" brch-no="7801" brch-nm="경주" brch-eng-nm="Gyeongju" form-at="Y" area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">경주</button></li><li><button id="btn" type="button" brch-no="7303" brch-nm="구미강동" brch-eng-nm="Gumi Gangdong" form-at="Y" area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="930">구미강동</button></li><li><button id="btn" type="button" brch-no="7401" brch-nm="김천" brch-eng-nm="Gimcheon" form-at="Y" area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">김천</button></li><li><button id="btn" type="button" brch-no="7901" brch-nm="남포항" brch-eng-nm="Nampo Port" form-at="Y" area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">남포항</button></li><li><button id="btn" type="button" brch-no="7022" brch-nm="대구(칠성로)" brch-eng-nm="Daegu (Chilseong-ro)" form-at="Y" area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">대구(칠성로)</button></li><li><button id="btn" type="button" brch-no="7011" brch-nm="대구신세계(동대구)" brch-eng-nm="Daegu Shinsegae (Dongdaegu)" form-at="Y" area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">대구신세계(동대구)</button></li><li><button id="btn" type="button" brch-no="7012" brch-nm="대구이시아" brch-eng-nm="Daegu-Esia" form-at="Y" area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="992">대구이시아</button></li><li><button id="btn" type="button" brch-no="6161" brch-nm="덕천" brch-eng-nm="Deokcheon" form-at="Y" area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="931">덕천</button></li><li><button id="btn" type="button" brch-no="6312" brch-nm="마산" brch-eng-nm="Masan" form-at="Y" area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="986">마산</button></li><li><button id="btn" type="button" brch-no="7451" brch-nm="문경" brch-eng-nm="Mungyeong" form-at="Y" area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="985">문경</button></li><li><button id="btn" type="button" brch-no="6001" brch-nm="부산극장" brch-eng-nm="Busan Theater" form-at="Y" area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="966">부산극장</button></li><li><button id="btn" type="button" brch-no="6906" brch-nm="부산대" brch-eng-nm="Busan &#8203;&#8203;National University" form-at="Y" area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="941">부산대</button></li><li><button id="btn" type="button" brch-no="7021" brch-nm="북대구(칠곡)" brch-eng-nm="Northern Daegu (Chilgok)" form-at="Y" area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="972">북대구(칠곡)</button></li><li><button id="btn" type="button" brch-no="6641" brch-nm="사천" brch-eng-nm="Sacheon" form-at="Y" area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">사천</button></li><li><button id="btn" type="button" brch-no="6642" brch-nm="삼천포" brch-eng-nm="Samcheonpo" form-at="Y" area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="935">삼천포</button></li><li><button id="btn" type="button" brch-no="6261" brch-nm="양산" brch-eng-nm="Yangsan" form-at="Y" area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="932">양산</button></li><li><button id="btn" type="button" brch-no="6262" brch-nm="양산라피에스타" brch-eng-nm="Yangsan La Fiesta" form-at="Y" area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="957">양산라피에스타</button></li><li><button id="btn" type="button" brch-no="6811" brch-nm="울산" brch-eng-nm="Ulsan" form-at="Y" area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="956">울산</button></li><li><button id="btn" type="button" brch-no="6191" brch-nm="정관" brch-eng-nm="Jeong-gwan" form-at="Y" area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">정관</button></li><li><button id="btn" type="button" brch-no="6421" brch-nm="창원" brch-eng-nm=" Changwon" form-at="Y" area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="963">창원</button></li><li><button id="btn" type="button" brch-no="0014" brch-nm="창원내서" brch-eng-nm="Megabox Changwon Naeseo Branch" form-at="N" area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N" brch-bokd-unable-at="Y" brch-popup-at="N" brch-popup-no="0"><span class="jq-tooltip" title="오픈예정">창원내서</span><i class="iconset ico-theater-open" title="오픈예정">오픈예정</i></button></li><li><button id="btn" type="button" brch-no="6121" brch-nm="해운대(장산)" brch-eng-nm=" Haeundae (Jangsan)" form-at="Y" area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">해운대(장산)</button></li></ul></div><div id="mCSB_8_scrollbar_vertical" class="mCSB_scrollTools mCSB_8_scrollbar mCS-light mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_8_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div></div></li><li><button type="button" class="btn" id="65"><span calss="txt">광주/전라(9)</span></button><div class="depth"><div class="detail-list m-scroll area-cd65 mCustomScrollbar _mCS_9 mCS_no_scrollbar"><div id="mCSB_9" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_9_container" class="mCSB_container mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul><li><button id="btn" type="button" brch-no="5021" brch-nm="광주상무" brch-eng-nm="Gwangju Sangmu" form-at="Y" area-cd="65" area-cd-nm="광주/전라" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="970">광주상무</button></li><li><button id="btn" type="button" brch-no="5061" brch-nm="광주하남" brch-eng-nm="Gwangju Hanam" form-at="Y" area-cd="65" area-cd-nm="광주/전라" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="969">광주하남</button></li><li><button id="btn" type="button" brch-no="5901" brch-nm="남원" brch-eng-nm="Namwon" form-at="Y" area-cd="65" area-cd-nm="광주/전라" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">남원</button></li><li><button id="btn" type="button" brch-no="5302" brch-nm="목포하당(포르모)" brch-eng-nm=" Mokpo Hadang (Formo)" form-at="Y" area-cd="65" area-cd-nm="광주/전라" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">목포하당(포르모)</button></li><li><button id="btn" type="button" brch-no="5612" brch-nm="송천" brch-eng-nm="Songcheon" form-at="Y" area-cd="65" area-cd-nm="광주/전라" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">송천</button></li><li><button id="btn" type="button" brch-no="5401" brch-nm="순천" brch-eng-nm="Suncheon" form-at="Y" area-cd="65" area-cd-nm="광주/전라" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="994">순천</button></li><li><button id="btn" type="button" brch-no="5552" brch-nm="여수웅천" brch-eng-nm="Yeosu Woongcheon" form-at="Y" area-cd="65" area-cd-nm="광주/전라" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">여수웅천</button></li><li><button id="btn" type="button" brch-no="0010" brch-nm="전대(광주)" brch-eng-nm="Jeondae(Gwangju)" form-at="Y" area-cd="65" area-cd-nm="광주/전라" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">전대(광주)</button></li><li><button id="btn" type="button" brch-no="5064" brch-nm="첨단" brch-eng-nm="Cheomdan" form-at="Y" area-cd="65" area-cd-nm="광주/전라" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="979">첨단</button></li></ul></div><div id="mCSB_9_scrollbar_vertical" class="mCSB_scrollTools mCSB_9_scrollbar mCS-light mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_9_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div></div></li><li><button type="button" class="btn" id="70"><span calss="txt">강원(4)</span></button><div class="depth"><div class="detail-list m-scroll area-cd70 mCustomScrollbar _mCS_10 mCS_no_scrollbar"><div id="mCSB_10" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_10_container" class="mCSB_container mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul><li><button id="btn" type="button" brch-no="2001" brch-nm="남춘천" brch-eng-nm="Namchuncheon" form-at="Y" area-cd="70" area-cd-nm="강원" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">남춘천</button></li><li><button id="btn" type="button" brch-no="2171" brch-nm="속초" brch-eng-nm="Sokcho" form-at="Y" area-cd="70" area-cd-nm="강원" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">속초</button></li><li><button id="btn" type="button" brch-no="2201" brch-nm="원주" brch-eng-nm="Wonju" form-at="Y" area-cd="70" area-cd-nm="강원" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">원주</button></li><li><button id="btn" type="button" brch-no="2202" brch-nm="원주센트럴" brch-eng-nm="Wonju Central" form-at="Y" area-cd="70" area-cd-nm="강원" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="934">원주센트럴</button></li></ul></div><div id="mCSB_10_scrollbar_vertical" class="mCSB_scrollTools mCSB_10_scrollbar mCS-light mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_10_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div></div></li><li><button type="button" class="btn" id="80"><span calss="txt">제주(1)</span></button><div class="depth"><div class="detail-list m-scroll area-cd80 mCustomScrollbar _mCS_11 mCS_no_scrollbar"><div id="mCSB_11" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_11_container" class="mCSB_container mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul><li><button id="btn" type="button" brch-no="6901" brch-nm="제주" brch-eng-nm="Jeju" form-at="Y" area-cd="80" area-cd-nm="제주" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="N" brch-popup-no="0">제주</button></li></ul></div><div id="mCSB_11_scrollbar_vertical" class="mCSB_scrollTools mCSB_11_scrollbar mCS-light mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_11_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div></div></li></ul>
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

</body>
</html>