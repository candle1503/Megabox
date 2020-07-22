<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모바일 티켓</title>
<c:import url="../template/mobileHeader_css.jsp"></c:import>
</head>

<body class="body" style="font-family: 'Do Hyeon', sans-serif;">

	<c:import url="../template/mobileHeader.jsp"></c:import>

	<section class="after-head d-flex section-text-white position-relative">
		<div class="d-background" data-image-src="" data-parallax="scroll"></div>
		<div class="d-background bg-black-80"></div>
		<div class="top-block top-inner container">
			<div class="top-block-content" style="height: 10px">
				<h1 class="section-title"
					style="font-family: 'Do Hyeon', sans-serif;">모바일 티켓 리스트</h1>

			</div>
		</div>
	</section>

	<section class="section-long">
		<div class="container">

			<c:forEach items="${bookedCompAr}" var="bookedCompList" varStatus="i">

				<article class="movie-line-entity">
					<div class="entity-poster" data-role="hover-wrap">
						<div class="embed-responsive embed-responsive-poster"
							style="width: 50%; margin: 0 auto;">
							<img class="embed-responsive-item"
								src="${pageContext.request.contextPath}/upload/movie/${movie.movieFileVO.fileName}"
								alt="">
						</div>
						<div class="d-over bg-theme-lighted collapse animated faster"
							data-show-class="" data-hide-class="">
							<div class="entity-play">
								<a class="action-icon-theme action-icon-bordered rounded-circle"
									href="https://www.youtube.com/watch?v=d96cjJhvlMA"
									data-magnific-popup="iframe"> <span class="icon-content"><i
										class="fas fa-play"></i></span>
								</a>
							</div>
						</div>
					</div>
					<div class="entity-content">
						<h1 class="entity-title">
							<a class="content-link"
								style="font-family: 'Do Hyeon', sans-serif;">${bookedCompList.movieName}</a>
						</h1>
						<!-- 						<div class="entity-category">
							<a class="content-link" href="movies-blocks.html"
								style="font-family: 'Do Hyeon', sans-serif;">영화장르 JSTL</a>
						</div> -->
						<div class="entity-info">
							<div class="info-lines">
								<!-- 								<div class="info info-short">
									<span class="text-theme info-icon"><i
										class="fas fa-star"></i></span> <span class="info-text"
										style="font-family: 'Do Hyeon', sans-serif;"></span> <span
										class="info-rest" style="font-family: 'Do Hyeon', sans-serif;">/10</span>
								</div> -->
								<div class="info info-short">
									<span class="text-theme info-icon"><i
										class="fas fa-clock"></i></span> <span class="info-text"
										style="font-family: 'Do Hyeon', sans-serif; font-size: 21px;">${viewDate[i.index]}</span>
								</div>

							</div>
						</div>
						<p class="text-short entity-text"
							style="font-family: 'Do Hyeon', sans-serif; color: black; font-size: 21px;">티켓
							번호 : ${bookedCompList.ticketCode}</p>
						<p class="text-short entity-text"
							style="font-family: 'Do Hyeon', sans-serif; color: black; font-size: 21px;">관람
							인원 : 일반 ${bookedCompList.count}명</p>
						<p class="text-short entity-text"
							style="font-family: 'Do Hyeon', sans-serif; color: black; font-size: 21px;">관람
							좌석 : ${bookedCompList.seatNum}</p>
						<p class="text-short entity-text"
							style="font-family: 'Do Hyeon', sans-serif; color: black; font-size: 21px;">극장/상영관
							: ${theaterName[i.index]} / ${theaterRoomName[i.index]}
							${bookedCompList.count}명</p>


						<button type="button" class="btn btn-theme" data-toggle="modal"
							data-target="#myModal"
							style="font-family: 'Do Hyeon', sans-serif; margin-top: 20px; margin-left: 139px;">티켓
							양도하기</button>

					</div>

				</article>

				<!-- The Modal -->
				<div class="modal fade" id="myModal" style="margin-top: 39%;">
					<div class="modal-dialog">
						<div class="modal-content">

							<!-- Modal Header -->
							<div class="modal-header">
								<h4 class="modal-title">양도 받을 아이디를 입력해 주세요</h4>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>

							<!-- Modal body -->
							<form class="footer-form" autocomplete="off" method="post"
								action='${pageContext.request.contextPath}/mobile/mobileQrCode'>
								<div class="input-group"
									style="width: 80%; padding-left: 70px; padding-bottom: 30px;">
									<input class="form-control" name="receiveId" type="text"
										placeholder="아이디 입력" required="required">
									<div class="input-group-append">
										<button class="btn btn-theme" type="submit">
											<i class="fas fa-angle-right"></i>
										</button>
									</div>
								</div>
								<input type="hidden" id="ticketCode" name="ticketCode"
									value="${bookedCompList.ticketCode}"> <input
									type="hidden" id="giveId" name="giveId" value="${member.id}">
								<input type="hidden" id="Id" name="Id" value="${member.id}">


								<input type="hidden" id="seatNum" name="seatNum"
									value="${bookedCompList.seatNum}"> <input type="hidden"
									id="movieTime" name="movieTime"
									value="${bookedCompList.movieTime}"> <input
									type="hidden" id="id" name="id" value="${bookedCompList.id}">
								<input type="hidden" id="count" name="count"
									value="${bookedCompList.count}"> <input type="hidden"
									id="movieNum" name="movieNum"
									value="${bookedCompList.movieNum}"> <input
									type="hidden" id="theaterRoomCode" name="theaterRoomCode"
									value="${bookedCompList.theaterRoomCode}"> <input
									type="hidden" id="viewDate" name="viewDate"
									value="${bookedCompList.viewDate}"> <input
									type="hidden" id="status" name="status"
									value="${bookedCompList.status}"> <input type="hidden"
									id="movieName" name="movieName"
									value="${bookedCompList.movieName}"> <input
									type="hidden" id="savedPoint" name="savedPoint"
									value="${bookedCompList.savedPoint}">


							</form>

							<!-- Modal footer -->
							<div class="modal-footer">
								<button type="button" class="btn btn-danger"
									data-dismiss="modal"
									style="font-family: 'Do Hyeon', sans-serif;">닫기</button>
							</div>

						</div>
					</div>
				</div>

			</c:forEach>

		</div>
	</section>
	<!-- 	<a class="scroll-top disabled" href="#"><i class="fas fa-angle-up"
		aria-hidden="true"></i></a> -->

	<c:import url="../template/mobileFooter.jsp"></c:import>

	<!-- jQuery library -->
	<script
		src="${pageContext.request.contextPath}/resources/static/mobile/js/jquery-3.3.1.js"></script>
	<!-- Bootstrap -->
	<script
		src="${pageContext.request.contextPath}/resources/static/mobile/bootstrap/js/bootstrap.js"></script>
	<!-- Paralax.js -->
	<script
		src="${pageContext.request.contextPath}/resources/static/mobile/parallax.js/parallax.js"></script>
	<!-- Waypoints -->
	<script
		src="${pageContext.request.contextPath}/resources/static/mobile/waypoints/jquery.waypoints.min.js"></script>
	<!-- Slick carousel -->
	<script
		src="${pageContext.request.contextPath}/resources/static/mobile/slick/slick.min.js"></script>
	<!-- Magnific Popup -->
	<script
		src="${pageContext.request.contextPath}/resources/static/mobile/magnific-popup/jquery.magnific-popup.min.js"></script>
	<!-- Inits product scripts -->
	<script
		src="${pageContext.request.contextPath}/resources/static/mobile/js/script.js"></script>

	<script async="" defer=""
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAJ4Qy67ZAILavdLyYV2ZwlShd0VAqzRXA&amp;callback=initMap"></script>
	<script async="" defer=""
		src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js"></script>

	<%-- 	<a class="btn btn-theme"
		href="${pageContext.request.contextPath}/mobile/mobileQrCode?ticketCode=${bookedCompList.ticketCode}&giveId=${member.id}"
		style="font-family: 'Do Hyeon', sans-serif; margin-top: 20px; margin-left: 129px;">티켓
		양도하기</a> --%>

</body>

</html>