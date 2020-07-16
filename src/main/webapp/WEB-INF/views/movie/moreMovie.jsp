<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

<c:forEach var="movie" items="${movie }" varStatus="vs">	
		<li tabindex="0" class="no-img">
					
			<div class="movie-list-info">    <p class="rank" style="">${vs.count+startNum }<span class="ir">위</span></p>
			<img src="${pageContext.request.contextPath}/upload/movie/${movie.movieFileVO.fileName}" alt="${movie.name }" class="poster lozad" onerror="noImg(this)">    
				
			<div class="movie-score" style="opacity: 0;">        <a href="./movieSelect?movieNum=${movie.movieNum }" class="wrap movieBtn" data-no="20021300" title="상세보기">           
			<div class="summary">
			
			${movie.contents }
			
			</div>            
			<div class="my-score equa">  <div class="preview"> <p class="tit">관람평</p>
			  <p class="number">
			  <c:if test="${movie.rate >= 1}">
						<fmt:formatNumber value="${movie.rate}" pattern="#,###.0"/><span class="ir">점</span>
			</c:if>
			<c:if test="${movie.rate < 1 }">
				0<fmt:formatNumber value="${movie.rate}" pattern="#,###.0"/> <span class="ir">점</span>
			</c:if>
			  </p>   </div> </div>  </a>    
			</div></div><div class="tit-area">    
			<c:if test="${movie.age eq '전체관람가' }">
			<p class="movie-grade age-all">,</p>    
			</c:if>
			<c:if test="${movie.age eq '12세이상관람가' }">
			<p class="movie-grade age-12">,</p>    
			</c:if>
			<c:if test="${movie.age eq '15세이상관람가' }">
			<p class="movie-grade age-15">,</p>    
			</c:if>
			<c:if test="${movie.age eq '청소년관람불가' }">
			<p class="movie-grade age-19">,</p>    
			</c:if>
			
			<p title="${movie.name }" class="tit">${movie.name }</p></div>
			<div class="rate-date">    <span class="rate">예매율 
			<c:if test="${movie.bookingRate < 1 }">
			
			0<fmt:formatNumber value="${movie.bookingRate}" pattern="#,###.0"/>
			
			</c:if>
			<c:if test="${movie.bookingRate>=1 }">
			<fmt:formatNumber value="${movie.bookingRate}" pattern="#,###.0"/>
			</c:if>
			 %</span> <span class="date">개봉 ${movie.openDay }</span>
			</div><div class="btn-util">    <button type="button" class="button btn-like" data-no="20021300"><i title="보고싶어 안함" class="iconset ico-heart-toggle-gray intrstType"></i> <span>${movie.like }</span></button>    
			<div class="case col-2 movieStat3" style=""> 
	<c:choose>
		<c:when test="${member.id ne 'ADMIN' }">
			<button class="button purple bokdBtn" data-no="20021300" title="영화 예매하기" value="${movie.movieNum}">예매</button>
			<!-- <a href="../booking/bookingMain" class="button purple bokdBtn" data-no="20021300" title="영화 예매하기">예매</a> --> 
		</c:when>
		<c:when test="${member.id eq'ADMIN' }">
			<a href="./movieUpdate?movieNum=${movie.movieNum }" class="button purple bokdBtn" data-no="20021300" title="영화 예매하기">수정</a> 
			<button class="button purple delt" title="${movie.movieNum }" style="background-color: red;">삭제</button>
		</c:when>
	
	</c:choose>
	
	</div> </div></li>
	<!-- ////영화 뿌려주기 -->
	</c:forEach>

</body>
</html>