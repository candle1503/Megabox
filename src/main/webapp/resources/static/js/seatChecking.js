var localeCode = "kr";			// 한영 구분 코드
var sellChnlCd = '';	// 파라메타로 전달된 판매 체널 코드
var riaParamIsMember   = '';	// 회원여부
var riaParamName       = '';		// 고객명
var riaParamMobileNo   = '';	// 고객전화번호
var riaParamBirthday   = '';	// 고객생년월일
var riaParamMemberCard = '';	// 카드번호
var riaParamPassword   = '';	// 암호
var riaParamIPinCi     = '';		// 아이핀 CI값
var riaParamReciveTime = '';	// ARS시각
var riaParamMovieCode  = '';	// 특정영화코드
var riaMemberYn        = '';	// 메가박스 회원여부
var riaLoginAt         = '';		// 메가박스 로그인여부
var riaLoginId         = '';		// 메가박스 로그인여부
var usrId              = '';		// 메가박스 로그인여부
var msgStr       = '';
var bokdMPlayDe = ''; // 상영일자


$(window).load(function(){
	var frameBokdMBookingBodyObj    = $('#frameBokdMBooking').get(0).contentWindow.document.body;	// 빠른예매
																									// 프레임
																									// 바디
																									// 오브젝트
	var frameBokdMBookingContentObj = $('#frameBokdMBooking').get(0).contentWindow;
	var frameBokdMSeatBodyObj       = $('#frameBokdMSeat').get(0).contentWindow.document.body;	// 좌석도
																								// 프레임
																								// 바디
																								// 오브젝트
	var frameBokdMSeatContentObj    = $('#frameBokdMSeat').get(0).contentWindow;
	var framePayBookingBodyObj      = $('#framePayBooking').get(0).contentWindow.document.body;	// 결제화면
																								// 프레임
																								// 바디
																								// 오브젝트
	var framePayBookingContentObj   = $('#framePayBooking').get(0).contentWindow;

	var bokdMPlaySchdlNo = '';	// 파라메타로 전달된 상영스케줄 번호
	var bokdMRpstMovieNo = '';	// 파라메타로 전달된 대표영화번호
	var bokdMTheabKindCode1 = ''; // 특별관 area
	var bokdMBrchNo1 = ''; // 지점코드

	// 상영스케줄 번호가 없는경우 빠른예매 화면을 표시한다.
	if("" == bokdMPlaySchdlNo){
		// 상단네비게이션바 RIA의 경우
		if(sellChnlCd != ""){

			$('.page-util').hide();	// 상단 네비게이션바를 숨김 처리한다.

			if(riaMemberYn == "Y"){
				msgStr = riaParamName + "(" + riaLoginId + ") 고객님의 회원 정보가 적용되었습니다."
            }
            else if(riaMemberYn == "N"){
        		msgStr = "해당 회원 정보가 없습니다. 비회원으로 예매를 진행합니다.";
            }
		}
		else{
			$('.page-util').show();	// 상단 네비게이션바를 숨김 처리한다.
		}

		$('#bokdMSeat').hide();	// 좌석도 숨김
		$('#bokdMPayBooking').hide();	// 결제 숨김

		// $('#frameBokdMBooking').attr('src','/on/oh/ohb/SimpleBooking/simpleBookingPage.do?rpstMovieNo='+bokdMRpstMovieNo);
		// //영화를 통해 진입한경우 영화 파라메타를 함께 전달
		$('#frameBokdMBooking').attr('src','/on/oh/ohb/SimpleBooking/simpleBookingPage.do?rpstMovieNo='+bokdMRpstMovieNo+'&theabKindCode1='+bokdMTheabKindCode1+'&brchNo1='+bokdMBrchNo1+'&sellChnlCd='+sellChnlCd+'&playDe='+bokdMPlayDe); // 영화를
																																																											// 통해
																																																											// 진입한경우
																																																											// 영화
																																																											// 파라메타를
																																																											// 함께
																																																											// 전달
		$('#frameBokdMBooking').load(function(){	// 빠른예매 화면이 로딩이 완료되면
			$('#frameBokdMSeat').attr('src','/on/oh/ohz/PcntSeatChoi/selectPcntSeatChoi.do');	// 좌석도
																								// 화면로딩
			$('#framePayBooking').attr('src','/on/oh/ohz/PayBooking/completeSeat.do');			// 결제
																								// 화면
																								// 로딩
		});
		NetfunnelChk.script("BOOK_STEP1",function(){	// 넷퍼넬 적용
			$('#bokdMBooking').show();	// 빠른예매 화면 표시
		});
	}
	else {
		NetfunnelChk.script("BOOK_STEP2",function(){	// 넷퍼넬 적용
	// $('#bokdMBooking').hide(); //빠른예매 숨김
	// $('#bokdMPayBooking').hide(); //결제 숨김
			$('#frameBokdMSeat').attr('src','/on/oh/ohz/PcntSeatChoi/selectPcntSeatChoi.do');
			$('#frameBokdMSeat').load(function(){
				frameBokdMSeatBodyObj       = $('#frameBokdMSeat').get(0).contentWindow.document.body;	// 좌석도
																										// 프레임
																										// 바디
																										// 오브젝트
				frameBokdMSeatContentObj    = $('#frameBokdMSeat').get(0).contentWindow;
				$('#framePayBooking').attr('src','/on/oh/ohz/PayBooking/completeSeat.do');
				$(frameBokdMSeatBodyObj).find('#playSchdlNo').val(bokdMPlaySchdlNo);
				frameBokdMSeatContentObj.fn_search();
			});
			$('#bokdMSeat').show();
		});
	}

	// RIA용 화면 패딩 제거
	if("" != sellChnlCd){
		$('.container').addClass("mg00");
		$('.container').addClass("pd00");
	}
});

