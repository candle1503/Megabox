<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<footer class="section-text-white footer footer-links bg-darken">

	<script
		src="https://www.gstatic.com/dialogflow-console/fast/messenger/bootstrap.js?v=1"></script>
	<df-messenger intent="WELCOME" chat-title="쌍용시네마봇"
		agent-id="386f83e9-7332-4ef9-8624-91e64d82cecb" language-code="ko"></df-messenger>

	<div class="footer-body container">
		<div class="row">
			<div class="col-sm-6 col-lg-3">
				<a class="footer-logo" href="./"> <span class="logo-element">
						<span class="logo-tape"> <span
							class="svg-content svg-fill-theme"
							data-svg="${pageContext.request.contextPath}/resources/static/mobile/images/svg/logo-part.svg"></span>
					</span> <span class="logo-text text-uppercase"
						style="font-family: 'Do Hyeon', sans-serif;"> <span
							style="font-family: 'Do Hyeon', sans-serif;">쌍</span>용시네마
					</span>
				</span>
				</a>
				<div class="footer-content">
					<p class="footer-text">서울특별시 마포구 월드컵북로 21 풍성빌딩 2~4층 (우)04001</p>
					<p class="footer-text">02-336-8546</p>
				</div>
			</div>

			<div class="col-sm-6 col-lg-3">
				<h5 class="footer-title text-uppercase">Follow</h5>
				<ul class="list-wide footer-content list-inline">
					<li class="list-inline-item"><a class="content-link" href="https://www.twitter.com"><i
							class="fab fa-twitter"></i></a></li>
					<li class="list-inline-item"><a class="content-link" href="https://www.facebook.com"><i
							class="fab fa-facebook-f"></i></a></li>
					<li class="list-inline-item"><a class="content-link" href="https://www.google.com"><i
							class="fab fa-google-plus-g"></i></a></li>
					<li class="list-inline-item"><a class="content-link" href="https://www.instagram.com"><i
							class="fab fa-instagram"></i></a></li>
				</ul>

			</div>
		</div>
	</div>
	<div class="footer-copy">
		<div class="container">Copyright 2020 COPYRIGHT © 쌍용 씨네시티</div>
	</div>
</footer>