<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모바일 QR코드</title>
<c:import url="../template/mobileHeader_css.jsp"></c:import>
</head>
<body>
	<c:import url="../template/mobileHeader.jsp"></c:import>

	<div class="container">

		<h1
			style="font-family: 'Do Hyeon', sans-serif; padding-top: 33px; font-size: 39px; text-align: center;">티켓
			양도를 위해</h1>
		<h1
			style="font-family: 'Do Hyeon', sans-serif; padding-top: 33px; font-size: 39px; text-align: center;">
			QR코드를 인식해 주세요</h1>

		<%-- 		<h1
			style="font-family: 'Do Hyeon', sans-serif; padding-top: 33px; font-size: 20px; text-align: center;">${param.giveId},${param.ticketCode},${param.receiveId}</h1>
		<h1
			style="font-family: 'Do Hyeon', sans-serif; padding-top: 33px; font-size: 20px; text-align: center;">${ticket.seatNum}</h1> --%>

		<img style="display: block; margin: 33px auto 77px auto;"
			src="${pageContext.request.contextPath}/resources/static/mobile/images/QrCodeFinal.png">

	</div>

	<div class="col-12" style="text-align: center;">
		<a class="px-5 btn btn-theme"  href="./mobileTicket"  style="font-family: 'Do Hyeon', sans-serif; margin-bottom: 50px;">확인</a>
	</div>


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