// 좌석도로 파라메타 전달
function fn_setSmapParam(obj) {
	NetfunnelChk.script("BOOK_STEP2",function(){	// 넷퍼넬 적용
		var frameBokdMSeatBodyObj = $('#frameBokdMSeat').get(0).contentWindow.document.body;	// 좌석도
																								// 프레임
																								// 바디
																								// 오브젝트
		var frameBokdMSeatContentObj = $('#frameBokdMSeat').get(0).contentWindow;

		$('#bokdMSeat').show();	// 좌석도 표시
		$(frameBokdMSeatBodyObj).find('#playSchdlNo').val(obj.attr("play-schdl-no"));
		frameBokdMSeatContentObj.fn_search();

	// $('#frameBokdMSeat').attr('src','/on/oh/ohz/PcntSeatChoi/selectPcntSeatChoi.do?playSchdlNo='+obj.attr("play-schdl-no"));
	// $('#frameBokdMSeat').attr('src','/main');

		$('#bokdMBooking').hide();	// 빠른예매 숨김
		$('#bokdMPayBooking').hide();	// 결제 숨김
	});
}

// 좌석도에서 이전 버튼 클릭
function fn_goPrePagePcntSeatChoi(msg) {
	var frameBokdMSeatContentObj = $('#frameBokdMSeat').get(0).contentWindow;
	$('#bokdMPayBooking').hide();	// 결제 숨김
	$('#bokdMSeat').hide();	// 좌석도 숨김
	$('#bokdMBooking').show();	// 빠른예매 표시

	if (msg != null && msg != "") {
		gfn_alertMsgBox("결제가능 시간이 초과되어<br/> 좌석선택부터 다시 진행바랍니다.");
	}

	// 결제에서 예매이동 처리 추가
	$('#frameBokdMSeat').attr("src", "/on/oh/ohz/PcntSeatChoi/selectPcntSeatChoi.do"); // 좌석도
																						// 화면초기화
	$('#framePayBooking').attr("src", "/on/oh/ohz/PayBooking/completeSeat.do"); // 결제화면
																				// 초기화
}

