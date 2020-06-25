<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${vo.title}</title>


 <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
	<link rel="shortcut icon" href="/static/pc/images/favicon.ico" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	

		<meta property="name"			id="metaTagTitle"	content="메가박스 개인정보 처리방침 변경 안내"/>
		<meta property="description"	id="metaTagDtls"	content="삶의 의미와 즐거움을 소통하는 공간, 함께 더 행복한 가치있는 콘텐츠를 추구하는 만남과 소통의 즐거움이 가득한 공간 메가박스 입니다. "/>
		<meta property="keywords"		id="metaTagKeyword"	content="메가박스,megabox,영화,영화관,극장,티켓,박스오피스,상영예정작,예매,오페라,싱어롱,큐레이션,필름소사이어티,클래식소사이어티,이벤트,Movie,theater,Cinema,film,Megabox"/>

		<meta property="fb:app_id" 		id="fbAppId" 	content="546913502790694"/>
		

		<meta property="og:site_name" 	id="fbSiteName"	content="메가박스"/>
		<meta property="og:type" 		id="fbType"		content="movie"/>
		<meta property="og:url" 		id="fbUrl"		content="https://www.megabox.co.kr/support/notice/detail?artiNo=10101&amp;bbsNo=9&amp;cateNo=&amp;theater=&amp;cate2No=&amp;theater02=&amp;searchTxt=&amp;currentPage=1" />
		<meta property="og:title" 		id="fbTitle"	content="메가박스 개인정보 처리방침 변경 안내" />
		<meta property="og:description"	id="fbDtls"		content="삶의 의미와 즐거움을 소통하는 공간, 함께 더 행복한 가치있는 콘텐츠를 추구하는 만남과 소통의 즐거움이 가득한 공간 메가박스 입니다. "/>
		<meta property="og:image" 		id="fbImg"		content="https://img.megabox.co.kr/SharedImg/metaTag/2020/02/04/gFfTzMwwiCxhBwcUV5TRGMFX9Cmoj64W.jpg" />
		


	
	
     	
     		<link rel="stylesheet" href="../resources/css/board.css" media="all" />
     		<!-- Global site tag (gtag.js) - Google Analytics -->
			<script async src="https://www.googletagmanager.com/gtag/js?id=UA-30006739-3"></script>
			<script>window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', 'UA-30006739-3');</script>
		    <script src="/static/pc/dist/megabox.api.min.js"></script>
			<script src="/static/mb/js/lozad.min.js"></script>
			<script src="/js/common/dist/megabox.common.min.js"></script>
     		<script src="/js/netfunnel/dist/megabox.netfunnel.min.js"></script>
			<script src="//cast.imp.joins.com/persona.js" async></script>
		
		
<c:import url="../template/header_css.jsp"></c:import>


</head>
<body>

<c:import url="../template/header.jsp"></c:import>

