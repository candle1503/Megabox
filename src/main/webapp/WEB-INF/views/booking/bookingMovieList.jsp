<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:forEach items="${bookingMovieAr}" var="bmList" varStatus="i">
	<li id="bookingMovie${i.count-1}" class="bookingMovie-Name">
		<button type="button" class="btn">
			<c:if test="${bmList.age eq '전체관람가'}">		
				<span class="movie-grade small age-all">${bmList.age}</span>
			</c:if>
			<c:if test="${bmList.age eq '12세이상관람가'}">		
				<span class="movie-grade small age-12">${bmList.age}</span>
			</c:if>
			<c:if test="${bmList.age eq '15세이상관람가'}">		
				<span class="movie-grade small age-15">${bmList.age}</span>
			</c:if>
			<c:if test="${bmList.age eq '청소년관람불가'}">		
				<span class="movie-grade small age-19">${bmList.age}</span>
			</c:if>
			<i class="iconset ico-heart-small">보고싶어 설정안함</i>
				<span class="txt">${bmList.name}</span>
				<span class="txt">${bmList.movieNum}</span>
		</button>
	</li>
</c:forEach>


<!-- <script type="text/javascript">

	var movieNum = 0;

	var date = new Date();
	var startDay = parseInt(date.getDate());
	var startTime = startDay;

	//var startTime = "";
	
	$("#bookingMovie0").on("click", function(){

		movieNum = "${bookingMovieAr.get(0).getMovieNum()}";
		//alert(movieNum);
		startTime = "${bookingMovieTimeAr.get(0).getStartTime()}";

		startTime = startTime.substr(8,2);
		
		//alert(startTime);
	 
		$.ajax({
			url:"bookingLocalList",
			type:"GET", 
			data:{movieNum, startTime},
			success:function(result){
				$("#bookingLocal-List").empty();
				$("#bookingLocal-List").append(result);
			},
		});

		tartTime = parseInt(startTime);
		//alert("st:"+startTime);
	});
	
	$("#bookingMovie1").on("click", function(){

		movieNum = "${bookingMovieAr.get(1).getMovieNum()}";
		//alert(movieNum);
		startTime = "${bookingMovieTimeAr.get(1).getStartTime()}";
		
		startTime = startTime.substr(8,2);

		//alert(startTime);
		
		$.ajax({
			url:"bookingLocalList",
			type:"GET", 
			data:{movieNum, startTime},
			success:function(result){
				$("#bookingLocal-List").empty();
				$("#bookingLocal-List").append(result);
			}
		});

		startTime = parseInt(startTime);
		//alert("st:"+startTime);
	});
	
	$("#bookingMovie2").on("click", function(){

		movieNum = "${bookingMovieAr.get(2).getMovieNum()}";

		startTime = "${bookingMovieTimeAr.get(2).getStartTime()}";
		
		startTime = startTime.substr(8,2);

		//alert(startTime);

		$.ajax({
			url:"bookingLocalList",
			type:"GET", 
			data:{movieNum, startTime},
			success:function(result){
				$("#bookingLocal-List").empty();
				$("#bookingLocal-List").append(result);
			}
		});
		
		startTime = parseInt(startTime);
		//alert("st:"+startTime);
	});

	$("#bookingMovie3").on("click", function(){

		movieNum = "${bookingMovieAr.get(3).getMovieNum()}";

		startTime = "${bookingMovieTimeAr.get(3).getStartTime()}";
		
		startTime = startTime.substr(8,2);

		//alert(startTime);

		$.ajax({
			url:"bookingLocalList",
			type:"GET", 
			data:{movieNum, startTime},
			success:function(result){
				$("#bookingLocal-List").empty();
				$("#bookingLocal-List").append(result);
			}
		});
		
		startTime = parseInt(startTime);
		//alert("st:"+startTime);
	});



	


</script> -->


<!-- <li class="bookingMovie-List"><button type="button" class="btn" movie-nm="사라진 시간"
		movie-no="20018900"
		img-path="/SharedImg/2020/06/08/s0lDFGluXxYc6hNTqfr1qfOeS2UVw7nc_150.jpg"
		movie-popup-at="N" movie-popup-no="0" form-at="Y">
		<span class="movie-grade small age-15">15세이상관람가</span><i
			class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">사라진
			시간</span>
	</button></li>
<li><button type="button" class="btn" movie-nm="결백"
		movie-no="20003500"
		img-path="/SharedImg/2020/06/15/pjraLryYt5zQ1HEf6axtAdkXRhfhRZTZ_150.jpg"
		movie-popup-at="N" movie-popup-no="0" form-at="Y">
		<span class="movie-grade small age-15">15세이상관람가</span><i
			class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">결백</span>
	</button></li>
<li><button type="button" class="btn" movie-nm="위대한 쇼맨"
		movie-no="01309400"
		img-path="/SharedImg/asis/system/mop/poster/2017/D0/D558A7-DE6C-4178-B3F6-27A023AA5DEE.small.jpg"
		movie-popup-at="N" movie-popup-no="0" form-at="Y">
		<span class="movie-grade small age-12">12세이상관람가</span><i
			class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">위대한
			쇼맨</span>
	</button></li>
<li><button type="button" class="btn" movie-nm="콜 미 바이 유어 네임"
		movie-no="20021700"
		img-path="/SharedImg/2020/06/16/T43wKaYuW6i30Kc5Rd1SJ8gdtoDLzgwO_150.jpg"
		movie-popup-at="N" movie-popup-no="0" form-at="Y">
		<span class="movie-grade small age-19">청소년관람불가</span><i
			class="iconset ico-heart-small">보고싶어 설정안함</i><span class="txt">콜
			미 바이 유어 네임</span>
	</button></li> -->