// 상영시간표에서 다음 버튼 클릭
function fn_goNextPagePcntSeatChoi(param) {
	// 선점좌석 체크
	fn_validOccupSeat(param);
	// 로그인 여부 체크
	// 데이터 보정 체크
	// fn_validLoginAt();
	// 오입력 체크
	// 블랙리스트 체크
	// 결제로이동
}


// 결제화면으로로 파라메타 전달 및 화면 이동
function fn_setBookingParamMove(options) {
	NetfunnelChk.script("BOOK_STEP3",function(){	// 넷퍼넬 적용
		var framePayBookingBodyObj    = $('#framePayBooking').get(0).contentWindow.document.body;	// 결제화면
																									// 프레임
																									// 바디
																									// 오브젝트
		var framePayBookingContentObj = $('#framePayBooking').get(0).contentWindow;

		// 좌석도에서 세팅한 param 값
		var playSchdlNo   = options.playSchdlNo;	// 상영스케쥴
		var seatOccupText = options.seatOccupText;	// 좌석/티켓 상세정보
		var totalAmt      = options.totalAmt;		// 총금액

		$(framePayBookingBodyObj).find('#playSchdlNo').val(playSchdlNo);
		$(framePayBookingBodyObj).find('#seatOccupText').val(seatOccupText);
		$(framePayBookingBodyObj).find('#totalAmt').val(totalAmt);

		framePayBookingContentObj.completeSeat();
		$('#bokdMPayBooking').show();
		// 프레임 높이 자동 조정
		calcFrameHeight($('#bokdMPayBooking'), $('#framePayBooking'));

		$('#bokdMSeat').hide();  // 좌석도 숨김
	});
}

// 결제화면에서 이전 버튼 클릭
function fn_goPrePagePayBooking() {
	var framePayBookingContentObj = $('#framePayBooking').get(0).contentWindow;
	var frameBokdMSeatContentObj = $('#frameBokdMSeat').get(0).contentWindow;
	$('#bokdMPayBooking').hide();
	$('#framePayBooking').attr("src", "/on/oh/ohz/PayBooking/completeSeat.do"); // 결제화면
																				// 초기화
	$('#bokdMSeat').show();	// 좌석도 표시
	$("html,body").scrollTop(0);

	frameBokdMSeatContentObj.fn_display_init();
}

function fn_seatDispInit() {
	var frameBokdMSeatContentObj = $('#frameBokdMSeat').get(0).contentWindow;
	frameBokdMSeatContentObj.fn_display_init();
	frameBokdMSeatContentObj.fn_search('N');
}

// 결제화면에서 이전 버튼 클릭 및 블랙리스트 팝업
function fn_altBlackgoPrePagePayBooking(blackListParam) {
	var framePayBookingContentObj = $('#framePayBooking').get(0).contentWindow;
	var frameBokdMSeatContentObj = $('#frameBokdMSeat').get(0).contentWindow;
	$('#bokdMPayBooking').hide();
	$('#framePayBooking').attr("src", "/on/oh/ohz/PayBooking/completeSeat.do"); // 결제화면
																				// 초기화
	$('#bokdMSeat').show();	// 좌석도 표시
	$("html,body").scrollTop(0);

	frameBokdMSeatContentObj.fn_display_init();

	frameBokdMSeatContentObj.shwoBlackListPopup(blackListParam);
}

// 결제화면에서 오류 발생시 좌석도로 이동(기선점 존재, 시간 초과 등)
function fn_goPrePageInitSeat(msg) {
	var framePayBookingContentObj = $('#framePayBooking').get(0).contentWindow;
	$('#bokdMPayBooking').hide();
	$('#framePayBooking').attr("src", "/on/oh/ohz/PayBooking/completeSeat.do"); // 결제화면
																				// 초기화

	// 좌석도 초기화
	var frameBokdMSeatContentObj = $('#frameBokdMSeat').get(0).contentWindow;
	frameBokdMSeatContentObj.fn_search('N');  // 새로 조회 및 최초진입 팝업 띄우지 않음
	$('#bokdMSeat').show();	// 좌석도 표시
	$("html,body").scrollTop(0);

	if (msg != null && msg != "") {
		gfn_alertMsgBox("결제가능 시간이 초과되어<br/> 좌석선택부터 다시 진행바랍니다.");
	}

	frameBokdMSeatContentObj.fn_display_init();
	frameBokdMSeatContentObj.fn_search('N');
}

