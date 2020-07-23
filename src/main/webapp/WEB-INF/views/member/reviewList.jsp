<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko">
<head>

<title>나의쌍용 | 라이프씨어터, 쌍용</title>
<link rel="shortcut icon" href="/resources/static/icon/favicon.ico">
<link rel="stylesheet" href="/resources/static/css/megabox.min.css"
	media="all">
<link rel="stylesheet" href="/resources/static/css/myPage.css"	media="all">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="body-wrap">


		<!--// header -->


		<div class="container has-lnb" style="margin-top: 0px;">
			<div class="page-util">
				<div class="inner-wrap" id="myLoaction">
					<div class="location">
						<span>Home</span> <a href="#" title="나의 쌍용 페이지로 이동">나의 쌍용</a>
					</div>
				</div>
			</div>

			<div class="inner-wrap">

				<c:import url="../template/memberSidebar.jsp"></c:import>

				<div id="contents">
					<h2 class="tit">나의 리뷰 내역</h2>

					<div class="board-list-util myOne myMovieStory"
						style="display: block;">
						<p class="result-count">
							<strong>총 <b class="font-gblue" id="myOneCnt">${size}</b>
								건
							</strong>
						</p>
					</div>
					
					<div id="deleteReview">
					
					<c:forEach items="${List}" var="vo" varStatus="i">
						<!-- 나의 한줄평 -->
						<div class="my-appraisal myOne myMovieStory"
							style="display: block;" id="myStoryM">
							<ul id="myAppraisal">
								<li>
								
									<p class="img posterImg" data-mno="01550200"
										style="cursor: pointer"><a href="${pageContext.request.contextPath}/movie/movieSelect?movieNum=${vo.movieNum}" class="img"
												title="${bookedCompList.movieName} ">
										<img src="/upload/movie/${vo.fileName}" style="height: 145px;">
										</a>
									</p>
							
									<div class="cont">
										<p class="label">관람평</p>
										<p class="tit">
											<a href="${pageContext.request.contextPath}/movie/movieSelect?movieNum=${vo.movieNum}">${vo.movieName}</a>
										</p>
										<div class="rate">
											<p class="num review">${vo.point}</p>
											<div class="case">
												<p>${vo.likePoint}</p>
											</div>
										</div>
										<p class="txt oneData${i.count}" style="display: block">${vo.contents}</p>
										<div class="modify-area updateData" style="">
										
											<textarea rows="5" cols="30" title="한줄평 수정 내용 입력"
												class="input-textarea" id="updateForm${i.count}" style="display: none;">${vo.contents}</textarea></div>
										<div class="modify-area updateData" style="display: none;">
										</div>
										<div class="util">
											<div class="right">
<!-- 												<span><button type="button" -->
<%-- 														class="btn modify" id="updateBtn${i.count}" data-no="663348" --%>
<!-- 														data-mno="01550200" data-cd="PREV" >수정</button></span> <span> -->
														
														<form action="./deleteReview" method="post">
														<input type="hidden" value="${vo.ticketNum}" id="reviewNum${i.count}" name="ticketNum">
														<input type="hidden" value="${vo.movieName}" id="reviewNum${i.count}" name="movieName">
														<button
														type="submit" class="btn del" id="deleteBtn${i.count}" data-no="663348"
														data-mno="01550200" data-cd="PREV">삭제</button>
														</form>
														</span>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</div>

					</c:forEach>
					
					</div>



				</div>


			</div>
		</div>

			

		<!-- footer -->
		<footer id="footer">
			<!-- footer-top -->
			<div class="footer-top" style="margin-top: 250px;">
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
							<address>서울특별시 성동구 왕십리로 50, 6층(성수동 1가, 쌍용스퀘어)</address>
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