<!-- <script async defer src="https://connect.facebook.net/en_US/sdk.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script> -->
<script src="/static/mb/js/hmac-sha256.js"></script>
<script src="/static/mb/js/enc-base64-min.js"></script>

        





	<!-- <form name="moveFrm" method="post">
		<input type="hidden" name="artiNo" value="10101" />
		<input type="hidden" name="cateNo" value="" />
		<input type="hidden" name="theater" value="" />
		<input type="hidden" name="theater02" value="" />
		<input type="hidden" name="cate2No" value="" />
		<input type="hidden" name="searchTxt" value="" />
		<input type="hidden" name="currentPage" value="1" />
	</form> -->
	
	<form name="moveFrm" method="post">
		<input type="hidden" name="artiNo" value="${vo.num}" />
		<input type="hidden" name="cateNo" value="" />
		<input type="hidden" name="theater" value="" />
		<input type="hidden" name="theater02" value="" />
		<input type="hidden" name="cate2No" value="" />
		<input type="hidden" name="searchTxt" value="" />
		<input type="hidden" name="currentPage" value="1" />
	</form>
	

	<!-- container -->
	<div class="container has-lnb" style="margin-top: 30px;">

		<div class="inner-wrap">
			<div class="lnb-area">
				<nav id="lnb">
					<p class="tit" style="width: 100%; font-size: 1.2em; line-height: 90px; color: #fff; text-align: center;">고객센터
					<ul>
						<li><a href="${board}FAQ" title="자주 묻는 질문">자주 묻는 질문</a></li>
						<li class="on"><a href="${board}List" title="공지사항">공지사항</a></li>
					</ul>

					<!-- 고객센터 메뉴일때만 출력 -->
					<div class="left-customer-info">
						<p class="tit">
							쌍용 씨네시티 고객센터
							<span>Dream center</span>
						</p>
						<p class="tel">1544-0070</p>
						<p class="time"><i class="iconset ico-clock"></i> 10:00~19:00</p>
					</div>
				</nav>
			</div>

			<div id="contents">
				<h2 class="tit">공지사항</h2>

				<div class="table-wrap">
					<div class="board-view">
						<div class="tit-area">
							<p class="tit">${vo.title}</p>
						</div>

						<div class="info">
							
							<%-- <c:if test="${vo.theaterNum gt 0}"> --%>
								<p>
									<span class="tit">영화관</span>
								</p>
							<%-- </c:if> --%>
								
							<p>
								<span class="tit">구분</span>
								<span class="txt">${vo.separate}</span>
							</p>
								
							
							<p>
								<span class="tit">등록일</span>
								<span class="txt">${vo.regDate}</span>
							</p>
						</div>

						<div class="cont">
						<span style="font-size:10pt"><span style="font-family:">${vo.contents}</span></span><br />
						<span>${fileVO.oriName}</span>
						<hr>
						<span style="font-size:10pt"><span style="font-family:">안녕하세요,</span></span><br />
<span style="font-size:10pt"><span style="font-family:">메가박스 입니다.</span></span><br />
<br />
<span style="font-size:10pt"><span style="font-family:">메가박스 개인정보 처리방침 내용이 변경됨에 따라 다음과 같이 안내 드립니다.</span></span><br />
<span style="font-size:10pt"><span style="font-family:">변경된 내용은 2020년 6월 25일(목)부터 시행 예정이니 이용에 참고하여 주시기 바랍니다.</span></span><br />
<br />
<span style="font-size:10pt"><span style="font-family:">▶ 메가박스 개인정보 처리방침 변경 안내</span></span><br />
<br />
<span style="font-size:10pt"><span style="font-family:">1. 적용대상</span></span><br />
<span style="font-size:10pt"><span style="font-family:">- 개인정보처리방침 제 6조. (개인정보의 처리위탁)</span></span><br />
<br />
<span style="font-size:10pt"><span style="font-family:">2. 개정내용</span></span><br />
<span style="font-size:10pt"><span style="font-family:">▶ 조항 내용 수정</span></span>
<table class="Table" style="width:457.0pt; margin-left:6px; border-collapse:collapse; border:solid windowtext 1.0pt" width="609">
	<tbody>
		<tr style="height:18.75pt">
			<td style="border: 1pt solid windowtext; background: rgb(112, 48, 160); width: 94.95pt; padding: 0cm 4.95pt; height: 18.75pt; text-align: center;" width="127"><span style="font-size:10pt"><span style="font-family:"><span style="color:white">제 6조. (개인정보의 처리위탁)</span></span></span></td>
			<td style="border-top: 1pt solid windowtext; border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-image: initial; background: rgb(112, 48, 160); width: 181pt; border-left: none; padding: 0cm 4.95pt; height: 18.75pt; text-align: center;" width="241"><span style="font-size:10pt"><span style="font-family:"><span style="color:white">기존</span></span></span></td>
			<td style="border-top: 1pt solid windowtext; border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-image: initial; background: rgb(112, 48, 160); width: 181.05pt; border-left: none; padding: 0cm 4.95pt; height: 18.75pt; text-align: center;" width="241"><span style="font-size:10pt"><span style="font-family:"><span style="color:white">변경</span></span></span></td>
		</tr>
		<tr style="height:15.75pt">
			<td style="border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-left: 1pt solid windowtext; border-image: initial; background: white; width: 94.95pt; border-top: none; padding: 0cm 4.95pt; height: 15.75pt; text-align: center;" width="127"><span style="font-size:10pt"><span style="font-family:">결제서비스 대행</span></span><br />
			<span style="font-size:10pt"><span style="font-family:">업체명 변경</span></span></td>
			<td style="border-bottom: 1pt solid windowtext; background: white; width: 181pt; border-top: none; border-left: none; border-right: 1pt solid windowtext; padding: 0cm 4.95pt; height: 15.75pt; text-align: center;" valign="top" width="241"><span style="font-size:10pt"><span style="line-height:13.5pt"><span style="text-autospace:ideograph-numeric ideograph-other"><span style="vertical-align:top"><span style="word-break:keep-all"><span style="font-family:"><span style="font-size:9.0pt">퍼스트데이터코리아 유한회사</span></span></span></span></span></span></span></td>
			<td style="border-bottom: 1pt solid windowtext; background: white; width: 181.05pt; border-top: none; border-left: none; border-right: 1pt solid windowtext; padding: 0cm 4.95pt; height: 15.75pt; text-align: center;" valign="top" width="241"><span style="font-size:10pt"><span style="line-height:13.5pt"><span style="vertical-align:top"><span style="font-family:"><span style="font-size:9.0pt">파이서브코리아 유한회사</span></span></span></span></span></td>
		</tr>
	</tbody>
