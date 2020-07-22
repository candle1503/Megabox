<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓 양도하기</title>
<c:import url="../template/mobileHeader_css.jsp"></c:import>
</head>

<body>

	<c:import url="../template/mobileHeader.jsp"></c:import>

	<div class="col-lg-6 ml-lg-auto">
		<div class="gmap-form bg-white">
			<h4 class="form-title text-uppercase"
				style="font-family: 'Do Hyeon', sans-serif; font-size: 23px;">받는
				사람 아이디를 다시 한번 확인해 주세요</h4>
			<p class="form-text"></p>

			<form autocomplete="off" action="./moveCancel" method="post">

				<div class="row form-grid">
					<div class="col-sm-6">
						<div class="input-view-flat input-group">
							<input class="form-control" name="id" type="text"
								placeholder="입력해주세요" value="${member.id}"
								style="font-family: 'Do Hyeon', sans-serif;">
						</div>
					</div>

					<div class="col-12">
						<button class="px-5 btn btn-theme" type="button"
							style="font-family: 'Do Hyeon', sans-serif; margin-top: 20px; margin-left: 35px;"
							onclick="location.href = './mobileTicket' " formmethod="post">양도
							확인</button>
						<button class="px-5 btn btn-danger" type="submit"
							style="font-family: 'Do Hyeon', sans-serif; margin-top: 20px; margin-left: 39px;">양도
							취소하기</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<!-- data-toggle="modal" data-target="#myModal" -->

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
						value="${bookedCompList.ticketCode}"> <input type="hidden"
						id="giveId" name="giveId" value="${member.id}"> <input
						type="hidden" id="Id" name="Id" value="${member.id}"> <input
						type="hidden" id="seatNum" name="seatNum"
						value="${bookedCompList.seatNum}"> <input type="hidden"
						id="movieTime" name="movieTime"
						value="${bookedCompList.movieTime}"> <input type="hidden"
						id="id" name="id" value="${bookedCompList.id}"> <input
						type="hidden" id="count" name="count"
						value="${bookedCompList.count}"> <input type="hidden"
						id="movieNum" name="movieNum" value="${bookedCompList.movieNum}">
					<input type="hidden" id="theaterRoomCode" name="theaterRoomCode"
						value="${bookedCompList.theaterRoomCode}"> <input
						type="hidden" id="viewDate" name="viewDate"
						value="${bookedCompList.viewDate}"> <input type="hidden"
						id="status" name="status" value="${bookedCompList.status}">
					<input type="hidden" id="movieName" name="movieName"
						value="${bookedCompList.movieName}"> <input type="hidden"
						id="savedPoint" name="savedPoint"
						value="${bookedCompList.savedPoint}">


				</form>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal"
						style="font-family: 'Do Hyeon', sans-serif;">닫기</button>
				</div>

			</div>
		</div>
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