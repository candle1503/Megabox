<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:forEach items="${bookingRoomAr}" var="brList" varStatus="i">
	<li class="bookingRoomList-room"><button type="button" class="btn">
			<div class="legend"></div>
			<span class="time"><strong title="상영 시작">${stm[i.index]}</strong><em
				title="상영 종료">~??:??</em></span><span class="title">
				<%-- <c:forEach items="${vom}" var="map" varStatus="status">
					<strong title="인베이젼 2020">${map[status.index]["vom"]}</strong><em>2D(자막)</em></span>
				</c:forEach> --%>
				<strong title="${vom[i.index]}">${vom[i.index]}</strong><em>2D(자막)</em></span>
			<div class="info">
				<span class="theater" title="극장">${brList.roomName} </span><span
					class="seat"><strong class="now" title="잔여 좌석">99</strong><span>/</span><em
					class="all" title="전체 좌석">${brList.seatCount}</em></span>
			</div>
		</button></li>

	<!-- <li><button type="button" class="btn" play-start-time="1125"
						play-de="20200703" play-seq="1" rpst-movie-no="20015501"
						brch-no="1372" theab-no="03" play-schdl-no="2007031372050"
						rest-seat-cnt="157" ctts-ty-div-cd="MVCT01" theab-popup-at="Y"
						theab-popup-no="1056">
						<div class="legend"></div>
						<span class="time"><strong title="상영 시작">11:25</strong><em
							title="상영 종료">~13:45</em></span><span class="title"><strong
							title="인베이젼 2020">인베이젼 2020</strong><em>2D(자막)</em></span>
						<div class="info">
							<span class="theater" title="극장">강남<br>3관
							</span><span class="seat"><strong class="now" title="잔여 좌석">157</strong><span>/</span><em
								class="all" title="전체 좌석">232</em></span>
						</div>
					</button></li> -->


</c:forEach>

<script type="text/javascript">
	


</script>

