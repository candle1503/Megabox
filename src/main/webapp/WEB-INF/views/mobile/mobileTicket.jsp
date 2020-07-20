<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/mobileHeader_css.jsp"></c:import>
</head>

<body class="body" style="font-family: 'Do Hyeon', sans-serif;">

	<c:import url="../template/mobileHeader.jsp"></c:import>

	<section class="after-head d-flex section-text-white position-relative">
		<div class="d-background"
			data-image-src="http://via.placeholder.com/1920x1080"
			data-parallax="scroll"></div>
		<div class="d-background bg-black-80"></div>
		<div class="top-block top-inner container">
			<div class="top-block-content">
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
						<div class="embed-responsive embed-responsive-poster">
							<img class="embed-responsive-item"
								src="http://via.placeholder.com/340x510" alt="">
						</div>
						<div class="d-over bg-theme-lighted collapse animated faster"
							data-show-class="fadeIn show" data-hide-class="fadeOut show">
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
						<h4 class="entity-title">
							<a class="content-link" href="movie-info-sidebar-right.html"
								style="font-family: 'Do Hyeon', sans-serif;">${bookedCompList.movieName}</a>
						</h4>
						<div class="entity-category">
							<a class="content-link" href="movies-blocks.html"
								style="font-family: 'Do Hyeon', sans-serif;">${bookedCompList.genre}</a>
						</div>
						<div class="entity-info">
							<div class="info-lines">
								<div class="info info-short">

									<div class="info info-short">
										<span class="text-theme info-icon"><i
											class="fas fa-clock"></i></span> <span class="info-text"
											style="font-family: 'Do Hyeon', sans-serif;">${viewDate[i.index]}</span>
									</div>
								</div>
							</div>
							<p class="text-short entity-text"
								style="font-family: 'Do Hyeon', sans-serif;">일반
								${bookedCompList.count}명</p>
							<p class="text-short entity-text"
								style="font-family: 'Do Hyeon', sans-serif;">관람좌석
								${bookedCompList.seatNum}</p>

							<a class="btn btn-theme"
								href="${pageContext.request.contextPath}/mobile/mobileQrCode"
								style="font-family: 'Do Hyeon', sans-serif; margin-top: 20px; margin-left: 100px;">티켓
								양도하기</a>

						</div>
				</article>

			</c:forEach>
		</div>
	</section>
	<a class="scroll-top disabled" href="#"><i class="fas fa-angle-up"
		aria-hidden="true"></i></a>

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

</body>

</html>