// 프레임 height 자동조정 : 결제만 적용가능
function calcFrameHeight(divObj, frameObj) { // div obj, frame obj
	var frameBodyObj = $(frameObj).get(0).contentWindow.document.body;	// 프레임
																		// 바디
																		// 오브젝트
	var height = $(frameObj).contents().find('.inner-wrap').outerHeight();
	$(divObj).height(height+35);
	$(frameObj).height(height+25);
}

// 선점좌석 체크
function fn_validOccupSeat(param){
	$.ajaxMegaBox({
        url    : "/on/oh/ohb/BokdMain/selectOccupSeat.do",
        data   : JSON.stringify(param),
        success: function(result){
        	var occupSeatAt = result.resultMap.occupSeatAt;	// 좌석선점여부

        	// 비 좌석선점 상태 로그인 체크 하러 감.
			if(occupSeatAt  == "N"){
				fn_validLoginAt(param);	// 로그인 체크
			}
        	// 좌석 선점 상태
        	else {
        		gfn_alertMsgBoxSize('선택하신 좌석은 이미 판매가 진행중입니다．\n다른 좌석을 선택해주세요.',400,250);	// 선택하신
																						// 좌석은
																						// 이미
																						// 판매가
																						// 진행중입니다．\\n다른
																						// 좌석을
																						// 선택해주세요.
        		return;
        	}
        }
    });

}


// 로그인여부 체크
function fn_validLoginAt(param){
	$.ajaxMegaBox({
        url    : "/on/oh/ohg/MbLogin/selectLoginSession.do",
        // data : JSON.stringify(paramData),
        success: function(result){
        	var loginAt = result.resultMap.result;	// 로그인 여부

        	// 비로그인 상태
			if(loginAt  == "N" && sellChnlCd == ""){
				// 로그인 팝업 표시
				fn_viewLoginPopup('SimpleBokdM','pc','Y',JSON.stringify(param));
			}
        	// 비로그인상태 RIA
        	else if(loginAt  == "N" && sellChnlCd != ""){
				gfn_alertMsgBoxSize('로그인이 필요한 서비스 입니다.',400,250);	// 로그인이 필요한
																	// 서비스 입니다.
				fn_riaLoginInputToggle(false);
			}
        	// 로그인 상태
			else {
				// 데이터 보정 체크
				fn_validDataRevisn(param);
			}
        }
    });
}


// 로그인여부 체크
function fn_testLoginAt(){
	$.ajaxMegaBox({
        url    : "/on/oh/ohg/MbLogin/selectLoginSession.do",
        // data : JSON.stringify(paramData),
        success: function(result){
        	var loginAt = result.resultMap.result;	// 로그인 여부
        	alert(loginAt);
        }
    });
}