</table>
<br />
<span style="font-size:10pt"><span style="font-family:">▶ 조항 내용 추가</span></span>

<table class="Table" style="width:457.0pt; margin-left:6px; border-collapse:collapse; border:solid windowtext 1.0pt" width="609">
	<tbody>
		<tr style="height:18.75pt">
			<td style="border: 1pt solid windowtext; background: rgb(112, 48, 160); width: 94.95pt; padding: 0cm 4.95pt; height: 18.75pt; text-align: center;" width="127"><span style="font-size:10pt"><span style="font-family:"><span style="color:white">제 6조. (개인정보의 처리위탁)</span></span></span></td>
			<td style="border-top: 1pt solid windowtext; border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-image: initial; background: rgb(112, 48, 160); width: 181pt; border-left: none; padding: 0cm 4.95pt; height: 18.75pt; text-align: center;" width="241"><span style="font-size:10pt"><span style="font-family:"><span style="color:white">수탁업체</span></span></span></td>
			<td style="border-top: 1pt solid windowtext; border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-image: initial; background: rgb(112, 48, 160); width: 181.05pt; border-left: none; padding: 0cm 4.95pt; height: 18.75pt; text-align: center;" width="241"><span style="font-size:10pt"><span style="font-family:"><span style="color:white">위탁업무내용</span></span></span></td>
		</tr>
		<tr style="height:15.75pt">
			<td style="border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-left: 1pt solid windowtext; border-image: initial; background: white; width: 94.95pt; border-top: none; padding: 0cm 4.95pt; height: 15.75pt; text-align: center;" width="127"><span style="font-size:10pt"><span style="font-family:">수탁업체 누락</span></span><br />
			<span style="font-size:10pt"><span style="font-family:">추가 반영</span></span></td>
			<td style="border-bottom: 1pt solid windowtext; background: white; width: 181pt; border-top: none; border-left: none; border-right: 1pt solid windowtext; padding: 0cm 4.95pt; height: 15.75pt; text-align: center;" valign="top" width="241"><span style="font-size:10pt"><span style="line-height:13.5pt"><span style="text-autospace:ideograph-numeric ideograph-other"><span style="vertical-align:top"><span style="word-break:keep-all"><span style="font-family:"><span style="font-size:9.0pt">㈜JK글로벌</span></span></span></span></span></span></span></td>
			<td style="border-bottom: 1pt solid windowtext; background: white; width: 181.05pt; border-top: none; border-left: none; border-right: 1pt solid windowtext; padding: 0cm 4.95pt; height: 15.75pt; text-align: center;" valign="top" width="241"><span style="font-size:10pt"><span style="line-height:13.5pt"><span style="vertical-align:top"><span style="font-family:"><span style="font-size:9.0pt">IT서비스 및 시스템 위탁 개발</span></span></span></span></span></td>
		</tr>
	</tbody>
</table>
<br />
<br />
<span style="font-size:10pt"><span style="font-family:">3. 변경 일시</span></span><br />
<span style="font-size:10pt"><span style="font-family:">- 2020년 6월 25일(목)</span></span><br />
<br />
<span style="font-size:10pt"><span style="font-family:">4. 문의</span></span><br />
<span style="font-size:10pt"><span style="font-family:">- 조항 내용 변경과 관련된 사항은 드림센터(1544-0070)으로 문의하여 주시기 바랍니다.</span></span><br />
<br />
<span style="font-size:10pt"><span style="font-family:">감사합니다.</span></span><br />
&nbsp;</div>

