<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<footer id="footer">

	<script
		src="https://www.gstatic.com/dialogflow-console/fast/messenger/bootstrap.js?v=1"></script>
	<df-messenger intent="WELCOME" chat-title="쌍용시네마봇"
		agent-id="386f83e9-7332-4ef9-8624-91e64d82cecb" language-code="ko"></df-messenger>

	<div class="quick-area" style="display: block;">
		<a href="" class="btn-go-top" title="top" style="position: absolute;">top</a>
	</div>
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

			<!-- 			<a href="#layer_looking_theater" class="btn-looking-theater"
				title="극장찾기" style="margin-right: 10px;"><i
				class="iconset ico-footer-search"></i> 극장찾기</a> -->
		</div>
	</div>
	<!--// footer-top -->

	<!-- footer-bottom -->
	<div class="footer-bottom">
		<div class="inner-wrap">
			<div class="ci">MEGABOX : Life Theater</div>

			<div class="footer-info">
				<div>
					<address>서울특별시 마포구 월드컵북로 21 풍성빌딩 2~4층 (우)04001</address>
					<p>02-336-8546</p>
				</div>
				<p>자바&파이썬기반 멀티 웹 개발자 양성과정</p>
				<p>· 개인정보보호책임자 김쌍용</p>
				<p>· 사업자등록번호 123-45-67890</p>
				<p>· 통신판매업신고번호 제 000호</p>
				<p class="copy">COPYRIGHT © 쌍용 씨네시티</p>
			</div>

			<div class="footer-sns" style="margin-right: 10px;">
				<a href="https://twitter.com" target="_blank"><i
					class="iconset ico-twitter">트위터</i></a> <a
					href="https://www.facebook.com" target="_blank"><i
					class="iconset ico-facebook">페이스북</i></a> <a
					href="http://instagram.com" target="_blank"><i
					class="iconset ico-instagram">인스타그램</i></a>
			</div>
		</div>
	</div>
	<!--// footer-bottom -->
	<div id="layer_looking_theater" class="layer-looking-theater"></div>
</footer>