// RIA 로그인 토글
function fn_setRiaLoginToggle(riaLoginAtArrayParam){	// 0 : 로그인여부, 1:riaName,
														// 2:riaBirthday,
														// 3:riaMobileNo
	var ajaxUrl     = "";
	var paramData   = "";
	var riaLoginAt  = riaLoginAtArrayParam[0];
	var riaName     = "";
	var riaBirthday = "";
	var riaMobileNo = "";

	if("Y" == riaLoginAt){
		// 로그아웃
		ajaxUrl = "/on/oh/ohg/MbLogin/riaLogOut.do";
	}
	else {
		// 로그인
		ajaxUrl = "/on/oh/ohg/MbLogin/selectRiaLoginInfo.rest";

		// 파라메타 생성
		riaName     = riaLoginAtArrayParam[1];
		riaBirthday = riaLoginAtArrayParam[2];
		riaMobileNo = riaLoginAtArrayParam[3];

		paramData   = { name:riaName, birthday:riaBirthday, mobileNo:riaMobileNo, sellChnlCd:sellChnlCd};
	}
	// 로그인 또는 로그아웃
	$.ajaxMegaBox({
        url    : ajaxUrl,
        data   : JSON.stringify(paramData),
        success: function(result){
        	// 전역변수 토글
        	// 로그인 여부 변경
        	if(typeof result.resultMap != 'undefined' && result.resultMap.memberYn != null && result.resultMap.memberYn != ""){
	    		riaLoginAtArrayParam[0] = "Y";							// 로그인여부
	    		riaLoginAtArrayParam[1] =  result.resultMap.name;		// 이름
	        	riaLoginAtArrayParam.push(result.resultMap.memberYn);	// 회원여부
	        	riaLoginAtArrayParam.push(result.resultMap.riaLoginId);	// 로그인ID
        	}
        	else {
        		riaLoginAtArrayParam[0] = "N";	// 로그인여부
        		riaLoginAtArrayParam.push("N");	// 회원여부
        		if("N" == riaLoginAt)
        			gfn_alertMsgBoxSize('이름은  필수 입력 항목 입니다.',400,250);	// {0}
																		// 필수 입력
																		// 항목
																		// 입니다.
        	}

        	fn_riaLoginGVToggle(riaLoginAtArrayParam);

        	// RIA 로그인 입력창 토글
        	fn_riaLoginInputToggle("N" == riaLoginAtArrayParam[0] ? false : true);
        }
    });
}

// RIA 전역변수 토글
function fn_riaLoginGVToggle(arrayParam){
	// 로그인 상태에서 로그아웃 상태로 갈때
	if("N" == arrayParam[0]){
		riaLoginAt         = 'N'; // 메가박스 로그인여부
		riaParamName       = arrayParam[1];  // 고객명
		riaParamBirthday   = arrayParam[2];  // 고객생년월일
		riaParamMobileNo   = arrayParam[3];  // 고객전화번호
		riaMemberYn        = typeof arrayParam == undefined || arrayParam == "" || arrayParam == null ? "N" : arrayParam[5]; // 메가박스
																																// 회원여부
		riaLoginId         = '';  // 로그인ID

	}
	else {
		riaLoginAt         = arrayParam[0];  // 메가박스 로그인여부
		riaParamName       = arrayParam[1];  // 고객명
		riaParamBirthday   = arrayParam[2];  // 고객생년월일
		riaParamMobileNo   = arrayParam[3];  // 고객전화번호
		riaMemberYn        = arrayParam[4];  // 메가박스 회원여부
		riaLoginId         = arrayParam[5];  // 로그인ID
	}
}

