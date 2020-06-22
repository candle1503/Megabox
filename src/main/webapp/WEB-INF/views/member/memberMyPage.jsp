<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="ko">
<head>

<title>나의메가박스 | 라이프씨어터, 메가박스</title>

<link rel="shortcut icon" href="/resources/icon/favicon.ico">
<link rel="stylesheet" href="/resources/css/megabox.min.css" media="all">
</head>

<body>
	<div class="body-wrap">

		<div style="display: none;">
			<a id="loginPupupATag" href="#layer_login_select"
				class="button active btn-modal-open" w-data="850" h-data="484"></a>
		</div>

		<header id="header">
			<h1 class="ci">
				<a href="/" title="MEGABOX 메인으로 가기">MEGABOX : Life Theater</a>
			</h1>

			<!-- 2019-04-15 마크업 수정 : 고객요청  -->
			<div class="util-area">
				<div class="left-link">
					<a href="/benefit/viplounge" title="VIP LOUNGE">VIP LOUNGE</a> <a
						href="/benefit/membership" title="멤버십">멤버십</a> <a href="/support"
						title="고객센터">고객센터</a>
				</div>

				<div class="right-link">

					<!-- 로그인후 -->
					<div class="after" style="">
						<a href="/on/oh/ohg/MbLogin/mbLogout.do" class="" title="로그아웃">로그아웃</a>
						<a href="" class="notice" title="알림">알림</a>

						<div class="layer-header-notice">
							<div class="notice-wrap">
								<p class="tit-notice">알림함</p>

						</div>

					</div>

					<a href="/booking">빠른예매</a>
				</div>
			</div>
			<!--// 2019-04-15 마크업 수정 : 고객요청  -->

			<div class="link-area">
				<a href="#layer_sitemap" class="header-open-layer btn-layer-sitemap"
					title="사이트맵">사이트맵</a> <a href="#layer_header_search"
					class="header-open-layer btn-layer-search" title="검색">검색</a> <a
					href="/booking/timetable" class="link-ticket" title="상영시간표">상영시간표</a>
				<a href="#layer_mymega" class="header-open-layer btn-layer-mymega"
					title="나의 메가박스">나의 메가박스</a>
			</div>


			<nav id="gnb">
				<ul class="gnb-depth1">
					<li><a href="/movie" class="gnb-txt-movie" title="영화"></a></li>
					<li><a href="/booking" class="gnb-txt-reserve" title="예매"></a></li>
					<li><a href="/theater/list" class="gnb-txt-theater" title="극장"></a>
							</li>
					<li><a href="javascript:void(0)"
						onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;"
						class="gnb-txt-event" title="이벤트"></a></li>
					<li><a href="javascript:void(0)"
						onclick="NetfunnelChk.aTag('STORE_LIST','/store');return false;"
						class="gnb-txt-store" title="스토어"></a></li>
					<li><a href="/benefit/membership" class="gnb-txt-benefit"
						title="혜택"></a></li>
				</ul>
			</nav>




			<div id="layer_sitemap" class="header-layer layer-sitemap">
				<!-- wrap -->
				<div class="wrap">
					<a href="" class="link-acc" title="사이트맵 레이어 입니다.">사이트맵 레이어 입니다.</a>

					<p class="tit">SITEMAP</p>

					<div class="list position-1">
						<p class="tit-depth">영화</p>

						<ul class="list-depth">
							<li><a href="/movie" title="전체영화">전체영화</a></li>
							<li><a href="/curation/specialcontent" title="큐레이션">큐레이션</a></li>
							<li><a href="javascript:void(0)"
								onclick="javascript:MegaboxUtil.Common.moveMovieFilmCheck();"
								title="영화제">영화제</a></li>
							<li><a href="/moviepost/all" title="무비포스트">무비포스트</a></li>
						</ul>
					</div>

					<div class="list position-2">
						<p class="tit-depth">예매</p>

						<ul class="list-depth">
							<li><a href="/booking" title="빠른예매">빠른예매</a></li>
							<li><a href="/booking/timetable" title="상영시간표">상영시간표</a></li>
							<li><a href="/booking/privatebooking" title="더 부티크 프라빗 예매">더
									부티크 프라이빗 예매</a></li>
							<!-- <li><a href="/booking?megaboxLanguage=en" title="English Ticketing">English Ticketing</a></li> -->
						</ul>
					</div>

					<div class="list position-3">
						<p class="tit-depth">극장</p>

						<ul class="list-depth">
							<li><a href="/theater/list" title="전체극장">전체극장</a></li>
							<li><a href="/specialtheater/list" title="특별관">특별관</a></li>
						</ul>
					</div>

					<div class="list position-4">
						<p class="tit-depth">이벤트</p>

						<ul class="list-depth">
							<li><a href="javascript:void(0)"
								onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;"
								title="진행중 이벤트">진행중 이벤트</a></li>
							<li><a href="javascript:void(0)"
								onclick="NetfunnelChk.aTag('EVENT_LIST','/event/end');return false;"
								title="지난 이벤트">지난 이벤트</a></li>
							<li><a href="javascript:void(0)"
								onclick="NetfunnelChk.aTag('EVENT_LIST','/event/winner/list');return false;"
								title="당첨자발표">당첨자발표</a></li>
						</ul>
					</div>

					<div class="list position-5">
						<p class="tit-depth">스토어</p>

						<ul class="list-depth">
							<li><a href="javascript:void(0)"
								onclick="NetfunnelChk.aTag('STORE_LIST','/store');return false;"
								title="새로운 상품">새로운 상품</a></li>
							<li><a href="javascript:void(0)"
								onclick="NetfunnelChk.aTag('STORE_LIST','/store/megaticket');return false;"
								title="메가티켓">메가티켓</a></li>
							<li><a href="javascript:void(0)"
								onclick="NetfunnelChk.aTag('STORE_LIST','/store/megachance');return false;"
								title="메가찬스">메가찬스</a></li>
							<li><a href="javascript:void(0)"
								onclick="NetfunnelChk.aTag('STORE_LIST','/store/popcorn');return false;"
								title="팝콘/음료/굿즈">팝콘/음료/굿즈</a></li>
							<!-- <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('STORE_LIST','/store/e-giftcard');return false;" title="기프트카드">기프트카드</a></li> -->
						</ul>
					</div>
					<div class="list position-6">
						<p class="tit-depth">나의 메가박스</p>
						<ul class="list-depth mymage">



							<li><a href="/mypage" title="나의 메가박스 홈">나의 메가박스 홈</a></li>
							<li><a href="/mypage/bookinglist" title="예매/구매내역">예매/구매내역</a></li>
							<li><a href="/mypage/movie-coupon" title="영화관람권">영화관람권</a></li>
							<li><a href="/mypage/store-coupon" title="스토어교환권">스토어교환권</a></li>
							<li><a href="/mypage/discount-coupon" title="할인/제휴쿠폰">할인/제휴쿠폰</a></li>
							<!-- <li><a href="/on/oh/ohh/Mvtckt/GiftCardL.do">기프트카드</a></li> -->
							<li><a href="/mypage/point-list" title="멤버십포인트">멤버십포인트</a></li>
							<li><a href="/mypage/moviestory" title="나의 무비스토리">나의
									무비스토리</a></li>
							<li><a href="/mypage/myevent" title="나의 이벤트 응모내역">나의 이벤트
									응모내역</a></li>
							<li><a href="/mypage/myinquiry" title="나의 문의내역">나의 문의내역</a></li>
							<li><a href="/mypage/mydiscount" title="자주쓰는 할인 카드">자주쓰는
									할인 카드</a></li>
							<li><a href="/on/oh/ohh/Mypage/mainPage.do?returnURL=info"
								title="회원정보">회원정보</a></li>


						</ul>
					</div>

					<div class="list position-7">
						<p class="tit-depth">혜택</p>

						<ul class="list-depth">
							<li><a href="/benefit/membership" title="멤버십 안내">멤버십 안내</a></li>
							<li><a href="/benefit/viplounge" title="VIP LOUNGE">VIP
									LOUNGE</a></li>
							<li><a href="/benefit/discount/guide" title="제휴/할인">제휴/할인</a></li>
						</ul>
					</div>

					<div class="list position-8">
						<p class="tit-depth">고객센터</p>

						<ul class="list-depth">
							<li><a href="/support" title="고객센터 홈">고객센터 홈</a></li>
							<li><a href="/support/faq" title="자주묻는질문">자주묻는질문</a></li>
							<li><a href="/support/notice" title="공지사항">공지사항</a></li>
							<li><a href="/support/inquiry" title="1:1문의">1:1문의</a></li>
							<li><a href="/support/rent" title="단체/대관문의">단체/대관문의</a></li>
							<li><a href="/support/lost" title="분실물문의">분실물문의</a></li>
						</ul>
					</div>

					<div class="list position-9">
						<p class="tit-depth">회사소개</p>

						<ul class="list-depth">
							<li><a href="/megaboxinfo" target="_blank" title="메가박스소개">메가박스소개</a></li>
							<li><a href="/socialcontribution" target="_blank"
								title="사회공헌">사회공헌</a></li>
							<li><a href="/advertize" target="_blank" title="홍보자료">홍보자료</a></li>
							<li><a href="/partner" target="_blank" title="제휴/부대사업문의">제휴/부대사업문의</a></li>
							<li><a href="/onlinereport" target="_blank" title="온라인제보센터">온라인제보센터</a></li>
							<li><a href="/ir" target="_blank" title="자료">IR자료</a></li>
							<li><a href="/recruit" target="_blank" title="인재채용림">인재채용</a></li>
							<li><a href="https://jebo.joonganggroup.com/main.do"
								target="_blank" title="윤리경영">윤리경영</a></li>
						</ul>
					</div>

					<div class="list position-10">
						<p class="tit-depth">이용정책</p>

						<ul class="list-depth">
							<li><a href="/support/terms" title="이용약관">이용약관</a></li>
							<li><a href="/support/privacy" title="개인정보처리방침">개인정보처리방침</a></li>
							<li><a href="/support/screenrule" title="스크린수배정에관한기준">스크린수배정에관한기준</a></li>
						</ul>
					</div>

					<div class="ir">
						<a href="" class="layer-close" title="레이어닫기">레이어닫기</a>
					</div>
				</div>
				<!--// wrap -->
			</div>
			<!--// 레이어 : 사이트맵 -->

			<!-- 레이어 : 검색 -->
			<div id="layer_header_search"
				class="header-layer layer-header-search"></div>
			<!--// 레이어 : 검색 -->

			<!-- 레이어 : 마이페이지 -->




			<div id="layer_mymega" class="header-layer layer-mymege">
				<a href="" class="ir" title="나의 메가박스 레이어 입니다.">나의 메가박스 레이어 입니다.</a>

				<!-- wrap -->
				<div class="wrap" style="display: none">

					<div class="login-after">
						<div class="user-info">
							<p class="txt">안녕하세요!</p>

							<p class="info">
								<!--
                            vip 일때만 출력
                            vip 아닐때는 태그 자체 삭제
                        -->
								<em class="vip">VIP PREMIUM</em> <em class="name"></em> <span>회원님</span>
							</p>

							<div class="last-date">
								마지막 접속일 : <em></em>
							</div>

							<!-- vip, 멤버십 없을때는 미 출력  -->
							<div class="membership">
								<!-- <i class="iconset ico-header-vip"></i>
                        <i class="iconset ico-header-film"></i>
                        <i class="iconset ico-header-classic"></i> -->
							</div>

							<div class="btn-fixed">
								<a href="/mypage" class="button" title="나의  메가박스">나의 메가박스</a>
							</div>
						</div>

						<div class="box">
							<div class="point">
								<p class="tit">Point</p>

								<p class="count">0</p>

								<div class="btn-fixed">
									<a href="/mypage/point-list" class="button" title="멤버십 포인트">멤버십
										포인트</a>
								</div>
							</div>
						</div>

						<div class="box">
							<div class="coupon">
								<p class="tit">
									쿠폰/관람권
									<!-- <i class="iconset ico-header-new"></i> -->
								</p>

								<p class="count">
									<em title="쿠폰 수" class="cpon">0</em> <span title="관람권 수"
										class="movie">0</span>
								</p>

								<div class="btn-fixed">
									<a href="/mypage/discount-coupon" class="button" title="쿠폰">쿠폰</a>
									<a href="/mypage/movie-coupon" class="button" title="관람권">관람권</a>
								</div>
							</div>
						</div>

						<div class="box">
							<div class="reserve">
								<p class="tit">
									예매
									<!-- <i class="iconset ico-header-new"></i> -->
								</p>

								<p class="txt"></p>

								<div class="btn-fixed">
									<a href="/mypage/bookinglist" class="button" title="예매내역">예매내역
									</a>
								</div>
							</div>
						</div>

						<div class="box">
							<div class="buy">
								<p class="tit">
									구매
									<!-- <i class="iconset ico-header-new"></i> -->
								</p>

								<p class="count">
									<em>0</em> <span>건</span>
								</p>
							</div>

							<div class="btn-fixed">
								<a href="/mypage/bookinglist?tab=02" class="button" title="구매내역">구매내역</a>
							</div>
						</div>
					</div>

					<!-- 로그인 전 -->
					<div class="login-before">
						<p class="txt">
							로그인 하시면 나의 메가박스를 만날 수 있어요.<br> 영화를 사랑하는 당신을 위한 꼭 맞는 혜택까지 확인해
							보세요!
						</p>

						<div class="mb50">
							<a href="#layer_login_common" id="moveLogin" title="로그인"
								class="button w120px btn-modal-open" w-data="850" h-data="484">로그인</a>
						</div>

						<a href="/join" class="link" title="혹시 아직 회원이 아니신가요?">혹시 아직
							회원이 아니신가요?</a>
					</div>
				</div>
				<!--// wrap -->

				<div class="ir">
					<a href="" class="layer-close" title="레이어닫기">레이어닫기</a>
				</div>
			</div>
			<!--// 레이어 : 마이페이지 -->

		</header>
		<!--// header -->


		<div class="container has-lnb">
			<div class="page-util">
				<div class="inner-wrap" id="myLoaction">
					<div class="location">
						<span>Home</span> <a href="/mypage" title="나의 메가박스 페이지로 이동">나의
							메가박스</a>
					</div>
				</div>
			</div>

			<div class="inner-wrap">

				<div class="lnb-area">
					<nav id="lnb">
						<p class="tit on">
							<a href="/mypage" title="나의 메가박스">나의 메가박스</a>
						</p>

						<ul>
							<li class=""><a href="/mypage/bookinglist" title="예매/구매내역">예매/구매내역</a></li>
							<li><a href="/mypage/movie-coupon" title="영화/스토어 관람권">영화/스토어
									관람권</a>
								<ul class="depth3">
									<li><a href="/mypage/movie-coupon" title="영화관람권">영화관람권</a></li>
									<li><a href="/mypage/store-coupon" title="스토어 교환권">스토어
											교환권</a></li>
								</ul></li>
							<li><a href="/mypage/discount-coupon" title="할인/제휴쿠폰">할인/제휴쿠폰</a></li>
							<!-- <li><a href="/on/oh/ohh/Mvtckt/GiftCardL.do">메가박스 기프트카드</a></li> -->
							<li><a href="/mypage/point-list" title="멤버십 포인트">멤버십 포인트</a>
								<ul class="depth3">
									<li><a href="/mypage/point-list" title="포인트 이용내역">포인트
											이용내역</a></li>
									<li><a href="/mypage/card-list" title="멤버십 카드관리">멤버십
											카드관리</a></li>
								</ul></li>
							<li><a href="/mypage/moviestory" titel="나의 무비스토리">나의
									무비스토리</a></li>
							<li><a href="/mypage/myevent" title="나의 이벤트 응모내역">나의 이벤트
									응모내역</a></li>
							<li><a href="/mypage/myinquiry" title="나의 문의내역">나의 문의내역</a></li>
							<li><a href="/mypage/mydiscount" title="자주쓰는 할인 카드">자주쓰는
									카드 관리</a></li>
							<li><a href="/mypage/myinfo?returnURL=info" title="회원정보">회원정보</a>
								<ul class="depth3">
									<li><a href="/mypage/myinfo?returnURL=info"
										title="개인정보 수정">개인정보 수정</a></li>
									<li><a href="/mypage/additionalinfo" title="선택정보 수정">선택정보
											수정</a></li>
								</ul></li>
						</ul>
					</nav>
				</div>
				<style type="text/css">
