<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- header -->
<header id="header" class="main-header no-bg"
	style="background-color: #985F99; font-family: 'Do Hyeon', sans-serif;">

	<a href="${pageContext.request.contextPath}/">
	<img class="ci" alt="" 	src="${pageContext.request.contextPath}/resources/images/sTheater.png"
		style="width: 7%; height: auto;"></a>

	<!-- topGnb -->

	<div class="link-area">
		<a href="#layer_sitemap" class="header-open-layer btn-layer-sitemap"
			title="사이트맵">사이트맵</a> <a href="#layer_header_search"
			class="header-open-layer btn-layer-search" title="검색">검색</a> <a
			href="/booking/timetable" class="link-ticket" title="상영시간표">상영시간표</a>
		<a href="#layer_mymega" class="header-open-layer btn-layer-mymega"
			title="나의 메가박스">나의 메가박스</a>
	</div>

	<!-- gnb -->
	<!--
        2019-04-15 마크업 수정 : 고객요청
        1뎁스 a 태그에 각각 다른 class 추가
    -->

	<nav id="gnb">
		<ul class="gnb-depth1">
			<li><a href="/movie" title="영화">영화</a>
				<div class="gnb-depth2">
					<ul>
						<li><a href="/movie" title="전체영화">전체영화</a></li>
						<li><a href="/curation/specialcontent" title="큐레이션">큐레이션</a></li>

						<li id="festivalArea" style="display: none;"><a
							href="/festival" title="영화제">영화제</a></li>
						<li><a href="/moviepost/all" title="무비포스트">무비포스트</a></li>
					</ul>
				</div></li>
			<li><a href="/booking" title="예매">예매</a>
				<div class="gnb-depth2">
					<ul>
						<li><a href="/booking" title="빠른예매">빠른예매</a></li>
						<li><a href="/booking/timetable" title="상영시간표">상영시간표</a></li>
						<li><a href="/booking/privatebooking" title="더 부티크 프라이빗 예매">더
								부티크 프라이빗 예매</a></li>
					</ul>
				</div></li>
			<li><a href="/theater/list" title="극장">극장</a>
				<div class="gnb-depth2">
					<ul>
						<li><a href="/theater/list" title="전체극장">전체극장</a></li>
						<li><a href="/specialtheater/list" title="특별관">특별관</a></li>
					</ul>
				</div></li>


			<li><a href="#" style="color: white;">공지사항</a></li>
			<li><a href="#">FAQ</a></li>
			<li><a href="# ">회원가입</a></li>
		</ul>
	</nav>
	<!--// gnb -->

	<!--// topGnb -->

	<!-- 레이어 : 사이트맵 -->




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


					<li><a
						href="javascript:movePage('/mypage',						'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');"
						title="나의 메가박스 홈">나의 메가박스 홈</a></li>
					<li><a
						href="javascript:movePage('/mypage/bookinglist',			'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');"
						title="예매/구매내역">예매/구매내역</a></li>
					<li><a
						href="javascript:movePage('/mypage/movie-coupon',		'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');"
						title="영화관람권">영화관람권</a></li>
					<li><a
						href="javascript:movePage('/mypage/store-coupon',		'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');"
						title="스토어교환권">스토어교환권</a></li>
					<li><a
						href="javascript:movePage('/mypage/discount-coupon',		'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');"
						title="할인/제휴쿠폰">할인/제휴쿠폰</a></li>

					<li><a
						href="javascript:movePage('/mypage/point-list',			'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');"
						title="멤버십포인트">멤버십포인트</a></li>
					<li><a
						href="javascript:movePage('/mypage/moviestory',			'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');"
						title="나의 무비스토리">나의 무비스토리</a></li>
					<li><a
						href="javascript:movePage('/mypage/myevent',				'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');"
						title="나의 이벤트 응모내역">나의 이벤트 응모내역</a></li>
					<li><a
						href="javascript:movePage('/mypage/myinquiry',			'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');"
						title="나의 문의내역">나의 문의내역</a></li>
					<li><a href="#" title="자주쓰는 할인 카드">자주쓰는 할인 카드</a></li>
					<li><a
						href="javascript:movePage('/on/oh/ohh/Mypage/mainPage.do?returnURL=info','로그인이 필요한 서비스 입니다.');"
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
					<li><a href="/socialcontribution" target="_blank" title="사회공헌">사회공헌</a></li>
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
	<div id="layer_header_search" class="header-layer layer-header-search"></div>
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

				<a href="/join" class="link" title="혹시 아직 회원이 아니신가요?">혹시 아직 회원이
					아니신가요?</a>
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