// RIA 로그인 입력창 토글
function fn_riaLoginInputToggle(inputAbleAt){
	var frameBokdMBookingBodyObj    = $('#frameBokdMBooking').get(0).contentWindow.document.body;	// 빠른예매
																									// 프레임
																									// 바디
																									// 오브젝트
	var frameBokdMBookingContentObj = $('#frameBokdMBooking').get(0).contentWindow;
	var frameBokdMSeatBodyObj       = $('#frameBokdMSeat').get(0).contentWindow.document.body;	// 좌석도
																								// 프레임
																								// 바디
																								// 오브젝트
	var frameBokdMSeatContentObj    = $('#frameBokdMSeat').get(0).contentWindow;
	var framePayBookingBodyObj      = $('#framePayBooking').get(0).contentWindow.document.body;	// 결제화면
																								// 프레임
																								// 바디
																								// 오브젝트
	var framePayBookingContentObj   = $('#framePayBooking').get(0).contentWindow;
	var riaMemberInputText = "";
	var riaMemberButtonText = "";

	// 로그인 버튼 텍스트 생성
	// 로그인 되어 있는경우
	if("Y" == riaLoginAt){
		//
		if("Y" == riaMemberYn){
			riaMemberInputText = "회원";
			riaMemberButtonText = "재인증";
			msgStr = riaParamName + "(" + riaLoginId + ") 고객님의 회원 정보가 적용되었습니다.";
		}
		else {
			riaMemberInputText = "비회원";
			riaMemberButtonText = "재인증";
			msgStr = "해당 회원 정보가 없습니다. 비회원으로 예매를 진행합니다.";
		}
	}
	// 로그인 되어 있지 않은경우
	else {
		msgStr = "";
		riaMemberButtonText = "인증요청";
	}


	$(frameBokdMBookingBodyObj).find('.cti-area input[name=riaName]').val(riaParamName);	// 고객명
	$(frameBokdMBookingBodyObj).find('.cti-area input[name=riaMobileNo]').val(riaParamMobileNo);	// 고객전화번호
	$(frameBokdMBookingBodyObj).find('.cti-area input[name=riaBirthday]').val(riaParamBirthday);	// 고객생년월일
	$(frameBokdMBookingBodyObj).find('.cti-area input[name=riaMemberYn]').val(riaMemberInputText);	// 회원여부

	$(frameBokdMBookingBodyObj).find('.cti-area input[name=riaName]').attr("readonly",inputAbleAt);		// 고객명
	$(frameBokdMBookingBodyObj).find('.cti-area input[name=riaMobileNo]').attr("readonly",inputAbleAt);	// 고객전화번호
	$(frameBokdMBookingBodyObj).find('.cti-area input[name=riaBirthday]').attr("readonly",inputAbleAt);	// 고객생년월일
	$(frameBokdMBookingBodyObj).find('.cti-area button').attr('login-at',riaLoginAt);	// 회원여부
	$(frameBokdMBookingBodyObj).find('.cti-area button').html(riaMemberButtonText);

	// 좌석도
	$(frameBokdMSeatBodyObj).find('.cti-area input[name=riaName]').val(riaParamName);	// 고객명
	$(frameBokdMSeatBodyObj).find('.cti-area input[name=riaMobileNo]').val(riaParamMobileNo);	// 고객전화번호
	$(frameBokdMSeatBodyObj).find('.cti-area input[name=riaBirthday]').val(riaParamBirthday);	// 고객생년월일
	$(frameBokdMSeatBodyObj).find('.cti-area input[name=riaMemberYn]').val(riaMemberInputText);	// 회원여부

	$(frameBokdMSeatBodyObj).find('.cti-area input[name=riaName]').attr("readonly",inputAbleAt);		// 고객명
	$(frameBokdMSeatBodyObj).find('.cti-area input[name=riaMobileNo]').attr("readonly",inputAbleAt);	// 고객전화번호
	$(frameBokdMSeatBodyObj).find('.cti-area input[name=riaBirthday]').attr("readonly",inputAbleAt);	// 고객생년월일
	$(frameBokdMSeatBodyObj).find('.cti-area button').attr('login-at',riaLoginAt);	// 회원여부
	$(frameBokdMSeatBodyObj).find('.cti-area button').html(riaMemberButtonText);

	// 결제
	$(framePayBookingBodyObj).find('.cti-area input[name=riaName]').val(riaParamName);	// 고객명
	$(framePayBookingBodyObj).find('.cti-area input[name=riaMobileNo]').val(riaParamMobileNo);	// 고객전화번호
	$(framePayBookingBodyObj).find('.cti-area input[name=riaBirthday]').val(riaParamBirthday);	// 고객생년월일
	$(framePayBookingBodyObj).find('.cti-area input[name=riaMemberYn]').val(riaMemberInputText);	// 회원여부

	$(framePayBookingBodyObj).find('.cti-area input[name=riaName]').attr("readonly",inputAbleAt);		// 고객명
	$(framePayBookingBodyObj).find('.cti-area input[name=riaMobileNo]').attr("readonly",inputAbleAt);	// 고객전화번호
	$(framePayBookingBodyObj).find('.cti-area input[name=riaBirthday]').attr("readonly",inputAbleAt);	// 고객생년월일
	$(framePayBookingBodyObj).find('.cti-area button').attr('login-at',riaLoginAt);	// 회원여부

	fn_getMsgStrToAlert();

}


