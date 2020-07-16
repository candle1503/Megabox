<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${bookingMovieArSize eq 0}">
	<div class="no-result" style="text-align: center; margin-top: 70px;">
		<i class="iconset ico-movie-time"></i>

		<p class="txt">
			현재 날짜에 상영중인<br> 영화가 없습니다.<br> 다른 날짜를 선택해주세요.
		</p>
	</div>
</c:if>

<c:forEach items="${bookingMovieAr}" var="bmList" varStatus="i">
	<li id="bookingMovie${i.count}" class="bookingMovie-Name">
		<button type="button" id="movieBtn${i.count}"  class="btn">
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
				<span class="txt" style="display: none;">/${bmList.movieNum}</span>
		</button>
				<input class="mvNumD${i.count}" value="${bmList.movieNum}" type="hidden">
	</li>

	
</c:forEach>

				<input type="hidden" value="null" class="mvNum"/>



<script type="text/javascript">

	
function bookingMovieRoomList(startDate, name, movieNumber){
	$.get("bookingRoomList?startTime="+startDate+"&name="+name+"&movieNumber="+movieNumber, function(result){
		$("#bookingRoom-List").append(result);
	});
}

function bookingRoomList(startDate, name){
	$.get("bookingRoomList?startTime="+startDate+"&name="+name, function(result){
		$("#bookingRoom-List").append(result);
	});
}

	var movieSize = "${bookingMovieArSize}";

	for (var bml = 1; bml < movieSize+1; bml++) {
		var movieCss;
		
		$(".bookingMovie-Name").on("click", "#movieBtn" + bml, function() {
			if($(this).hasClass("on")){
				$(this).removeClass("on");
				$('.mvNum').val("null");
				$("#bookingRoom-List").empty();
				var name = $(".localName").val();
				bookingRoomList(startDate, name);
			}else{
				if($('.hasParameter').val()=="has"){
					for(var i=1; i < 100; i++){
						$("#movieBtn"+i).removeClass("on");
					}
				}
				$("#movieBtn"+movieCss).removeClass("on");
				$(this).addClass("on");
				movieCss = $(this).attr('id').replace("movieBtn", '');
				
				var txt = $(this).text().split('/');
				var movieNumber = parseInt(txt[1]);
			if($('.localName').val()=="null"){
				
			}else{
				
				$("#bookingRoom-List").empty();
				var name = $('.localName').val();
				
				bookingMovieRoomList(startDate, name, movieNumber);
			}
			
			
			$('.mvNum').val(movieNumber);
			}

		});
	}
</script>