.fdLayer {
	display: none;
	position: absolute;
	left: 50%;
	height: auto;
	background-color: #fff;
	border: 5px solid rgb(0, 66, 101);
	z-index: 10;
}

.fdLayer .fdContainer {
	padding: 3px;
}

.fdLayer .fdBtn {
	width: 100%;
	margin: 10px 0 0;
	padding-top: 10px;
	border-top: 1px solid #DDD;
	text-align: right;
}

a.closeBtn {
	display: inline-block;
	height: 25px;
	padding: 0 14px 0;
	border: 1px solid #304a8a;
	background-color: rgb(0, 32, 61);
	font-size: 13px;
	color: #fff;
	line-height: 25px;
}

a.closeBtn:hover {
	border: 1px solid #091940;
	background-color: #1f326a;
	color: #fff;
}

#mask {
	position: absolute;
	left: 0;
	top: 0;
	z-index: 9;
	background-color: #000;
	display: none;
}
/* LAYER POPUP STYLE END */
</style>
				<!-- 레이어 팝업 처리 시 화면 영역 시작 -->
				<div id="mask"></div>
				<div id="fdpayWin" class="fdLayer">
					<div class="fdContainer">
						<div class="pop-conts">
							<iframe id="FD_PAY_FRAME" name="FD_PAY_FRAME" title="결제팝업창"
								frameborder="1" width="560" height="600"
								style="background-color: #FFFFFF;"></iframe>
							<div class="fdBtn">
								<a href="#" class="closeBtn" title="Close">Close</a>
							</div>
						</div>
					</div>
				</div>
				<!-- 레이어 팝업 처리 시 화면 영역 끝 -->


				<div id="myLoactionInfo" style="display: none;">
					<div class="location">
						<span>Home</span> <a href="/mypage" title="나의 메가박스 페이지로 이동">나의
							메가박스</a>
					</div>
				</div>

				<div id="contents" class="">

					<!-- my-megabox-main -->
					<div class="my-megabox-main">

						<div class="my-magabox-info ">
							<!-- top -->
							<div class="top">
								<div class="photo" id="myPhoto">
									<div class="wrap">
										<form name="fileForm" style="display: none;">
											<input type="file" name="file"> <input type="hidden"
												name="fileMbNo" value="2306892">
										</form>

										<i class="iconset ico-add-photo"></i>

										<button type="button" class="img">
											<img src="/static/pc/images/mypage/bg-photo.png" alt="전재호"
												onerror="noImg(this, 'human')">
										</button>
									</div>
								</div>

								<div class="grade">
									<p class="name">
										전재호님은<br>일반등급입니다.
									</p>

									<div class="link">
										<a href="/mypage/myinfo?returnURL=info" title="개인정보수정 페이지로 이동">개인정보수정
											<i class="iconset ico-arr-right-reverse"></i>
										</a> <a href="#layer_before_grade" id="bfrClassSearch"
											class="btn-modal-open" w-data="400" h-data="400"
											title="지난등급 상세보기"> 지난등급조회 <i
											class="iconset ico-arr-right-reverse"></i>
										</a>
									</div>
								</div>

								<div class="txt-vip-coupon" style="display: none;">
									<i class="iconset ico-exclamation-white"></i> 아직 VIP쿠폰북을 발급하지
									않으셨네요! <a href="/vipcoupon/guide" title="VIP쿠폰북 발급 페이지로 가기">VIP쿠폰북
										발급하기</a>
								</div>

								<div class="special-membership" id="myMembership">
									<p class="tit">Special Membership</p>

									<!-- 스폐셜 가입 안했을 때 -->
									<div class="join">
										<div class="box">
											<i class="iconset ico-film-society"></i> <span>필름</span>
										</div>
									</div>
								</div>
							</div>
							<!--// top -->

							<!-- bottom -->
							<div class="bottom">
								<div class="point" id="myPoint">
									<div class="tit-area">
										<p class="tit">총 보유 포인트</p>
										<a href="/mypage/point-list" class="more"
											title="포인트 이용내역 페이지로 이동"><i
											class="iconset ico-arr-right-gray">더보기</i></a>
									</div>

									<div class="cont-area">
										<div class="total">
											<p class="now">11,500 P</p>

											<div class="division" style="">
												<div class="cell">
													<p class="old">
														<span>구 포인트</span> <em>10,800 P</em>
													</p>

													<p class="new">
														<span>신 포인트</span> <em>700 P</em>
													</p>
												</div>
											</div>
										</div>

										<div class="change">
											<p class="save">
												<span>적립예정</span> <em>0 P</em>
											</p>

											<div class="del">
												<span>소멸예정</span> <em>0 P</em>
											</div>
										</div>
									</div>
								</div>

								<!-- theater -->
								<div class="theater" id="myFaverBrch">
									<div class="tit-area">
										<p class="tit">선호극장</p>
										<a href="" class="right" title="선호극장 변경">변경 <i
											class="iconset ico-arr-right-reverse"></i></a>
									</div>

									<div class="list">
										<div class="no-list" style="display: none;">
											<span>선호극장</span>을 설정하세요.
										</div>
										<ol>
											<li><em>1</em> <span>상암월드컵경기장</span></li>
											<li><em>2</em> <span>고양스타필드</span></li>
										</ol>
									</div>
								</div>
								<!--// theater -->

								<!-- coupon -->
								<div class="coupon" id="myCoupon">
									<div class="tit-area">
										<p class="tit">관람권/쿠폰</p>

										<a href="/mypage/movie-coupon" class="more"><i
											class="iconset ico-arr-right-gray" title="영화관람권 페이지로 이동">더보기</i></a>
									</div>

									<div class="list">
										<ul>
											<li><span>영화관람권</span> <em>0 매</em></li>
											<li><span>스토어교환권</span> <em>0 매</em></li>
											<li><span>할인/제휴쿠폰</span> <em>8 매</em></li>
										</ul>
									</div>
								</div>
								<!--// coupon -->
							</div>
							<!--// bottom -->
						</div>
						<!--// my-magabox-info -->

						<!-- 레이어 : 지난등급조회 -->
						<section id="layer_before_grade" class="modal-layer">
							<a href="" class="focus">레이어로 포커스 이동 됨</a>
							<div class="wrap">
								<header class="layer-header">
									<h3 class="tit">지난등급조회</h3>
								</header>

								<div class="layer-con">

									<!-- layer-before-grade -->
									<div class="layer-before-grade">
										<p class="name">
											전재호님은<br>일반등급입니다.
										</p>

										<div class="table-wrap mt10">
											<table class="data-table a-c" summary="지난등급조회 목록 표">
												<caption>지난등급조회 목록 표</caption>
												<colgroup>
													<col style="width: 50%;">
													<col style="width: 50%;">
												</colgroup>
												<thead>
													<tr>
														<th scope="col">승급 년도</th>
														<th scope="col">등급</th>
													</tr>
												</thead>
												<tbody>
												</tbody>
											</table>
										</div>

										<ul class="dash-list mt10">
											<li>지난 5년 간의 회원 등급을 확인하실 수 있습니다.</li>
										</ul>
									</div>
									<!--// layer-before-grade -->
								</div>

								<button type="button" class="btn-modal-close">레이어 닫기</button>
							</div>
						</section>
						<!--// 레이어 : 지난등급조회 -->

						<!-- vip 일때만 출력 : my-stamp-mission -->

						<!--// vip 일때만 출력 : my-stamp-mission -->

						<!-- column -->
						<div class="column mt70">
							<!-- left -->
							<div class="col left" id="myStory">
								<div class="tit-util">
									<h2 class="tit small">나의 무비스토리</h2>

									<div class="right">
										<a href="#saw_movie_regi"
											class="button gray-line small btn-modal-open" w-data="600"
											h-data="470" title="본 영화 등록">본 영화 등록</a>
									</div>
								</div>

								<div class="box-border link-movie-story">
									<a href="/mypage/moviestory?cd=sm" title="본 영화 탭으로 이동"> <em>33</em>
										<span>본 영화</span>
									</a> <a href="/mypage/moviestory?cd=one" title="한줄평 탭으로 이동"> <em>0</em>
										<span>한줄평</span>
									</a> <a href="/mypage/moviestory?cd=lm" title="보고싶어 탭으로 이동"> <em>0</em>
										<span>보고싶어</span>
									</a> <a href="/mypage/moviestory?cd=mp" title="무비포스트 탭으로 이동"> <em>0</em>
										<span>무비포스트</span>
									</a>
								</div>
							</div>
							<!--// left -->

						</div>
						<!--// column -->

						<div id="myBokd">
							<div class="tit-util mt70">
								<h2 class="tit small">나의 예매내역</h2>

								<a href="/mypage/bookinglist?tab=01" class="more"
									title="나의 예매내역 더보기">더보기 <i
									class="iconset ico-arr-right-gray"></i></a>
							</div>

							<!-- my-reserve-history -->
							<div class="my-reserve-history">
								<ul>
									<li class="no-result">
										<div class="no-history-reservation">예매 내역이 없습니다.</div>
									</li>
								</ul>
							</div>
							<!--// my-reserve-history -->
						</div>

						<div id="myPurc">
							<div class="tit-util mt70">
								<h2 class="tit small">나의 구매내역</h2>

								<a href="/mypage/bookinglist?tab=02" class="more"
									title="나의 구매내역 더보기">더보기 <i
									class="iconset ico-arr-right-gray"></i></a>
							</div>

							<div class="table-wrap">
								<table class="board-list line" summary="나의 구매내역 요약 표">
									<caption>나의 구매내역 요약 표</caption>
									<colgroup>
										<col style="width: 160px;">
										<col style="width: 140px;">
										<col>
										<col style="width: 120px;">
										<col style="width: 80px;">
									</colgroup>
									<tbody>
										<tr>
											<td colspan="6" class="a-c">구매내역이 없습니다.</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

						<!-- column -->
						<div class="column mt70">
							<!-- left -->
							<div class="col left" id="mySbsc">
								<div class="tit-util">
									<h2 class="tit small">참여이벤트</h2>
									<a href="/mypage/myevent" class="more" title="참여이벤트 더보기">더보기
										<i class="iconset ico-arr-right-gray"></i>
									</a>
								</div>

								<div class="brd-list">
									<ul>
										<li class="no-result">참여한 이벤트가 없습니다.</li>
									</ul>
								</div>
							</div>
							<!--// left -->

							<!-- right -->
							<div class="col right" id="myInq">
								<div class="tit-util">
									<h2 class="tit small">문의내역</h2>

									<a href="/mypage/myinquiry?tab=" class="more" title="문의내역 더보기">더보기
										<i class="iconset ico-arr-right-gray"></i>
									</a>
								</div>

								<div class="brd-list">
									<ul>
										<li class="no-result">문의내역이 없습니다.</li>
									</ul>
								</div>
							</div>
							<!--// right -->
						</div>
						<!--// column -->
					</div>
					<!--// my-megabox-main -->
				</div>

			</div>
		</div>




		<section id="saw_movie_regi" class="modal-layer">
			<a href="" class="focus">레이어로 포커스 이동 됨</a> <input type="hidden"
				id="isLogin" value="Y">
			<div class="wrap">
				<header class="layer-header">
					<h3 class="tit">본 영화 등록</h3>
				</header>

				<div class="layer-con">
					<p class="reset">발권하신 티켓 하단의 거래번호 또는 예매번호를 입력해주세요.</p>

					<div class="pop-gray mt10 mb30">
						<label for="movie_regi" class="mr10">거래번호 또는 예매번호</label> <input
							type="text" id="movie_regi" class="input-text w280px numType"
							maxlength="20" placeholder="숫자만 입력해 주세요" title="티켓 거래번호 입력">
						<button class="button gray ml05" id="regBtn">등록</button>
					</div>

					<div class="box-border v1 mt30">
						<p class="tit-box">이용안내</p>

						<ul class="dot-list">
							<li>극장에서 예매하신 내역을 본 영화(관람이력)로 등록하실 수 있습니다.</li>
							<li>예매처를 통해 예매하신 고객님은 극장에서 발권하신 티켓 하단의 온라인 예매번호 <br>12자리를
								입력해주세요.(Yes24, 네이버, 맥스무비, 인터파크, SKT, KT, 다음)
							</li>
							<li>본 영화 등록은 관람인원수 만큼 등록가능하며, 동일 계정에 중복등록은 불가합니다.</li>
							<li>상영시간 종료 이후 등록 가능합니다.</li>
							<li>본 영화로 수동 등록한 내역은 이벤트 참여 및 포인트 추후 적립이 불가합니다.</li>
						</ul>
					</div>
				</div>

				<div class="btn-group-fixed">
					<button type="button" class="button purple close-layer">닫기</button>
				</div>

				<button type="button" class="btn-modal-close">레이어 닫기</button>
			</div>
		</section>

		<div class="quick-area" style="display: none;">
			<a href="" class="btn-go-top" title="top" style="position: fixed;">top</a>
		</div>

		<!-- footer -->
		<footer id="footer">
			<!-- footer-top -->
			<div class="footer-top">
				<div class="inner-wrap">
					<ul class="fnb">
						<li><a href="/megaboxinfo" title="회사소개 페이지로 이동">회사소개</a></li>
						<li><a href="/recruit" title="인재채용 페이지로 이동">인재채용</a></li>
						<li><a href="/socialcontribution" title="사회공헌 페이지로 이동">사회공헌</a></li>
						<li><a href="/partner" title="제휴/광고/부대사업문의 페이지로 이동">제휴/광고/부대사업문의</a></li>
						<li><a href="/support/terms" title="이용약관 페이지로 이동">이용약관</a></li>
						<li class="privacy"><a href="/support/privacy"
							title="개인정보처리방침 페이지로 이동">개인정보처리방침</a></li>
						<li><a href="https://jebo.joonganggroup.com/main.do"
							target="_blank" title="윤리경영 페이지로 이동">윤리경영</a></li>
					</ul>

					<a href="#layer_looking_theater" class="btn-looking-theater"
						title="극장찾기"><i class="iconset ico-footer-search"></i> 극장찾기</a>
				</div>
			</div>
			<!--// footer-top -->

			<!-- footer-bottom -->
			<div class="footer-bottom">
				<div class="inner-wrap">
					<div class="ci">MEGABOX : Life Theater</div>

					<div class="footer-info">
						<div>
							<address>서울특별시 성동구 왕십리로 50, 6층(성수동 1가, 메가박스스퀘어)</address>
							<p>ARS 1544-0070</p>
						</div>
						<p>대표자명 김진선</p>
						<p>· 개인정보보호책임자 조상연</p>
						<p>· 사업자등록번호 211-86-59478</p>
						<p>· 통신판매업신고번호 제 833호</p>
						<p class="copy">COPYRIGHT © MegaboxJoongAng, Inc. All rights
							reserved</p>
					</div>

					<div class="footer-sns">
						<a href="https://twitter.com/megaboxon" target="_blank"
							title="MEGABOX 트위터 페이지로 이동"><i class="iconset ico-twitter">트위터</i></a>
						<a href="https://www.facebook.com/megaboxon" target="_blank"
							title="MEGABOX 페이스북 페이지로 이동"><i class="iconset ico-facebook">페이스북</i></a>
						<a href="http://instagram.com/megaboxon" target="_blank"
							title="MEGABOX 인스타그램 페이지로 이동"><i
							class="iconset ico-instagram">인스타그램</i></a> <a
							href="https://play.google.com/store/apps/details?id=com.megabox.mop"
							target="_blank" title="MEGABOX 구글플레이 페이지로 이동"><i
							class="iconset ico-googleplay">구글플레이</i></a> <a
							href="https://itunes.apple.com/kr/app/megabox/id894443858?l=ko&amp;ls=1&amp;mt=8"
							target="_blank" title="MEGABOX 앱스토어 페이지로 이동"><i
							class="iconset ico-appstore">앱스토어</i></a>
					</div>
				</div>
			</div>
			<!--// footer-bottom -->
			<div id="layer_looking_theater" class="layer-looking-theater"></div>
		</footer>
		<!--// footer -->

		<!-- 모바일 때만 출력 -->
		<div class="go-mobile" style="display: none;">
			<a href="#" data-url="https://m.megabox.co.kr">모바일웹으로 보기 <i
				class="iconset ico-go-mobile"></i></a>
		</div>
	</div>

	<div class="normalStyle"
		style="display: none; position: fixed; top: 0; left: 0; background: #000; opacity: 0.7; text-indent: -9999px; width: 100%; height: 100%; z-index: 100;">닫기</div>
	<div class="alertStyle"
		style="display: none; position: fixed; top: 0px; left: 0px; background: #000; opacity: 0.7; width: 100%; height: 100%; z-index: 5005;"></div>
</body>
</html>