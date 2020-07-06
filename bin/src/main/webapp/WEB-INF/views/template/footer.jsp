<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- footer -->
<footer id="footer">
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

			<a href="#layer_looking_theater" class="btn-looking-theater"
				title="극장찾기"><i class="iconset ico-footer-search"></i> 극장찾기</a>
		</div>
	</div>
	<!--// footer-top -->

	<!-- footer-bottom -->
	<div class="footer-bottom">
		<div class="inner-wrap">
			<div class="c1">
				<img alt=""
					src="${pageContext.request.contextPath}/resources/images/sTheater.png"
					style="width: 25%; height: auto;">
			</div>
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

			<div class="footer-sns">
				<a href="https://twitter.com/megaboxon" target="_blank"
					title="MEGABOX 트위터 페이지로 이동"><i class="iconset ico-twitter">트위터</i></a>
				<a href="https://www.facebook.com/megaboxon" target="_blank"
					title="MEGABOX 페이스북 페이지로 이동"><i class="iconset ico-facebook">페이스북</i></a>
				<a href="http://instagram.com/megaboxon" target="_blank"
					title="MEGABOX 인스타그램 페이지로 이동"><i class="iconset ico-instagram">인스타그램</i></a>
				<a
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

<!-- 모바일 때만 출력 -->
<div class="go-mobile" style="display: none;">
	<a href="#" data-url="https://m.megabox.co.kr">모바일웹으로 보기 <i
		class="iconset ico-go-mobile"></i></a>
</div>
</div>
<form id="mainForm"></form>

<div class="normalStyle"
	style="display: none; position: fixed; top: 0; left: 0; background: #000; opacity: 0.7; text-indent: -9999px; width: 100%; height: 100%; z-index: 100;">닫기</div>
<div class="alertStyle"
	style="display: none; position: fixed; top: 0px; left: 0px; background: #000; opacity: 0.7; width: 100%; height: 100%; z-index: 5005;"></div>