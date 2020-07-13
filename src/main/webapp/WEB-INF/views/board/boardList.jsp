<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8" >
<title>공지사항 | 라이프씨어터, 쌍용 씨네시티</title>

<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!--   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->


    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
	<link rel="stylesheet" href="../resources/static/css/board.css"
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
			
			.pagination > li{
				display: inline-block; 
			}
			
			.active{
				color: #fff;
				background-color: #01738b;
				border-color: #01738b;
			}
		</style>
		
		<c:import url="../template/header_css.jsp"></c:import>

</head>


<body>


	<c:import url="../template/header.jsp"></c:import>
	
	

	<!-- container -->
	<div class="container has-lnb" style="margin-top: 30px;">

		<div class="inner-wrap">
			<div class="lnb-area">
				<nav id="lnb">	
					<p class="tit" style="width: 100%; font-size: 1.2em; line-height: 90px; color: #fff; text-align: center;">고객센터
					</p>
					<ul>
			
					<li><a href="${board}FAQ"		title="자주 묻는 질문">자주 묻는 질문</a></li>
                    <li class="on"><a href="${board}List"	title="공지사항">공지사항</a></li>
					
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

				<!-- <div class="tab-block mb30">
					<ul>
						<li class="on tabBtn"><button type="button" class="btn tabBtn" data-no="" title="전체공지 보기">전체</button></li>
							<li class="tabBtn"><button type="button" class="btn" data-no="81" title="메가박스 공지 보기" >쌍용 씨네시티 공지</button></li>
						
							<li class="tabBtn"><button type="button" class="btn" data-no="82" title="지점 공지 보기" >지점 공지</button></li>
						
					</ul>
				</div> -->
				
				<hr>

				<div class="board-list-util">
					<p class="result-count">전체 <em class="font-gblue">${listCount}</em>건</p>
					
					<form action="./${board}List" style="float: right;">
					
						<select id="theater02" title="극장 선택" class="mr07 bootstrap-select bs3" name="name">
							<option value="">극장 선택</option>
							<c:forEach items="${localCodeNameList}" var="codeList">
								<option value="${codeList.name}">${codeList.name}</option>
							</c:forEach>
							
						</select>
					
						<div class="board-search">
							<input type="text" id="searchTxt" title="검색어를 입력해 주세요." placeholder="검색어를 입력해 주세요." class="input-text" value="" maxlength="15" name="search">
							<button type="submit" id="searchBtn" class="btn-search-input">검색</button>
						</div>
					
					</form>
					
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
						
						<c:choose>
							<c:when test="${not empty list}">
							<c:forEach items="${list}" var="vo">
								<tr>
									<td>${vo.num}</td>
									<td>${vo.name}</td>
									<td>${vo.separate}</td>
									<td><a href="${board}Select?num=${vo.num}">${vo.title}</a></td>
									<td>${vo.regDate}</td>
								</tr>
							</c:forEach>
							</c:when>
							<c:otherwise>
								 
								<div style="position: absolute; margin-top: 50px; margin-left: 45%;"><p style="text-align: center;">목록이 없습니다.</p></div> 
								
							</c:otherwise>
						</c:choose>
						</tbody>
					</table>
				</div>
				
				

				<!-- pagination -->
				<div>
					<ul class="pagination">
						
						<c:choose>
						
						<c:when test="${not empty list}">
						
						<c:if test="${pager.curBlock gt 1}">
							<li><a href="./${board}List?curPage=1&search=${pager.search}" class="control first">&lt&lt</a></li>
						</c:if>
						
						<c:if test="${pager.curBlock gt 1}">
							<li><a href="./${board}List?curPage=${pager.startNum-1}&search=${pager.search}" class="control prev">&lt</a></li>
						</c:if>
						
						<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
							<li><a href="./${board}List?curPage=${i}&search=${pager.search}">${i}</a></li>
						</c:forEach>
						
						<c:if test="${pager.curBlock lt pager.totalBlock}">
							<li><a href="./${board}List?curPage=${pager.lastNum+1}&search=${pager.search}" class="control next">&gt</a></li>
						</c:if>
						
						<c:if test="${pager.curBlock lt pager.totalBlock}">
							<li><a href="./${board}List?curPage=${pager.totalPage}&search=${pager.search}" class="control last">&gt&gt</a></li>
						</c:if>
						
						</c:when>
						
						<c:otherwise>
						</c:otherwise>
						
						</c:choose>
					</ul>
				</div>
				<!--// pagination -->
				
				<div class="container">
					<c:if test="${member.id eq 'ADMIN'}">
						<a href="../notice/noticeWrite" class="button large writeBtn" style="border-color:#3385ff; color: #3385ff; ">공지사항 작성</a>
					</c:if>
				</div>
			</div>
		</div>
	</div>



<div class="quick-area">
	<a href="" class="btn-go-top" title="top">top</a>
</div>

<c:import url="../template/footer.jsp"></c:import>

  
<script type="text/javascript">

	var totalPage = '${listCount}';

 	$(".pagination > li").click(function(){
		var curBlock = '${pager.curBlock}';
 	 	if($(this).val==curBlock){
			$(this).toggleClass("active");
 	 	}
	});

 	var name = "";
	
	// 영화관 지역 변경
	$('#theater02').on('change', function() {
		
		name = $("#theater02").val();

		$.ajax({
			url:"noticeList",
			type:"get",
			data:{name},
			success:function(result){
			},
			error:function(result){
			}
		});
	});

</script>


</body>
</html>