<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <c:import url="../template/header_css.jsp"></c:import>
	<style type="text/css">
		header {
			font-size: 1.4em;
			font-weight: bold;
			
		}
		#header.no-bg{
			background-color : black;
		}
		
	
		
	</style>

			<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-30006739-3"></script>


</head>
<body>

<c:import url="../template/header.jsp"></c:import>
<div class="page-util">
	<div class="inner-wrap">
		<div class="location">
			<span>Home</span> <a href="/movie/movieList" title="영화 페이지로 이동">영화</a>
			<a href="/movie/movieList" title="전체영화 페이지로 이동">전체영화</a>
		</div>
	</div>
</div>
<div id="contents">
<div class="inner-wrap">
	<h2 class="tit">전체영화</h2>

    <div class="tab-list fixed">
        <ul>
            <li class="on"><a href="#" title="전체영화 탭으로 이동" id="inform">전체 영화</a></li>
            
            <li><a href="#" title="개봉영화 탭으로 이동" id="preview">개봉 영화</a></li>
            <li><a href="#" title="상영에정 탭으로 이동" id="review">상영예정작</a></li>
          
        </ul>
    </div><br><br><a href="./movieInsert" class="button purple" style="width:150px; font-size: 1.2em;">영화 추가</a><br><br>
<div class="movie-list">
	<ol class="list" id="movieList">
		<c:forEach var="movie" items="${movie }" varStatus="vs">	
		<li tabindex="0" class="no-img">
					
			<div class="movie-list-info">    <p class="rank" style="">${vs.count }<span class="ir">위</span></p>
			<img src="${pageContext.request.contextPath}/upload/movie/${movie.movieFileVO.fileName}" alt="${movie.name }" class="poster lozad" onerror="noImg(this)">    
				
			<div class="movie-score" style="opacity: 0;">        <a href="./movieSelect?movieNum=${movie.movieNum }" class="wrap movieBtn" data-no="20021300" title="상세보기">           
			<div class="summary">
			
			${movie.contents }
			
			</div>            
			<div class="my-score equa">  <div class="preview"> <p class="tit">관람평</p>
			  <p class="number"><fmt:formatNumber value="${movie.rate}" pattern="#,###.0"/><span class="ir">점</span></p>   </div> </div>  </a>    
			</div></div><div class="tit-area">    <p class="movie-grade age-15">,</p>    <p title="${movie.name }" class="tit">${movie.name }</p></div>
			<div class="rate-date">    <span class="rate">예매율 25.2%</span> <span class="date">개봉 ${movie.openDay }</span>
			</div><div class="btn-util">    <button type="button" class="button btn-like" data-no="20021300"><i title="보고싶어 안함" class="iconset ico-heart-toggle-gray intrstType"></i> <span>${movie.like }</span></button>    
			<div class="case col-2 movieStat3" style="">        <a href="#" class="button purple bokdBtn" data-no="20021300" title="영화 예매하기">예매</a></div> </div></li>
		</c:forEach>	
	</ol>
	</div>
	
	<script type="text/javascript">
		$(".movie-list-info").on("mouseover", function(e){
			$(this).children('.movie-score').addClass("on");
			$(this).children('.movie-score').css("opacity", "1");
		})
		$(".movie-list-info").on("mouseleave", function(e){
			$(this).children('.movie-score').removeClass("on");
			$(this).children('.movie-score').css("opacity", "0");
		})

	</script>
     
</div>
<!--// inner-wrap -->
</div>
    
	<div class="quick-area" style="display: block;">
		<a href="" class="btn-go-top" title="top" style="position: fixed;">top</a>
	</div>


  
<c:import url="../template/footer.jsp"></c:import>


</body>
</html>