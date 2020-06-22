<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form"%>
<html lang="ko">
<head>

<title>나의메가박스 | 라이프씨어터, 메가박스</title>

<link rel="shortcut icon" href="/resources/icon/favicon.ico">
<link rel="stylesheet" href="/resources/css/megabox.min.css" media="all">
<link rel="stylesheet" href="/resources/css/myPage.css" media="all">
</head>

<body>
	<div class="body-wrap">

		<header id="header">
			<h1 class="ci">
				<a href="../" title="MEGABOX 메인으로 가기">MEGABOX : Life Theater</a>
			</h1>

			<!-- 2019-04-15 마크업 수정 : 고객요청  -->
			<div class="util-area">

				<div class="right-link">

					<div class="after" style="">
						<a href="./memberLogout" class="" title="로그아웃">로그아웃</a>
						 <a href="/support"	title="고객센터">고객센터</a>
						<a href="/booking">빠른예매</a>
				</div>
			</div>

			<div class="link-area">
				<a href="#layer_sitemap" class="header-open-layer btn-layer-sitemap"
					title="사이트맵">사이트맵</a> <a href="#layer_header_search"
					class="header-open-layer btn-layer-search" title="검색">검색</a> <a
					href="/booking/timetable" class="link-ticket" title="상영시간표">상영시간표</a>
				<a href="./getMyPage" class="header-open-layer btn-layer-mymega"
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

		</header>
		<!--// header -->


		<div class="container has-lnb">
			<div class="page-util">
				<div class="inner-wrap" id="myLoaction">
					<div class="location">
        <span>Home</span>
        <a href="./getMyPage" title="나의 메가박스 페이지로 이동">나의 메가박스</a>
        <a href="#" title="회원정보 페이지로 이동">회원정보</a>
        <a class="no-link">개인정보 수정</a>
    </div>
				</div>
			</div>

			<div class="inner-wrap">

				<div class="lnb-area">
					<nav id="lnb">
						<p class="tit on">
							<a href="./getMyPage" title="나의 메가박스">나의 메가박스</a>
						</p>

						<ul>
							<li class=""><a href="/mypage/bookinglist" title="예매/구매내역">예매/구매내역</a></li>
							<li><a href="/mypage/moviestory" titel="나의 무비스토리">나의
									무비스토리</a></li>
							<li><a href="/mypage/mydiscount" title="자주쓰는 할인 카드">자주쓰는
									카드 관리</a></li>
							<li><a href="#" title="회원정보">회원정보</a></li>
						</ul>
					</nav>
				</div>

				<div id="contents">
					<h2 class="tit">개인정보 수정</h2>

					<ul class="dot-list mb10">
						<li>회원님의 정보를 정확히 입력해주세요.</li>
					</ul>

					<div class="table-wrap">
						<table class="board-form">
							<caption>프로필사진, 아이디 항목을 가진 표</caption>
							<colgroup>
								<col style="width: 180px;">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">프로필 사진</th>
									<td>
										<div class="profile-photo">
											<form name="fileForm">
												<input type="file" id="profileTarget" name="file"
													style="display: none;">

											</form>




											<div class="profile-img">
												<img src="../../../static/pc/images/mypage/bg-profile.png"
													alt="프로필 사진 샘플">
											</div>

											<button type="button" class="button small gray-line"
												id="addProfileImgBtn">이미지 등록</button>



											<a href="./memberDelete"
												class="button small member-out" title="회원탈퇴">회원탈퇴</a>
										</div>
										<p
											style="font-size: 0.8em; color: #999; margin-top: 10px; padding: 0; text-align: left; position: absolute; top: 22px; left: 194px;">
											※ 개인정보가 포함된 이미지 등록은 자제하여 주시기 바랍니다.</p>
									</td>
								</tr>
								<tr>
									<th scope="row">아이디</th>
									<td>${member.id}id</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="tit-util mt40 mb10">
						<h3 class="tit">기본정보</h3>

						<div class="right">
							<p class="reset">
								<em class="font-orange">*</em> 필수
							</p>
						</div>
					</div>

					<form:form modelAttribute="memberVO" action="./memberUpdate" method="post">

						<div class="table-wrap mb40">
							<table class="board-form">
								<colgroup>
									<col style="width: 180px;">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">이름 <em class="font-orange">*</em>
										</th>
										<td><span class="mbNmClass">${member.name}</span> 
											</td>
									</tr>
									<tr>
										<th scope="row">나이 <em class="font-orange">*</em>
										</th>
										<td>${member.age}age</td>
									</tr>
									<tr>
										<th scope="row"><label for="phone">전화번호</label> <em
											class="font-orange">*</em></th>
										<td><form:input path="phone" type="text" id="phone" 
											class="input-text w500px" value="${member.phone}"/>
											<form:errors path="phone"></form:errors>
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="email">이메일</label> <em
											class="font-orange">*</em></th>
										<td><form:input path="email" type="email" id="email" 
											class="input-text w500px" value="${member.email}"/>
											<form:errors path="email"></form:errors>
										</td>
									</tr>
									
									<tr>
										<th scope="row"><label for="password">비밀번호</label> <em
											class="font-orange">*</em></th>
										<td><form:input path="password" type="password" id="password" 
											class="input-text w500px" />
											<form:errors path="password"></form:errors>
										</td>
									</tr>
									
									<tr>
										<th scope="row"><label for="passwordCheck">비밀전호 재입력</label> <em
											class="font-orange">*</em></th>
										<td><form:input path="passwordCheck" type="password" id="passwordCheck"
											class="input-text w500px" />
										</td>
									</tr>
									
								</tbody>
							</table>
						</div>
					

					<h3 class="tit">간편로그인 계정연동</h3>

					<div class="table-wrap mb40">
						<table class="board-list">
							<caption>구분, 연동정보, 연결 항목을 가진 간편 로그인 계정연동 표</caption>
							<colgroup>
								<col style="width: 130px;">
								<col>
								<col style="width: 110px;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">구분</th>
									<th scope="col">연동정보</th>
									<th scope="col">연결</th>
								</tr>
							</thead>
							<tbody id="lnkgInfoTbody">
								<tr>
									<th scope="row" class="a-c">페이스북</th>



									<td class="a-l">연결된 계정정보가 없습니다.</td>
									<td><button type="button" class="button small gray"
											lnkgty="FACEBOOK" connty="conn">연동</button></td>


								</tr>
								<tr>
									<th scope="row" class="a-c">네이버</th>



									<td class="a-l">연결된 계정정보가 없습니다.</td>
									<td><button type="button" class="button small gray"
											lnkgty="NAVER" connty="conn">연동</button></td>


								</tr>
								<tr>
									<th scope="row" class="a-c">카카오</th>



									<td class="a-l">연결된 계정정보가 없습니다.</td>
									<td><button type="button" class="button small gray"
											lnkgty="KAKAO" connty="conn">연동</button></td>


								</tr>
								<tr>
									<th scope="row" class="a-c">페이코</th>



									<td class="a-l">연결된 계정정보가 없습니다.</td>
									<td><button type="button" class="button small gray"
											lnkgty="PAYCO" connty="conn">연동</button></td>


								</tr>
							</tbody>
						</table>
					</div>


					<div class="btn-group mt40">
						<a href="./getMyPage">
						<input type="button" class="button large" value="취소">
						</a>
						<button type="submit" class="button purple large" id="updateBtn">등록</button>
					</div>
				</div>

			</div>
		</div>
</form:form>


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