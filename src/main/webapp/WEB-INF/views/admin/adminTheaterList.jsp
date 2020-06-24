<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko">
<head>

<title>나의메가박스 | 라이프씨어터, 메가박스</title>
<link rel="shortcut icon" href="/resources/icon/favicon.ico">
<link rel="stylesheet" href="/resources/css/megabox.min.css" media="all">
<link rel="stylesheet" href="/resources/css/myPage.css" media="all">
</head>

<body>
<c:import url="../template/header.jsp"></c:import>
	<div class="body-wrap">


		<div class="container has-lnb">
			<div class="page-util">
				<div class="inner-wrap" id="myLoaction">
					<div class="location">
						<span>Home</span> <a href="#" title="관리자 페이지">관리자 페이지</a>
					</div>
				</div>
			</div>

			<div class="inner-wrap">

				<c:import url="../template/adminSidebar.jsp"></c:import>

				<div id="contents">
					<h2 class="tit">극장 리스트</h2>


					<div class="board-list-util">
						<p class="result-count">
							<strong> <em class="font-gblue">총 ${size}개의 극장</em></strong>
						</p>

					<form action="/admin/theaterList" method="get">
						<div class="board-search">
							<input type="text"  placeholder="극장명 입력"
								class="input-text" value="" maxlength="15" name="search">
							<button type="submit" id="searchBtn" class="btn-search-input">검색</button>
						</div>
					</form>
					</div>
					<div class="table-wrap">
						<table class="board-list">
							<colgroup>
								<col style="width: 35px;">
								<col style="width: 100px;">
								<col style="width: 70px;">
								<col style="width: 250px;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">번호</th>
									<th scope="col">지역코드</th>
									<th scope="col">극장명</th>
									<th scope="col">주소</th>
								</tr>
							</thead>
							<!-- memberList 뿌려줄곳 -->
							<tbody>
								<c:forEach items="${list}" var="vo" >
									<tr>
										<td>${vo.theaterNum}</td>
										<td>${vo.localCode}</td>
										<td><a href="./theaterSelect?theaterNum=${vo.theaterNum}" style="color: blue;">${vo.name}</a></td>
										<td>${vo.address}</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
					<div>
						<ul class="pagination">
							<c:if test="${pager.curBlock gt 1}">
								<a
									href="./theaterList?curPage=${pager.startNum-1}&search=${pager.search}">이전</a>
							</c:if>
							<c:forEach begin="${pager.startNum}" end="${pager.lastNum}"
								var="i">
								<a
									href="./theaterList?curPage=${i}&search=${pager.search}">${i}</a>
							</c:forEach>
							<c:if test="${pager.curBlock lt pager.totalBlock}">
								<a
									href="./theaterList?curPage=${pager.lastNum+1}}&search=${pager.search}">다음</a>
							</c:if>
						</ul>
						</div>
					<!--// pagination -->
					<a href="/admin/theaterAdd">
					<input type="button" class="button large"  value="영화관 추가">
					</a>
				</div>

			</div>
		</div>

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
					<div class="ci">MEGABOX : Life Theater</div>

					<div class="footer-info">
						<div>
							<address>서울특별시 성동구 왕십리로 50, 6층(성수동 1가, 메가박스스퀘어)</address>
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