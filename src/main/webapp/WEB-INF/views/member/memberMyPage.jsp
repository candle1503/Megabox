<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ko">
<head>

<title>나의메가박스 | 라이프씨어터, 메가박스</title>
<link rel="shortcut icon" href="/resources/static/icon/favicon.ico">
<link rel="stylesheet" href="/resources/static/css/megabox.min.css" media="all">
<link rel="stylesheet" href="/resources/static/css/myPage.css" media="all">
</head>

<body>
<c:import url="../template/header.jsp"></c:import>
	<div class="body-wrap" style="margin-top: 92px;">  

		
		<!--// header -->


		<div class="container has-lnb">
			<div class="page-util">
				<div class="inner-wrap" id="myLoaction">
					<div class="location">
						<span>Home</span> <a href="#" title="나의 메가박스 페이지로 이동">나의
							메가박스</a>
					</div>
				</div>
			</div>

			<div class="inner-wrap">

				<c:import url="../template/memberSidebar.jsp"></c:import>

				<div id="contents" class="">

					<div class="my-megabox-main">

						<div class="my-magabox-info" style="height: 180px;">
							<!-- top -->
							<div class="top" >
								<div class="photo" id="myPhoto">
									<div class="wrap">
										<form name="fileForm" style="display: none;">
											<input type="file" name="file"> <input type="hidden"
												name="fileMbNo" value="2306892">
										</form>

										<div class="profile-photo">

											<div class="profile-img" style="width: 90px; height: 90px">
												<c:choose>
													<c:when test="${member.fileName == 'null'}">
														<img src="/resources/static/images/memberProfile.png">
													</c:when>
													<c:otherwise>
														<img src="/upload/member/${member.fileName}" >
													</c:otherwise>
												</c:choose>
											</div>
										</div>
									</div>
								</div>

								<div class="grade">
									<p class="name">
										${memberVO.name}님  환영합니다.
									</p>

									<div class="link">
										<a href="./passwordCheck" title="개인정보수정 페이지로 이동">개인정보수정
											<i class="iconset ico-arr-right-reverse"></i>
								</a>  
<!-- 												<a href="#layer_before_grade" id="bfrClassSearch" -->
<!-- 											class="btn-modal-open" w-data="400" h-data="400" -->
<!-- 											title="지난등급 상세보기"> 지난등급조회 <i -->
<!-- 											class="iconset ico-arr-right-reverse"></i> -->
<!-- 										</a> -->
									</div>
								</div>


<!-- 								<div class="special-membership" id="myMembership"> -->
<!-- 									<p class="tit">Special Membership</p> -->

<!-- 									스폐셜 가입 안했을 때 -->
<!-- 									<div class="join"> -->
<!-- 										<div class="box"> -->
<!-- 											<i class="iconset ico-film-society"></i> <span>필름</span> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
							</div>
							<!--// top -->

						</div>

						<div class="column mt70">
							<!-- left -->
							<div class="col left" id="myStory">
								<div class="tit-util">
									<h2 class="tit small">나의 무비스토리</h2>

								</div>

								<div class="box-border link-movie-story">
									<a href=""  style="margin-left: 20px;"> <em>${ticketCount}</em>
										<span>본 영화</span>
									</a> <a href="/member/reviewList" style="margin-left: 30px;"> <em>${reviewCount}</em>
										<span>리뷰</span>
									</a> 
									 <a href=""  style="margin-left: 30px;"> <em>${memberVO.point}</em>
										<span>총 포인트</span>
									</a> 
								</div>
							</div>
							<!--// left -->

						</div>
						<!--// column -->

						<div id="myBokd">
							<div class="tit-util mt70">
								<h2 class="tit small">나의 예매내역</h2>

								<a href="/member/bookingMy" class="more"
									title="나의 예매내역 더보기">더보기 <i
									class="iconset ico-arr-right-gray"></i></a>
							</div>

							<!-- my-reserve-history -->
							<div class="history-reservation">
								<ul>
									<li sell-tran-no="13722007010094143868">
									<div class="round">
									<c:if test="${ticketVO ne null}">
											<a href="${pageContext.request.contextPath}/movie/movieSelect?movieNum=${ticketVO.movieNum}" class="img"
												title="${ticketVO.movieName} "><img
												src="upload/movie/${ticketVO.movieName}"></a>
											<table class="table">
												<tbody >
													<tr>
														<th scope="row">예매번호</th>
														<td colspan="3"><em class="num">${ticketVO.ticketCode}</em></td>
													</tr>
													<tr>
														<th scope="row" >영화명</th>
														<td colspan="3">
															<p class="tit-movie">
																<span>${ticketVO.movieName}</span> <span>2D</span>
															</p>
														</td>
													</tr>
													<tr>
														<th scope="row" >극장/상영관</th>
														<td> ${theaterRoomVO.name} / ${theaterRoomVO.roomName}</td>
													</tr>
													<tr>
													<th scope="row">관람인원</th>
														<td>일반 ${ticketVO.count}명</td>
													</tr>
													
													<tr>
														<th scope="row" style="width: 300px;">관람일시</th>
														<td style="width: 1000px;">${ticketVO.viewDate}</td>
														<th scope="row" style="width:1px;">관람좌석</th>
														<td>${ticketVO.seatNum}</td>
													</tr>
												</tbody>
											</table>
													<div class="bg-round">
														<table class="table">
														<colgroup>
															<col style="width: 100px;">
															<col style="width: 230px;">
															<col style="width: 100px;">
															<col>
														</colgroup>
														<tbody>
															<tr>
																<th scope="row" >적립 포인트</th>
																<td>${ticketVO.savedPoint} 원</td>
															</tr>
														</tbody>
														</table>
											</c:if>
													</div>
													
										</div>
									</li>
									
									
								</ul>
							</div>
							<!--// my-reserve-history -->
						</div>

					</div>
					<!--// my-megabox-main -->
				</div>

			</div>
		</div>


		<!-- footer -->
		<footer id="footer">
			<!-- footer-top -->
			<div class="footer-top" style="margin-top: 200px;">
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

	</div>

		
</body>
</html>