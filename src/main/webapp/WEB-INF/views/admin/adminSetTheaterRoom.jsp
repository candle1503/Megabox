<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="ko">
<head>

<title>나의메가박스 | 라이프씨어터, 메가박스</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="shortcut icon" href="/resources/icon/favicon.ico">
<link rel="stylesheet" href="/resources/css/megabox.min.css" media="all">
<link rel="stylesheet" href="/resources/css/myPage.css" media="all">
</head>

<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="body-wrap">



		<div class="container has-lnb">
			<div class="page-util">
				<div class="inner-wrap" id="myLoaction">
					<div class="location">
						<span>Home</span> <a href="./getMyPage" title="나의 메가박스 페이지로 이동">나의
							메가박스</a> <a href="#" title="회원정보 페이지로 이동">회원정보</a> <a class="no-link">개인정보
							수정</a>
					</div>
				</div>
			</div>

			<div class="inner-wrap">

				<c:import url="../template/memberSidebar.jsp"></c:import>

				<form  action="./memberUpdate"	method="post">
				
				<div id="contents">
					<h2 class="tit">목동 상영관 설정</h2>

				<!-- c:foreach 로 관수 마다 뿌려져야함 -->
					<div class="roomNumber">
					
					<div class="tit-util mt40 mb10">
						<h3 class="tit">목동 1관</h3><input class="timeAddBtn" type="button" style="background-color:#f7f8f9; margin-left: 50px; font-size: large;" value="상영시간+">

						<div class="right">
							<p class="reset">
								<em class="font-orange">*</em> 필수
							</p>
						</div>
					</div>

						<div class="table-wrap mb40">
							<table class="board-form">
								<colgroup>
									<col style="width: 180px;">
									<col>
								</colgroup>
								<tbody class="timeAdd">
								<!-- +버튼 누르면 아래로 추가되게 -->
									<tr class="added">
										<th scope="row">
											<label for="phone">
												
												<select  class="btn dropdown-toggle btn-default bs-placeholder timeChoose" style="border: none; background-color:#f7f8f9;" >
												 	<option value="">상영 시간 선택</option>
													<option value=7>07:00</option>
													<option value=8>08:00</option>
													<option value=9>09:00</option>
													<option value="10">10:00</option>
													<option value="11">11:00</option>
													<option value="12">12:00</option>
													<option value="13">13:00</option>
													<option value="14">14:00</option>
													<option value="15">15:00</option>
													<option value="16">16:00</option>
													<option value="17">17:00</option>
													<option value="18">18:00</option>
													<option value="19">19:00</option>
													<option value="20">20:00</option>
													<option value="21">21:00</option>
													<option value="22">22:00</option>
												</select>									
											</label></th>
										<td style="background-color:#f7f8f9;">
												<select  class="input-text w500px" style="border: none; background-color:#f7f8f9; width: 550px" >
												 	<option value="">영화 선택</option>
												</select>
									</tr>
									

								</tbody>
							</table>
								<button type="submit" class="button purple" id="updateBtn" style="margin-left: 785px">등록</button>
						</div>

					<script type="text/javascript">

						var timeAddContents = $('.timeAdd').html();
						var lastTime = 0;
						var timeGap;
						$('.timeAddBtn').on('click',function() {
							var	timeChoose = $('.timeChoose').val();
							if(timeChoose == ''){
								alert("시간을 먼저 선택해주세요");
								return false;
								}
						timeGap = parseInt(timeChoose)-lastTime;
						if(lastTime != 0){
							if(timeGap < 3){
								alert("이전 시간과 3시간 이상으로 설정해주세요.")
								return false;
								}
							}
						lastTime = timeChoose;
							
 							$('.timeAdd').prepend(timeAddContents);
 							alert("선택한 시간: "+ timeChoose);
 							alert("시간 차이 : "+ timeGap);
						})
							
							
						
					</script>

						
			</div>

			<div class="roomNumber">
					
					<div class="tit-util mt40 mb10">
						<h3 class="tit">목동 2관</h3>

						<div class="right">
							<p class="reset">
								<em class="font-orange">*</em> 필수
							</p>
						</div>
					</div>

						<div class="table-wrap mb40">
							<table class="board-form">
								<colgroup>
									<col style="width: 180px;">
									<col>
								</colgroup>
								<tbody>
								<!-- +버튼 누르면 아래로 추가되게 -->
									<tr>
										<th scope="row">
											<label for="phone">
												
												<select  class="btn dropdown-toggle btn-default bs-placeholder" style="border: none; background-color:#f7f8f9;" >
												 	<option value="">상영 시간 선택</option>
													<option value="7">07:00</option>
													<option value="8">08:00</option>
													<option value="9">09:00</option>
													<option value="10">10:00</option>
													<option value="11">11:00</option>
													<option value="12">12:00</option>
													<option value="13">13:00</option>
													<option value="14">14:00</option>
													<option value="15">15:00</option>
													<option value="16">16:00</option>
													<option value="17">17:00</option>
													<option value="18">18:00</option>
													<option value="19">19:00</option>
													<option value="20">20:00</option>
													<option value="21">21:00</option>
													<option value="22">22:00</option>
												</select>									
											</label></th>
										<td style="background-color:#f7f8f9;">
												<select  class="input-text w500px" style="border: none; background-color:#f7f8f9; width: 550px" >
												 	<option value="">영화 선택</option>
												</select>
												<input type="button" style="background-color:#f7f8f9; margin-left: 50px; font-size: large;" value="+">
									</tr>

								</tbody>
							</table>
						</div>



						
			</div>
			
			<div class="roomNumber">
					
					<div class="tit-util mt40 mb10">
						<h3 class="tit">목동 3관</h3>

						<div class="right">
							<p class="reset">
								<em class="font-orange">*</em> 필수
							</p>
						</div>
					</div>

						<div class="table-wrap mb40">
							<table class="board-form">
								<colgroup>
									<col style="width: 180px;">
									<col>
								</colgroup>
								<tbody>
								<!-- +버튼 누르면 아래로 추가되게 -->
									<tr>
										<th scope="row">
											<label for="phone">
												
												<select  class="btn dropdown-toggle btn-default bs-placeholder" style="border: none; background-color:#f7f8f9;" >
												 	<option value="">상영 시간 선택</option>
													<option value="7">07:00</option>
													<option value="8">08:00</option>
													<option value="9">09:00</option>
													<option value="10">10:00</option>
													<option value="11">11:00</option>
													<option value="12">12:00</option>
													<option value="13">13:00</option>
													<option value="14">14:00</option>
													<option value="15">15:00</option>
													<option value="16">16:00</option>
													<option value="17">17:00</option>
													<option value="18">18:00</option>
													<option value="19">19:00</option>
													<option value="20">20:00</option>
													<option value="21">21:00</option>
													<option value="22">22:00</option>
												</select>									
											</label></th>
										<td style="background-color:#f7f8f9;">
												<select  class="input-text w500px" style="border: none; background-color:#f7f8f9; width: 550px" >
												 	<option value="">영화 선택</option>
												</select>
												<input type="button" style="background-color:#f7f8f9; margin-left: 50px; font-size: large;" value="+">
									</tr>

								</tbody>
							</table>
						</div>



						
			</div>
			
			<div class="roomNumber">
					
					<div class="tit-util mt40 mb10">
						<h3 class="tit">목동 4관</h3>

						<div class="right">
							<p class="reset">
								<em class="font-orange">*</em> 필수
							</p>
						</div>
					</div>

						<div class="table-wrap mb40">
							<table class="board-form">
								<colgroup>
									<col style="width: 180px;">
									<col>
								</colgroup>
								<tbody>
								<!-- +버튼 누르면 아래로 추가되게 -->
									<tr>
										<th scope="row">
											<label for="phone">
												
												<select  class="btn dropdown-toggle btn-default bs-placeholder" style="border: none; background-color:#f7f8f9;" >
												 	<option value="">상영 시간 선택</option>
													<option value="7">07:00</option>
													<option value="8">08:00</option>
													<option value="9">09:00</option>
													<option value="10">10:00</option>
													<option value="11">11:00</option>
													<option value="12">12:00</option>
													<option value="13">13:00</option>
													<option value="14">14:00</option>
													<option value="15">15:00</option>
													<option value="16">16:00</option>
													<option value="17">17:00</option>
													<option value="18">18:00</option>
													<option value="19">19:00</option>
													<option value="20">20:00</option>
													<option value="21">21:00</option>
													<option value="22">22:00</option>
												</select>									
											</label></th>
										<td style="background-color:#f7f8f9;">
												<select  class="input-text w500px" style="border: none; background-color:#f7f8f9; width: 550px" >
												 	<option value="">영화 선택</option>
												</select>
												<input type="button" style="background-color:#f7f8f9; margin-left: 50px; font-size: large;" value="+">
									</tr>

								</tbody>
							</table>
						</div>



						
			</div>	
						<div class="btn-group mt40">
							<a href="./getMyPage"> <input type="button"
								class="button large" value="취소">
							</a>
							<button type="submit" class="button purple large" id="updateBtn">완료</button>
						</div>

				</div>
				
				
				
					</form>
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