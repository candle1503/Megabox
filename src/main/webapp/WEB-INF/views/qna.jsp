<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=yes" />
<link rel="stylesheet" href="../resources/css/board.css" media="all" />


<title>자주 묻는 질문 < 고객센터 | 라이프씨어터, 메가박스</title>
<meta property="name" id="metaTagTitle" content="자주묻는질문 &lt; 고객센터" />
<meta property="description" id="metaTagDtls"
	content="삶의 의미와 즐거움을 소통하는 공간, 함께 더 행복한 가치있는 콘텐츠를 추구하는 만남과 소통의 즐거움이 가득한 공간 메가박스 입니다. " />
<meta property="keywords" id="metaTagKeyword"
	content="메가박스,megabox,영화,영화관,극장,티켓,박스오피스,상영예정작,예매,오페라,싱어롱,큐레이션,필름소사이어티,클래식소사이어티,이벤트,Movie,theater,Cinema,film,Megabox" />

<meta property="fb:app_id" id="fbAppId" content="546913502790694" />


<meta property="og:site_name" id="fbSiteName" content="메가박스" />
<meta property="og:type" id="fbType" content="movie" />
<meta property="og:url" id="fbUrl"
	content="https://www.megabox.co.kr/support/faq" />
<meta property="og:title" id="fbTitle" content="자주묻는질문 &lt; 고객센터" />
<meta property="og:description" id="fbDtls"
	content="삶의 의미와 즐거움을 소통하는 공간, 함께 더 행복한 가치있는 콘텐츠를 추구하는 만남과 소통의 즐거움이 가득한 공간 메가박스 입니다. " />
<meta property="og:image" id="fbImg"
	content="https://img.megabox.co.kr/SharedImg/metaTag/2020/02/04/gFfTzMwwiCxhBwcUV5TRGMFX9Cmoj64W.jpg" />

<link rel="stylesheet" href="/static/pc/dist/megabox.min.css"
	media="all" />


</head>
<body>

	<div class="body-wrap">


			<input type="hidden" id="idx" value="" />
			<input type="hidden" name="currentPage" value="" />

			<!-- container -->
			<div class="container has-lnb">
				<div class="page-util">
					<div class="inner-wrap">
						<div class="location">
							<span>Home</span> <a href="/support" title="고객센터 페이지로 이동">고객센터</a>
							<a href="/support/faq" title="자주 묻는 질문 페이지로 이동">자주 묻는 질문</a>
						</div>

					</div>
				</div>

				<div class="inner-wrap">
					<div class="lnb-area">
						<nav id="lnb">
							<p class="tit">
								<a href="/support" title="고객센터">고객센터</a>
							</p>
							<ul>
								<li><a href="/support/notice" title="공지사항">공지사항</a></li>
								<li class="on"><a href="/support/faq" title="자주 묻는 질문">자주
										묻는 질문</a></li>
						
							</ul>

							<!-- 고객센터 메뉴일때만 출력 -->
							<div class="left-customer-info">
								<p class="tit">
									메가박스 고객센터 <span>Dream center</span>
								</p>
								<p class="tel">1544-0070</p>
								<p class="time">
									<i class="iconset ico-clock"></i> 10:00~19:00
								</p>
							</div>
						</nav>
					</div>

					<div id="contents">
						<h2 class="tit">자주 묻는 질문</h2>

						<!-- input-search-area -->
						<div class="input-search-area mb30">
							<div class="input-area">
								<label for="search01" class="label">빠른검색</label>

								<!-- 2019-01-21 검색 부분 변경 -->
								<div class="board-search w460px">
									<input type="search" id="searchTxt" title="검색어를 입력해 주세요."
										placeholder="검색어를 입력해 주세요." class="input-text" value=""
										maxlength="15">
									<button type="button" id="searchBtn" class="btn-search-input">검색</button>
								</div>
								<!--// 2019-01-21 검색 부분 변경 -->
							</div>

							<div class="btn-area"></div>
						</div>
						<!--// input-search-area -->

						<!-- 2019-01-15 : 마크업 변경 -->
						<div class="tab-block small mb30">
							<ul>
								<li class="on"><button type="button" class="btn tabBtn"
										id="totalTab" data-no="" title="전체">전체</button></li>


								<li><button type="button" class="btn tabBtn" data-no="88"
										data-nm="영화예매" title="영화예매">영화예매</button></li>
								<!-- (11) -->



								<li><button type="button" class="btn tabBtn" data-no="89"
										data-nm="할인혜택" title="할인혜택">할인혜택</button></li>
								<!-- (3) -->



								<li><button type="button" class="btn tabBtn" data-no="90"
										data-nm="결제수단/관람권" title="결제수단/관람권">결제수단/관람권</button></li>
								<!-- (6) -->



								<li><button type="button" class="btn tabBtn" data-no="91"
										data-nm="멤버십" title="멤버십">멤버십</button></li>
								<!-- (13) -->



								<li><button type="button" class="btn tabBtn" data-no="92"
										data-nm="VIP" title="VIP">VIP</button></li>
								<!-- (3) -->



								<li><button type="button" class="btn tabBtn" data-no="93"
										data-nm="극장" title="극장">극장</button></li>
								<!-- (4) -->



								<li><button type="button" class="btn tabBtn" data-no="94"
										data-nm="특별관" title="특별관">특별관</button></li>
								<!-- (1) -->



								<li><button type="button" class="btn tabBtn" data-no="95"
										data-nm="스토어" title="스토어">스토어</button></li>
								<!-- (6) -->



								<li><button type="button" class="btn tabBtn" data-no="96"
										data-nm="홈페이지/모바일" title="홈페이지/모바일">홈페이지/모바일</button></li>
								<!-- (11) -->

							</ul>

							<input type="hidden" id="bbsTotalCnt" value="58" />
						</div>
						<!--// 2019-01-15 : 마크업 변경 -->

						<!--// tab-block -->

						<div class="faq-list-box">
							<p class="reset mb10">
								<strong><span id="totalTitle">전체</span> <span
									class="font-green" id="totalCnt">0</span>건</strong>
							</p>

							<div class="faq-list">
								<ul></ul>
							</div>
						</div>

						<!-- pagination -->
						<nav class="pagination"></nav>
						<!--// pagination -->
					</div>
				</div>
			</div>
	
			

			<div class="quick-area">
				<a href="" class="btn-go-top" title="top">top</a>
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
							<p>&middot; 개인정보보호책임자 조상연</p>
							<p>&middot; 사업자등록번호 211-86-59478</p>
							<p>&middot; 통신판매업신고번호 제 833호</p>
							<p class="copy">COPYRIGHT &copy; MegaboxJoongAng, Inc. All
								rights reserved</p>
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
								href="https://itunes.apple.com/kr/app/megabox/id894443858?l=ko&ls=1&mt=8"
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
			<div class="go-mobile">
				<a href="#" data-url="https://m.megabox.co.kr">모바일웹으로 보기 <i
					class="iconset ico-go-mobile"></i></a>
			</div>
	</div>
	<form id="mainForm"></form>
	

</body>
</html>