function fn_getMsgStrToAlert(){
	if(sellChnlCd == "TELLER" && msgStr != ""){
		gfn_alertMsgBox(msgStr);
	}
}


// 데이터 보정 체크 데이터 보정 체크 안함 김민영과장 2019-12-02
function fn_validDataRevisn(param){
	fn_vlaidBlackList(param);

// $.ajaxMegaBox({
// url : "/on/oh/ohg/MbLogin/selectDataRevisn.do",
// //data : JSON.stringify(paramData),
// success: function(result){
// var dataRevisnAt = result.resultMap.result; //로그인 여부

// //자료보정대상
// if(dataRevisnAt == "Y" && sellChnlCd == ""){
// //자료 보정 안내 메세지 표시
// var arguments=result.resultMap.birthDe+' / '+result.resultMap.mblpTelno;
// var frameBokdMSeatContentObj = $('#frameBokdMSeat').get(0).contentWindow;
// //좌석도 프레임 컨텐츠 오브젝트
// frameBokdMSeatContentObj.shwoDataRevisnPopup(arguments,param);
// }
// //자료보정대상아님
// else {
// //블랙리스트 체크
// fn_vlaidBlackList(param);
// }
// }
// });
}

// 블랙리스트 체크
function fn_vlaidBlackList(param){
	var paramData = { BokdCnt : param.bokdCnt
					, BokdBrch : param.brchNo
					};
// //좌석수 param
	$.ajaxMegaBox({
        url    : "/on/oh/ohg/MbLogin/selectBlackList.do",
        data   : JSON.stringify(paramData),
        success: function(result){
        	var dataBlackListAt = result.resultMap.result;
        	// 블랙리스트 대상
        	// dataBlackListAt = "N"; //주희연 통테 테스트용 블랙리스트 체크 제외 로직 삽입. 20191118
			if(dataBlackListAt  == "Y"){
				// 블랙리스트 안내 메세지 표시
				var frameBokdMSeatContentObj = $('#frameBokdMSeat').get(0).contentWindow;
				var blackListParam = { bokdAbleBrch: result.resultMap.bokdAbleBrch
									, bokdAbleCnt: result.resultMap.bokdAbleCnt
									, bokdAbleQty: result.resultMap.bokdAbleQty
									 }
				frameBokdMSeatContentObj.shwoBlackListPopup(blackListParam);
			}
			// 블랙리스트 비 대상
			else {
				// 결제로 이동
 				fn_setBookingParamMove(param);
			}
        }
    });
}

// 페이지 이동
function fn_mvPage(page){
	$("#bokdMForm").attr("method","post");
	$("#bokdMForm").attr("action",page);
	$("#bokdMForm").submit();
}


// 언어변환
function setLangChg(){
    if(localeCode == "en"){
        location.href="/booking?megaboxLanguage=kr";
    }
    else {
        location.href="/booking?megaboxLanguage=en";
    }
}

// 페이지 리로드
function fn_bokdReload(page){
	$("#bokdMForm").attr("method","post");
	$("#bokdMForm").attr("action",page);
	$("#bokdMForm").submit();
}


$(window).on("beforeunload", function(){

	// 결제 페이지 이동시
	if( $("#framePayBooking").contents().find("#completeYn").val() != 'Y' &&
			$("#framePayBooking").contents().find("#prepareYn").val() == 'Y' ){

		$.ajaxMegaBox({
			url		: '/on/oh/ohg/MbLogin/nonMbLogout.do',
	        success	: function(result){

	        	// console.log("result : "+result);
	        },
	        complete : function(){

	        	// console.log("?");
	        }
	    });
	}

});