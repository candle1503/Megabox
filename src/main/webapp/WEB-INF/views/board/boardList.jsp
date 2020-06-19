<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8" >
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
	<link rel="stylesheet" href="../resources/css/board.css"
	media="all" />

		<title>공지사항 < 고객센터 | 라이프씨어터, 메가박스</title>
		<meta property="name"			id="metaTagTitle"	content="공지사항 &lt; 고객센터"/>
		<meta property="description"	id="metaTagDtls"	content="메가박스에서 전하는 다양한 소식을 안내해드립니다. "/>
		<meta property="keywords"		id="metaTagKeyword"	content="메가박스,megabox,영화,영화관,극장,티켓,박스오피스,상영예정작,예매,오페라,싱어롱,큐레이션,필름소사이어티,클래식소사이어티,이벤트,Movie,theater,Cinema,film,Megabox"/>

		<meta property="fb:app_id" 		id="fbAppId" 	content="546913502790694"/>
		

		<meta property="og:site_name" 	id="fbSiteName"	content="메가박스"/>
		<meta property="og:type" 		id="fbType"		content="movie"/>
		<meta property="og:url" 		id="fbUrl"		content="https://www.megabox.co.kr/support/notice" />
		<meta property="og:title" 		id="fbTitle"	content="공지사항 &lt; 고객센터" />
		<meta property="og:description"	id="fbDtls"		content="메가박스에서 전하는 다양한 소식을 안내해드립니다. "/>
		<meta property="og:image" 		id="fbImg"		content="https://img.megabox.co.kr/SharedImg/metaTag/2020/02/04/gFfTzMwwiCxhBwcUV5TRGMFX9Cmoj64W.jpg" />
		
		<style type="text/css">
			.board-list-tr > th{
				text-align: center;
			}
		</style>

</head>
<body>





	<!-- container -->
	<div class="container has-lnb">
		<!-- <div class="page-util">
			<div class="inner-wrap">
				<div class="location">
					<span>Home</span>
					<a href="/support" title="고객센터 페이지로 이동">고객센터</a>
					<a href="/support/notice" title="공지사항 페이지로 이동">공지사항</a>
				</div>

			</div>
		</div> -->

		<div class="inner-wrap">
			<div class="lnb-area">
				<nav id="lnb">	
					<p class="tit" style="width: 100%; font-size: 1.2em; line-height: 90px; color: #fff; text-align: center;">고객센터
					</p>
					<ul>
			
					<li><a href="/support/faq"		title="자주묻는질문">자주묻는질문</a></li>
                    <li><a href="${board}List"	title="공지사항">공지사항</a></li>
					
					</ul>

					<!-- 고객센터 메뉴일때만 출력 -->
					<div class="left-customer-info">
						<p class="tit">
							메가박스 고객센터
							<span>Dream center</span>
						</p>
						<p class="tel">1544-0070</p>
						<p class="time"><i class="iconset ico-clock"></i> 10:00~19:00</p>
					</div>
				</nav>
			</div>

			<div id="contents">
				<h2 class="tit">공지사항</h2>

				<div class="tab-block mb30">
					<ul>
						<li class="on tabBtn"><button type="button" class="btn tabBtn" data-no="" title="전체공지 보기">전체</button></li>
							<li class="tabBtn"><button type="button" class="btn" data-no="81" title="메가박스 공지 보기" >메가박스 공지</button></li>
						
							<li class="tabBtn"><button type="button" class="btn" data-no="82" title="지점 공지 보기" >지점 공지</button></li>
						
					</ul>
				</div>

				<div class="board-list-util">
					<p class="result-count">전체 <em class="font-gblue">${listCount}</em>건</p>

					<select id="theater" title="지역 선택" class="mr07">
						<option value="">지역 선택</option>
						
							<option value="10" >서울</option>
						
							<option value="30" >경기</option>
						
							<option value="35" >인천</option>
						
							<option value="45" >대전/충청/세종</option>
						
							<option value="55" >부산/대구/경상</option>
						
							<option value="65" >광주/전라</option>
						
							<option value="70" >강원</option>
						
							<option value="80" >제주</option>
						
					</select>

					<select id="theater02" title="극장 선택" disabled="disabled" class="mr07">
						<option value="">극장 선택</option>
						
					</select>

					<div class="board-search">
						<input type="text" id="searchTxt" title="검색어를 입력해 주세요." placeholder="검색어를 입력해 주세요." class="input-text" value="" maxlength="15">
						<button type="button" id="searchBtn" class="btn-search-input">검색</button>
					</div>
				</div>

				<div class="table-wrap">
					<table class="board-list">
						<caption>번호, 극장, 구분, 제목, 등록일이 들어간 공지사항 전체 리스트</caption>
						<colgroup>
							<col style="width:72px;">
							<col style="width:133px;">
							<col style="width:95px;">
							<col>
							<col style="width:116px;">
						</colgroup>
						<thead>
							<tr class="board-list-tr">
								<th scope="col">번호</th>
								<th scope="col">극장</th>
								<th scope="col">구분</th>
								<th scope="col">제목</th>
								<th scope="col">등록일</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list}" var="vo">
								<tr>
									<td>${vo.num}</td>
									<td>${vo.theaterNum}</td>
									<td>${vo.separate}</td>
									<td><a href="${board}Select?num=${vo.num}">${vo.title}</a></td>
									<td>${vo.regDate}</td>
								</tr>
								
								
							</c:forEach>
						</tbody>
					</table>
				</div>
				
				

				<!-- pagination -->
				<nav class="pagination"></nav>
				<!--// pagination -->
				<div class="container">
					<a href="../notice/noticeWrite" class="btn btn-primary">Write</a>
				</div>
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
                <li class="privacy"><a href="/support/privacy" title="개인정보처리방침 페이지로 이동">개인정보처리방침</a></li>
                <li><a href="https://jebo.joonganggroup.com/main.do" target="_blank" title="윤리경영 페이지로 이동">윤리경영</a></li>
            </ul>

            <a href="#layer_looking_theater" class="btn-looking-theater" title="극장찾기"><i class="iconset ico-footer-search"></i> 극장찾기</a>
        </div>
    </div>

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
                <p class="copy">COPYRIGHT &copy; MegaboxJoongAng, Inc. All rights reserved</p>
            </div>

            <div class="footer-sns">
                <a href="https://twitter.com/megaboxon" target="_blank" title="MEGABOX 트위터 페이지로 이동"><i class="iconset ico-twitter">트위터</i></a>
                <a href="https://www.facebook.com/megaboxon" target="_blank" title="MEGABOX 페이스북 페이지로 이동"><i class="iconset ico-facebook">페이스북</i></a>
                <a href="http://instagram.com/megaboxon" target="_blank" title="MEGABOX 인스타그램 페이지로 이동"><i class="iconset ico-instagram">인스타그램</i></a>
                <a href="https://play.google.com/store/apps/details?id=com.megabox.mop" target="_blank" title="MEGABOX 구글플레이 페이지로 이동"><i class="iconset ico-googleplay">구글플레이</i></a>
                <a href="https://itunes.apple.com/kr/app/megabox/id894443858?l=ko&ls=1&mt=8" target="_blank" title="MEGABOX 앱스토어 페이지로 이동"><i class="iconset ico-appstore">앱스토어</i></a>
            </div>
        </div>
    </div>
    <!--// footer-bottom -->
    <div id="layer_looking_theater" class="layer-looking-theater"></div>
</footer>
<!--// footer -->

  


</body>
</html>