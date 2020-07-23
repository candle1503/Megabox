<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="ko">
<head>

<title>나의쌍용 | 라이프씨어터, 쌍용</title>

<link rel="shortcut icon" href="/resources/static/icon/favicon.ico">
<link rel="stylesheet" href="/resources/static/css/megabox.min.css" media="all">
<link rel="stylesheet" href="/resources/static/css/myPage.css" media="all">
</head>

<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="body-wrap">



		<div class="container has-lnb" style="margin-top: 0px;">
			<div class="page-util">
				<div class="inner-wrap" id="myLoaction">
					<div class="location">
						<span>Home</span> <a href="./getMyPage" title="나의 쌍용 페이지로 이동">나의
							쌍용</a> <a href="#" title="회원정보 페이지로 이동">회원정보</a> <a class="no-link">개인정보
							수정</a>
					</div>
				</div>
			</div>

			<div class="inner-wrap">

				<c:import url="../template/adminSidebar.jsp"></c:import>
				
				<div id="contents" class="">
					<h2 class="tit">${theaterVO.name} 영화관 정보</h2>

					<div class="box-radius">
						<textarea class="box-bot" rows="1" cols="93" style="resize: none; background-color: f2f4f5; "
							readonly="readonly">${theaterVO.name}</textarea>
						<textarea class="box-bot" rows="1" cols="93" style="resize: none; background-color: f2f4f5"
							readonly="readonly">${theaterVO.localCode}</textarea>
						<textarea  class="box-bot" rows="1" cols="93" style="resize: none; background-color: f2f4f5"
							readonly="readonly">${theaterVO.address}</textarea>
						<div class="box-top" style="padding-left: 10px">
							<strong >주차 이용 안내</strong>
						</div>
						<textarea class="box-bot" rows="15" cols="93" style="resize: none; background-color: f2f4f5"
							readonly="readonly">${theaterVO.parking}</textarea>
						<div class="box-top" style="padding-left: 10px">
							<strong>극장 정보</strong>
						</div>
						<textarea class="box-bot" rows="9" cols="93" style="resize: none; background-color: f2f4f5"
							readonly="readonly">${theaterVO.info}</textarea>
						<c:forEach items="${roomList}" var="list">
						<input type="text" class="btn dropdown-toggle btn-default bs-placeholder" style="width: 840px; background-color: f2f4f5;" value="${list.roomName}" readonly="readonly"/>
						</c:forEach>
					</div>
				

					<div class="btn-group mt40">
						<a href="./theaterList">
						<input type="button" class="button large" value="이전">
						</a>
						<a href="./theaterUpdate?theaterNum=${theaterVO.theaterNum}">
						<input type="button" class="button purple large" value="수정">
						</a>
						<a href="./setTheaterRoom?name=${theaterVO.name}">
						<input type="button" class="button purple large" value="상영시간 관리">
						</a>
					</div>
				</div>
				
			</div>
		</div>

		<!-- footer -->
		<footer id="footer">
			<!-- footer-top -->
			<div class="footer-top" style="margin-top: 200px;">
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

		<!-- 모바일 때만 출력 -->
		<div class="go-mobile" style="display: none;">
			<a href="#" data-url="https://m.megabox.co.kr">모바일웹으로 보기 <i
				class="iconset ico-go-mobile"></i></a>
		</div>
	</div>

	<div class="normalStyle"
		style="display: none; position: fixed; top: 0; left: 0; background: #000; opacity: 0.7; text-indent: -9999px; width: 100%; height: 100%; z-index: 100;">닫기</div>
	<div class="alertStyle"
		style="display: none; position: fixed; top: 0px; left: 0px; background: #000; opacity: 0.7; width: 100%; height: 100%; z-index: 5005;"></div>
</body>
</html>