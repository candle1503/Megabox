<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	.movie-grade{
		
	}
</style>

</head>

<c:import url="../template/header_css.jsp"></c:import>

<body>

	<c:import url="../template/header.jsp"></c:import>

	<div id="contents" class="location-fixed">
		<!-- inner-wrap -->
		<div class="inner-wrap">
			<!-- quick-reserve -->
			<div class="quick-reserve">
				<h2 class="tit purple">
					예매완료
					<!-- 예매완료 -->
				</h2>



				<!-- reserve-finish -->
				<div class="reserve-finish">
					<!-- reserve-ininfomation-box -->
					<div class="reserve-ininfomation-box">
						<div class="movie-poster-area">
							<p>
								티켓 예매번호
								<!-- 티켓 예매번호 -->
								<span class="roboto">${ticketVO.ticketCode }</span>
							</p>
							<img
								src="/upload/movie/${file[0].fileName}"
								alt="" onerror="noImg(this)">
							<!-- <img
								src="https://img.megabox.co.kr/SharedImg/2020/06/15/pjraLryYt5zQ1HEf6axtAdkXRhfhRZTZ_316.jpg"
								alt="" onerror="noImg(this)"> -->
						</div>

						<!-- movie-infomation-area -->
						<div class="movie-infomation-area">
							<div class="movie-info-top">
								<p class="tit">
									<strong>예매가 완료되었습니다 <!-- 예매가 완료되었습니다 --> <i>!</i></strong> <span
										class="righten"> <i class="iconset ico-circle-point"></i>
										고객님의 상영익일 적립예정 포인트는 <!-- 고객님의 상영익일 적립예정 포인트는 --> <em class="mPoint">${savePoint}</em>원 입니다.
										<!-- 입니다. --></span>

								</p>
							</div>

							<div class="movie-info-middle" style="padding: 15px 0 15px 0;">
								<ul class="dot-list gray">
									<li><span>예매영화 <!-- 예매영화 --></span>
									<c:if test="${movieVO.age eq '전체관람가'}">
										<span class="movie-grade small age-all" style="width: 20px; margin-left: 105px;">${movieVO.age}</span>
									</c:if>
									<c:if test="${movieVO.age eq '12세이상관람가'}">
										<span class="movie-grade small age-12" style="width: 20px; margin-left: 105px;">${movieVO.age}</span>
									</c:if>
									<c:if test="${movieVO.age eq '15세이상관람가'}">
										<span class="movie-grade small age-15" style="width: 20px; margin-left: 105px;">${movieVO.age}</span>
									</c:if>
									<c:if test="${movieVO.age eq '청소년관람불가'}">
										<span class="movie-grade small age-19" style="width: 20px; margin-left: 105px;">${movieVO.age}</span>
									</c:if>${movieVO.name}</li>
									<li><span>관람극장/상영관 <!-- 관람극장/상영관 --></span>${theaterVO.name} /
										${theaterVO.roomName}</li>
									<li><span>관람일시 <!-- 관람일시 --></span> &nbsp;${day[0]} <em id="yoil"></em> &nbsp;${ticketVO.movieTime}</li>
									<li><span>관람인원 <!-- 관람인원 --></span> &nbsp;일반 ${ticketVO.count}명</li>
									
									<li><span>좌석번호 <!-- 좌석번호 --></span> &nbsp;${ticketVO.seatNum }</li>
									
									<li><span>전화번호 <!-- 전화번호 --></span> &nbsp;${member.phone}</li>
									<li><span>결제정보 <!-- 결제정보 --></span> <strong class="roboto" id="payment"></strong>
										원 <!-- 원 --> <br> <em></em>
										
										</li>
								</ul>
									<a href="/member/bookingMy" class="button purple large right"
						title="예매내역 페이지로 이동" style="margin-left: 550px;">예매내역 확인<!-- 예매내역 --></a>

					 
							</div>
	
							<script type="text/javascript">
							var payment = ${ticketVO.count*8000}-${usedPoint};
							$('#payment').html(payment);
							</script>


						</div>
						<!--// movie-infomation-area -->
							<div class="btn-group pt30">
					


				</div>
					</div>
					<!--// reserve-ininfomation-box -->
				</div>
				<!--// reserve-finish -->

			


				<div class="box-border v1 mt10">
					<ul class="dot-list gray">

						<li>상영안내 <!-- 상영안내 -->
							<ul class="dash-list">

								<li>쾌적한 관람 환경을 위해 상영시간 이전에 입장 부탁드립니다.</li>

								<li>지연입장에 의한 관람불편을 최소화하고자 본 영화는 10분 후 시작됩니다.</li>

								<li>상영시간 20분전까지 취소 가능하며, 캡쳐화면으로는 입장하실 수 없습니다.</li>

							</ul>
						</li>



						<li class="mt20">주차안내 <!-- 주차안내 -->
							<ul class="dash-list">

								<li>매표소에 당일 영화 티켓 인증 후, 차량 번호 할인 등록. 3시간 -&gt; 3,000원 (지하
									3층 정산소에서 결제)</li>

								<li>주차 공간이 협소하므로 가급적이면 대중교통을 이용 바랍니다. </li>

							</ul>
						</li>

					</ul>
				</div>

			</div>
			<!--// quick-reserve -->
		</div>
		<!--// inner-wrap -->
	</div>
	
	<div style="margin-bottom: 100px"></div>



	<c:import url="../template/footer.jsp"></c:import>

</body>
</html>