<div class="fileDown">
	<c:forEach items="${vo.noticeFileVOs}" var="fileVO">
		<div>
			<span style="font-weight: bolder;">* 첨부 파일 다운로드 *</span><br>
			<a href="./${board}/fileDown?fileNum=${fileVO.fileNum}"> - ${fileVO.oriName}</a>
		</div>
	</c:forEach>
</div>
					</div>
				</div>

				<div class="prev-next">
					<div class="line prev">
						<p class="tit">이전</p>
							<!-- <p class="link">이전글이 없습니다.</p> -->
							
							<%-- <c:if test="${vo.num lt listCount}">
								<div id="noPrev"></div>	
								<a href="./${board}Select?num=${vo.num+1}" class="link moveBtn">이전글</a>
							</c:if> --%>
							
							
							<a href="./${board}Select?num=${vo.num+1}" class="link moveBtnPrev">이전글</a>
							
							
							<%-- <c:forEach items="${list}" var="vo" varStatus="i">
							
								<c:if test="${i.count eq 1}">
									<p class="link">이전글이 없습니다.</p>
								</c:if>
									
								<c:if test="${i.count gt 1}">
									<a href="./${board}Select?num=${vo.num+1}" class="link moveBtn">이전글</a>
								</c:if>
							
								<h3>${i.count}</h3>
								<h3>${vo.num}</h3>
								 
								 
							</c:forEach> --%>
							
						
					</div>

					<div class="line next">
						<p class="tit">다음</p>
							
								<div id="noNext"></div>
							<c:if test="${vo.num gt 1}">
								<a href="./${board}Select?num=${vo.num-1}" class="link moveBtnNext">다음글</a>
							</c:if>
								<%-- <a href="#" class="link moveBtn" data-no="${vo.num-1}" title="[문경] 6월 &#39;영화가 있는 날&#39; 이벤트 일자 변경 안내">[문경] 6월 &#39;영화가 있는 날&#39; 이벤트 일자 변경 안내</a> --%>
							
						
					</div>
				</div>

				<div class="btn-group pt40">
					<a href="${board}Update?num=${vo.num}" class="button large updateBtn" style="border-color: #00cc00; color: #00cc00; ">글 수정</a>
					<a href="${board}List" class="button large listBtn" title="목록">목록</a>
					<a href="${board}Delete?num=${vo.num}" class="button large deleteBtn" title="글 삭제" style="border-color: #ff1a1a; color: #ff1a1a;">글 삭제</a>
				</div>
				
			</div>
		</div>
	</div>
	<!--// container -->
<!-- 		</div> -->
        
        
<script type="text/javascript">

	var num = '${vo.num}';
	var numPlus = '${vo.num+1}';
	var numMinus = '${vo.num-1}';
	var listCount = '${listCount}';
	
	if(num==listCount){
		$("#noPrev").append('<p>이전글이 없습니다.</p>');
	}

	
	if(num<=1){
		$("#noNext").append('<p>다음글이 없습니다.</p>');
	}

	/* if($(".line > a").empty){
		$("#noNext").append('<p>다음글이 없습니다.</p>')

	}; */



	$(function() {
		// 이전글, 다음글 이동
		$('.moveBtnPrev').on('click', function(e) {
			e.preventDefault();

			$('[name=artiNo]').val($(this).data('no'));


			
			var form = $(document.forms.moveFrm);
			if(num==null){
				form.attr('action', './noticeSelect?num=211')				
			}
			form.attr('action', './noticeSelect?num='+numPlus);
			form.submit();
		});

		$('.moveBtnNext').on('click', function(e) {
			e.preventDefault();

			$('[name=artiNo]').val($(this).data('no'));
			
			var form = $(document.forms.moveFrm);
			form.attr('action', './noticeSelect?num='+numMinus);
			form.submit();
		});
		
	
		

		/*
		// 목록 이동
		$('.listBtn').on('click', function(e) {
			e.preventDefault();

			var form = $(document.forms.moveFrm);
			form.attr('action', './notice/noticeList');
			form.submit();
		}); */
	});	
			
		
</script>



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