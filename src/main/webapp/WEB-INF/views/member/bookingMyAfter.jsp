<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 예매 영화 목록 -->
<div id="bokdList">
	<div class="board-list-util">
		<p class="result-count pt00">
			<!-- size뿌려줄거 -->
			<strong> 총 <b class="font-gblue">${bookedAfterSize}</b>건
			</strong>
		</p>
	</div>
	<div class="history-reservation">

		<!-- c:foreach로 뿌려줄 거 -->
		<ul id="bookedList">
			<c:forEach items="${bookedCompAfterAr}" var="bookedCompAfList"
				varStatus="i">
				<li sell-tran-no="13722007010094143868">
					<div class="round">
						<a
							href="${pageContext.request.contextPath}/movie/movieSelect?movieNum=${bookedCompAfList.movieNum}"
							class="img" title="${bookedCompAfList.movieName} "><img
							src="upload/movie/${mvfile[0].fileName}" alt="결백"
							onerror="noImg(this)"></a>
						<table class="table">
							<colgroup>
								<col style="width: 100px;">
								<col style="width: 230px;">
								<col style="width: 100px;">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row" class="a-r">예매번호</th>
									<td colspan="3"><em class="num">${bookedCompAfList.ticketCode}</em></td>
								</tr>
								<tr>
									<th scope="row" class="a-r">영화명</th>
									<td colspan="3">
										<p class="tit-movie">
											<span>${bookedCompAfList.movieName}</span> <span>2D</span>
										</p>
									</td>
								</tr>
								<tr>
									<th scope="row" class="a-r">극장/상영관</th>
									<td>${theaterName[i.index]} / ${theaterRoomName[i.index]}</td>
									<th scope="row">관람인원</th>
									<td>일반 ${bookedCompAfList.count}명</td>
								</tr>
								<tr>
									<th scope="row" class="a-r">관람일시</th>
									<td>${viewDate}</td>
									<th scope="row">관람좌석</th>
									<td>${bookedCompAfList.seatNum}</td>
								</tr>
							</tbody>
						</table>
						<div class="bg-round">
							<table class="table">
								<colgroup>
									<col style="width: 100px;">
									<col style="width: 230px;">
									<col style="width: 100px;">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">적립예정 포인트</th>
										<td>600 P</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</li>
			</c:forEach>

		</ul>



	</div>
</div>