<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${bookingRoomArSize eq 0}">
	<div class="no-result" style="text-align: center;">
		<i class="iconset ico-movie-time"></i>

		<p class="txt">
			현재 지역에 상영중인 영화가 없습니다.<br> 다른 지역을 선택해주세요.
		</p>
	</div>
</c:if>

<c:forEach items="${bookingRoomAr}" var="brList" varStatus="i">
	<li class="bookingRoomList-room"><button type="button" class="btn" id="roomBtn${i.count}">
			<div class="legend"></div>
			<span class="time"><strong title="상영 시작">${stm[i.index]}</strong><em
				title="상영 종료">~${etm[i.index]}</em></span><span class="title">
				<strong title="${vom[i.index]}">${vom[i.index]}</strong><em>2D(자막)</em></span>
			<div class="info">
				<span class="theater" title="극장">${brList.roomName} </span><span
					class="seat"><strong class="now" title="잔여 좌석">99</strong><span>/</span><em
					class="all" title="전체 좌석">${brList.seatCount}</em></span>
			</div>
		</button></li>
</c:forEach>



<script type="text/javascript" src="../resources/static/js/bookingRoomList.js">

</script>



