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

	<link rel="stylesheet" href="../resources/static/css/board.css" media="all" />
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async
		src="https://www.googletagmanager.com/gtag/js?id=UA-30006739-3"></script>


<c:import url="../template/header_css.jsp"></c:import>


</head>
<body>

<c:import url="../template/header.jsp"></c:import>



	<!-- <form name="moveFrm" method="post">
		<input type="hidden" name="artiNo" value="10101" />
		<input type="hidden" name="cateNo" value="" />
		<input type="hidden" name="theater" value="" />
		<input type="hidden" name="theater02" value="" />
		<input type="hidden" name="cate2No" value="" />
		<input type="hidden" name="searchTxt" value="" />
		<input type="hidden" name="currentPage" value="1" />
	</form> -->
	
	<form name="moveFrm" method="get">
		<input type="hidden" name="num" value="${vo.num}" />
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
							
								<p>
									<span class="tit">영화관</span>
									<span class="txt">${vo.name}</span>
								</p>
								
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
						<hr>

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

				<%-- <div class="prev-next">
					<div class="line prev">
						<p class="tit-prev">이전</p>
							<!-- <p class="link">이전글이 없습니다.</p> -->
							
							<c:if test="${vo.num lt listCount}">
								<div id="noPrev"></div>	
								<a href="./${board}Select?num=${vo.num+1}" class="link moveBtn">이전글</a>
							</c:if>
							
							<a href="#" class="link moveBtnPrev">이전글</a>
						
					</div>

					<div class="line next">
						<p class="tit">다음</p>
							
								<div id="noNext"></div>
							<c:if test="${vo.num gt 1}">
								<a href="./${board}Select?num=${vo.num-1}" class="link moveBtnNext">다음글</a>
							</c:if>
							
							<!-- 원본 -->
							<a href="#" class="link moveBtn" data-no="${vo.num-1}" title="[문경] 6월 &#39;영화가 있는 날&#39; 이벤트 일자 변경 안내">[문경] 6월 &#39;영화가 있는 날&#39; 이벤트 일자 변경 안내</a>
					</div>
				</div> --%>

				<div class="btn-group pt40">
				
					<c:if test="${member.id eq 'ADMIN'}">
						<a href="${board}Update?num=${vo.num}" class="button large updateBtn" title="글 수정" style="border-color: #00cc00; color: #00cc00; ">글 수정</a>
					</c:if>
					<a href="${board}List" class="button large listBtn" title="목록">목록</a>
					<c:if test="${member.id eq 'ADMIN'}">
						<a href="${board}Delete?num=${vo.num}" onclick="if(!confirm('정말 삭제 하시겠어요?')){return false;}" class="button large deleteBtn" title="글 삭제" style="border-color: #ff1a1a; color: #ff1a1a;">글 삭제</a>
					</c:if>
				</div>
				
			</div>
		</div>
	</div>
</div>
	<!--// container -->
<!-- 		</div> -->
        
        
<script type="text/javascript">
	i
	$(function() {

		var num = "${vo.num}";
		var numPlus = "${vo.num+1}";
		
		// 이전글, 다음글 이동
		$('.moveBtnPrev').on('click', function(e) {
			e.preventDefault();
	
			/* $('[name=num]').val($(this).data('no')); */
			
			var form = $(document.forms.moveFrm);
			if(numPlus==null){
				$(".tit-prev").before('<p class="link">이전글이 없습니다.</p>');
				/* form.attr('action', './noticeSelect?num='+num); */				
			}else{
				form.attr('action', './noticeSelect?num='+numPlus);
			}
			form.submit();
		});
	
		$('.moveBtnNext').on('click', function(e) {
			e.preventDefault();
	
			$('[name=artiNo]').val($(this).data('no'));
			
			var form = $(document.forms.moveFrm);
			form.attr('action', './noticeSelect?num='+numMinus);
			form.submit();
		});




	/* $(function() {
		// 이전글, 다음글 이동
		$('.moveBtn').on('click', function(e) {
			e.preventDefault();
	
			$('[name=artiNo]').val($(this).data('no'));
	
			var form = $(document.forms.moveFrm);
			form.attr('action', '/support/notice/detail');
			form.submit();
		});
	
		// 목록 이동
		$('.listBtn').on('click', function(e) {
			e.preventDefault();
	
			var form = $(document.forms.moveFrm);
			form.attr('action', '/support/notice');
			form.submit();
		});
	}); */

	});	
			
		
</script>



<div class="quick-area">
	<a href="" class="btn-go-top" title="top">top</a>
</div>



<c:import url="../template/footer.jsp"></c:import>




</body>
</html>