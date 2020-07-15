<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/mobileHeader_css.jsp"></c:import>

</head>
<body>

	<c:import url="../template/mobileHeader.jsp"></c:import>

	<!-- 본문 -->
	<div class="container"
		style="padding-top: 50px; padding-bottom: 77px; font-family: 'Do Hyeon', sans-serif;">
		<div class="section-line">
			<div class="section-head">
				<h2 class="section-title text-uppercase"
					style="font-family: 'Do Hyeon', sans-serif;">로그인</h2>
			</div>

			<form:form modelAttribute="memberVO"
				action="${pageContext.request.contextPath}/mobile/mobileLogin"
				method="post">
				<div class="row form-grid">
					<div class="col-12 col-sm-6">
						<div class="input-view-flat input-group">
							<form:input class="form-control" path="id" id="id" type="text"
								placeholder="아이디를 입력하세요" />
						</div>
						<form:errors path="id"></form:errors>
					</div>
					<div class="col-12 col-sm-6">
						<div class="input-view-flat input-group">
							<form:input class="form-control" path="password" id="password"
								type="password" placeholder="비밀번호를 입력하세요" />
						</div>
						<form:errors path="password"></form:errors>
					</div>

					<div class="col-12"  style="text-align:center;">
						<button class="px-5 btn btn-theme" type="submit" >로그인</button>
					</div>
				</div>
			</form:form>
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