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
			<h4 class="form-title text-uppercase" style="font-family: 'Do Hyeon', sans-serif; font-size: 23px;">받는 사람 아이디를 다시 한번 확인해 주세요</h4>
			<p class="form-text"></p>
			
			<form autocomplete="off" action="./mobileIndex" method="post">

				<div class="row form-grid">
					<div class="col-sm-6">
						<div class="input-view-flat input-group">
							<input class="form-control" name="name" type="text"
								placeholder="입력해주세요" value="${member.id}"
								style="font-family: 'Do Hyeon', sans-serif;">
						</div>
					</div>

					<div class="col-12">
						<button class="px-5 btn btn-theme" type="submit"
							style="font-family: 'Do Hyeon', sans-serif; margin-top: 20px; margin-left: 129px;">확인</button>
					</div>
				</div>
			</form>
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