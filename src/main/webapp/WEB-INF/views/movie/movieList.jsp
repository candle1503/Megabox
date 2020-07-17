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
        
        <c:choose>
        	<c:when test="${listName eq 'all'}">
            <li class="on"><a href="#" title="전체영화 탭으로 이동">전체 영화</a></li> 
            <li><a href="./ingList" title="개봉영화 탭으로 이동">개봉 영화</a></li>
            <li><a href="./futureList" title="상영에정 탭으로 이동">상영예정작</a></li>
            </c:when>
        	<c:when test="${listName eq 'ing'}">
            <li><a href="./movieList" title="전체영화 탭으로 이동">전체 영화</a></li> 
            <li	class="on"><a href="#" title="개봉영화 탭으로 이동">개봉 영화</a></li>
            <li><a href="./futureList" title="상영에정 탭으로 이동">상영예정작</a></li>
            </c:when>
            <c:when test="${listName eq 'future'}">
            <li><a href="./movieList" title="전체영화 탭으로 이동">전체 영화</a></li> 
            <li><a href="./ingList" title="개봉영화 탭으로 이동">개봉 영화</a></li>
            <li	class="on"><a href="#" title="상영에정 탭으로 이동">상영예정작</a></li>
            </c:when>   
        </c:choose>
          
        </ul>
    </div><br>
<c:if test="${member.id eq'ADMIN' }">
    <a href="./movieInsert" class="button purple" style="width:150px; font-size: 1.2em;">영화 추가</a>
</c:if>


    <br><p class="no-result-count" style="margin-left: 20px;"><strong id="totCnt">${movieCount }</strong>개의 영화가 검색되었습니다.</p><br>
    
    
    
<div class="movie-list">
	<ol class="list" id="movieList">
	
	<!-- 영화 뿌려주기 -->
		<c:forEach var="movie" items="${movie }" varStatus="vs">	
		<li tabindex="0" class="no-img">
					
			<div class="movie-list-info">    <p class="rank" style="">${vs.count }<span class="ir">위</span></p>
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
	
	</ol>
	</div>
	<div class="btn-more v1" id="addMovieDiv" style="margin-bottom: 30px;">
		<button type="button" class="btn" id="btnAddMovie">더보기 <i class="iconset ico-btn-more-arr"></i></button>
	</div>
	
	<script type="text/javascript">
		var startNum=0
	
		$("#movieList").on("mouseover",".movie-list-info", function(e){
			$(this).children('.movie-score').addClass("on");
			$(this).children('.movie-score').css("opacity", "1");
		})
		$("#movieList").on("mouseleave",".movie-list-info", function(e){
			$(this).children('.movie-score').removeClass("on");
			$(this).children('.movie-score').css("opacity", "0");
		})
		
		$("#movieList").on("click", ".delt", function(){
			
			var flag = confirm("정말 삭제하시겠습니까?");
			var movieNum = $(this).attr("title");
			 if(flag==true){
				 $.post("./movieDelete", {movieNum : movieNum}, function(result) {
						if (result>0){
							alert("삭제 성공");
							location.replace('${pageContext.request.contextPath}/movie/movieList'); 
						} else {
							alert("삭제 실패");
						}
						
					});

			}
		})
		
		
		
		$("#movieList").on("click", ".bokdBtn", function(){
			var movieNumb = $(this).val();
			location.href="${pageContext.request.contextPath}/booking/bookingMain?movieNum="+movieNumb;
		}); 

		if(${movieCount}<=12){
			$("#btnAddMovie").remove();
			}
		
		$("#btnAddMovie").click(function(){
			startNum+=12

			if('${listName}'=="all"){

			var ajaxOption = {
	            url : "./moreMovie",      
	            data : {startNum:startNum},
	            type : "POST",
	            dataType : "html"
	            
	    	};  
			$.ajax(ajaxOption).done(function(data){
	       
		        $('#movieList').append(data);
		    });

			}else if('${listName}'=="Ing"){

				var ajaxOption = {
			            url : "./moreIng",      
			            data : {startNum:startNum},
			            type : "POST",
			            dataType : "html"
			            
			    	};  
					$.ajax(ajaxOption).done(function(data){
			       
				        $('#movieList').append(data);
				    });
			} else{
				var ajaxOption = {
			            url : "./moreFuture",      
			            data : {startNum:startNum},
			            type : "POST",
			            dataType : "html"
			            
			    	};  
					$.ajax(ajaxOption).done(function(data){
			       
				        $('#movieList').append(data);
				    });

			}
			

		    if(startNum+12>=${movieCount}){
					
					$(this).remove();
			    }
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