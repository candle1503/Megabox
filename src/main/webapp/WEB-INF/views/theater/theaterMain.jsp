<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:import url="../template/header_css.jsp"></c:import>

</head>
<body>

	<c:import url="../template/header.jsp"></c:import>

	<div id="contents" class="no-padding location-fixed">


		<!-- theater-main -->
		<div class="theater-main mb40">
			<div class="inner-wrap">
				<div class="left">
					<p class="slogun">쌍용 씨네시티 극장관</p>
					<p class="txt">
						쌍용시네시티의<br>새로운 지점을<br>소개합니다.
					</p>
				</div>

				<!-- theater-swiper -->
				<div
					class="theater-swiper swiper-container-initialized swiper-container-horizontal">
					<div class="swiper-wrapper"
						style="transition-duration: 0ms; transform: translate3d(-1710px, 0px, 0px);">

						<div class="cell swiper-slide swiper-slide-duplicate" tabindex="0"
							data-swiper-slide-index="0"
							style="width: 245px; margin-right: 40px;">
							<a href="#" class="eventBtn" data-no="8448" data-netfunnel=""
								title="힐링 프리미엄 극장, 창원내서 6월 24일(수) OPEN! 상세보기">



								<div class="img new"></div>

								<div class="cont new">
									<p class="label">신규오픈</p>
									<p class="local">${newBranch[0].localCode}</p>
									<p class="name">${newBranch[0].name}</p>
								</div>
							</a>
						</div>

						<div class="cell swiper-slide swiper-slide-duplicate" tabindex="0"
							data-swiper-slide-index="1"
							style="width: 245px; margin-right: 40px;">
							<a href="#" class="eventBtn" data-no="8447" data-netfunnel=""
								title="세종에서 제일 편안한 극장, 세종청사 6월 24일(수) OPEN! 상세보기">


								<div class="img new"></div>

								<div class="cont new">
									<p class="label">신규오픈</p>
									<p class="local">${newBranch[1].localCode}</p>
									<p class="name">${newBranch[1].name}</p>
								</div>
							</a>
						</div>
						<div
							class="cell swiper-slide swiper-slide-duplicate swiper-slide-duplicate-prev"
							tabindex="0" data-swiper-slide-index="2"
							style="width: 245px; margin-right: 40px;">
							<a href="#" class="eventBtn" data-no="8446" data-netfunnel=""
								title="품격있는 당신을 위한 명품극장, 대전현대아울렛 6월 24일(수) OPEN! 상세보기">


								<div class="img new"></div>

								<div class="cont new">
									<p class="label">신규오픈</p>
									<p class="local">${newBranch[2].localCode}</p>
									<p class="name">${newBranch[2].name}</p>
								</div>
							</a>
						</div>

						<div class="cell swiper-slide swiper-slide-duplicate-active"
							tabindex="0" data-swiper-slide-index="0"
							style="width: 245px; margin-right: 40px;">
							<a href="#" class="eventBtn" data-no="8448" data-netfunnel=""
								title="힐링 프리미엄 극장, 창원내서 6월 24일(수) OPEN! 상세보기">


								<div class="img new"></div>

								<div class="cont new">
									<p class="label">신규오픈</p>
									<p class="local">${newBranch[0].localCode}</p>
									<p class="name">${newBranch[0].name}</p>
								</div>
							</a>
						</div>

						<div class="cell swiper-slide swiper-slide-duplicate-next"
							tabindex="0" data-swiper-slide-index="1"
							style="width: 245px; margin-right: 40px;">
							<a href="#" class="eventBtn" data-no="8447" data-netfunnel=""
								title="세종에서 제일 편안한 극장, 세종청사 6월 24일(수) OPEN! 상세보기">



								<div class="img new"></div>

								<div class="cont new">
									<p class="label">신규오픈</p>
									<p class="local">${newBranch[1].localCode}</p>
									<p class="name">${newBranch[1].name}</p>
								</div>
							</a>
						</div>

						<div class="cell swiper-slide swiper-slide-prev" tabindex="0"
							data-swiper-slide-index="2"
							style="width: 245px; margin-right: 40px;">
							<a href="#" class="eventBtn" data-no="8446" data-netfunnel=""
								title="품격있는 당신을 위한 명품극장, 대전현대아울렛 6월 24일(수) OPEN! 상세보기">



								<div class="img new"></div>

								<div class="cont new">
									<p class="label">신규오픈</p>
									<p class="local">${newBranch[2].localCode}</p>
									<p class="name">${newBranch[2].name}</p>
								</div>
							</a>
						</div>

						<div
							class="cell swiper-slide swiper-slide-duplicate swiper-slide-active"
							tabindex="0" data-swiper-slide-index="0"
							style="width: 245px; margin-right: 40px;">
							<a href="#" class="eventBtn" data-no="8448" data-netfunnel=""
								title="힐링 프리미엄 극장, 창원내서 6월 24일(수) OPEN! 상세보기">




								<div class="img new"></div>

								<div class="cont new">
									<p class="label">신규오픈</p>
									<p class="local">${newBranch[0].localCode}</p>
									<p class="name">${newBranch[0].name}</p>
								</div>
							</a>
						</div>
						<div
							class="cell swiper-slide swiper-slide-duplicate swiper-slide-next"
							tabindex="0" data-swiper-slide-index="1"
							style="width: 245px; margin-right: 40px;">
							<a href="#" class="eventBtn" data-no="8447" data-netfunnel=""
								title="세종에서 제일 편안한 극장, 세종청사 6월 24일(수) OPEN! 상세보기">



								<div class="img new"></div>

								<div class="cont new">
									<p class="label">신규오픈</p>
									<p class="local">${newBranch[1].localCode}</p>
									<p class="name">${newBranch[1].name}</p>
								</div>
							</a>
						</div>
						<div
							class="cell swiper-slide swiper-slide-duplicate swiper-slide-duplicate-prev"
							tabindex="0" data-swiper-slide-index="2"
							style="width: 245px; margin-right: 40px;">
							<a href="#" class="eventBtn" data-no="8446" data-netfunnel=""
								title="품격있는 당신을 위한 명품극장, 대전현대아울렛 6월 24일(수) OPEN! 상세보기">



								<div class="img new"></div>

								<div class="cont new">
									<p class="label">신규오픈</p>
									<p class="local">${newBranch[2].localCode}</p>
									<p class="name">${newBranch[2].name}</p>
								</div>
							</a>
						</div>
					</div>
					<span class="swiper-notification" aria-live="assertive"
						aria-atomic="true"></span>
				</div>
			</div>
		</div>

		<!--// theater-main -->

		<div class="inner-wrap">


			<h2 class="tit new">전체극장</h2>

			<div class="theater-box" style="height: 292px;">

				<div class="theater-place">
					<ul class="tabs">

						<li class="tab-link on">
							<button type="button" class="sel-city">서울</button>

							<div class="theater-list">
								<ul>

									<c:forEach items="${arSeoul}" var="vo">
										<li data-brch-no="${vo.theaterNum}"><a
											href="./theaterBranch?theaterNum=${vo.theaterNum}" title="">${vo.name}</a></li>
									</c:forEach>
								</ul>
							</div>
						</li>

						<li class="tab-link">
							<button type="button" class="sel-city">경기</button>

							<div class="theater-list">
								<ul>

									<c:forEach items="${arGyeonggi}" var="vo">
										<li data-brch-no="${vo.theaterNum}"><a
											href="./theater/theaterBranch?theaterNum=${vo.theaterNum}"
											title="">${vo.name}</a></li>
									</c:forEach>

								</ul>
							</div>
						</li>

						<li class="tab-link">
							<button type="button" class="sel-city">인천</button>

							<div class="theater-list">
								<ul>
									<c:forEach items="${arIncheon}" var="vo">
										<li data-brch-no="${vo.theaterNum}"><a
											href="../theater/theaterBranch?theaterNum=${vo.theaterNum}"
											title="">${vo.name}</a></li>
									</c:forEach>

								</ul>
							</div>
						</li>

						<li class="tab-link">
							<button type="button" class="sel-city">대전/충청/세종</button>

							<div class="theater-list">
								<ul>

									<c:forEach items="${arChungcheong}" var="vo">
										<li data-brch-no="${vo.theaterNum}"><a
											href="../theater/theaterBranch?theaterNum=${vo.theaterNum}"
											title="">${vo.name}</a></li>
									</c:forEach>
								</ul>
							</div>
						</li>

						<li class="tab-link">
							<button type="button" class="sel-city">부산/대구/경상</button>

							<div class="theater-list">
								<ul>

									<c:forEach items="${arGyeongsang}" var="vo">
										<li data-brch-no="${vo.theaterNum}"><a
											href="../theater/theaterBranch?theaterNum=${vo.theaterNum}"
											title="">${vo.name}</a></li>
									</c:forEach>

								</ul>
							</div>
						</li>

						<li class="tab-link">
							<button type="button" class="sel-city">광주/전라</button>

							<div class="theater-list">
								<ul>

									<c:forEach items="${arJeolla}" var="vo">
										<li data-brch-no="${vo.theaterNum}"><a
											href="${pageContext.request.contextPath}/theater/theaterBranch?theaterNum=${vo.theaterNum}"
											title="">${vo.name}</a></li>
									</c:forEach>

								</ul>
							</div>
						</li>

						<li class="tab-link">
							<button type="button" class="sel-city">강원</button>

							<div class="theater-list">
								<ul>

									<c:forEach items="${arGangwon}" var="vo">
										<li data-brch-no="${vo.theaterNum}"><a
											href="../theater/theaterBranch?theaterNum=${vo.theaterNum}"
											title="">${vo.name}</a></li>
									</c:forEach>

								</ul>
							</div>
						</li>

						<li class="tab-link">
							<button type="button" class="sel-city">제주</button>

							<div class="theater-list">
								<ul>

									<c:forEach items="${arJeju}" var="vo">
										<li data-brch-no="${vo.theaterNum}"><a
											href="../theater/theaterBranch?theaterNum=${vo.theaterNum}"
											title="">${vo.name}</a></li>
									</c:forEach>

								</ul>
							</div>
						</li>

					</ul>
				</div>

				<script type="text/javascript">
					$('ul.tabs li').click(function() {
						$('ul.tabs li').removeClass('on');
						$(this).addClass('on');

					})
				</script>

				<!-- end theater list -->


				<div class="user-theater">



					<!-- 로그인 전 -->
					<div>
						<i class="iconset ico-favo-theater"></i> 나의 선호영화관 정보 <a href="${pageContext.request.contextPath}/member/memberLogin"
							class="button small ml10" id="moveLogin" title="로그인하기">로그인하기</a>
					</div>


				</div>
			</div>


			<div class="tit-util mt70 mb15">
				<h3 class="tit">극장 이벤트</h3>
			</div>

			<div class="event-box">
				<ul>

					<li><a href="#" class="eventBtn" data-no="8446"
						data-netfunnel="N"
						title="품격있는 당신을 위한 명품극장, 대전현대아울렛 6월 24일(수) OPEN! 상세보기"> <img
							src="https://img.megabox.co.kr/SharedImg/event/2020/06/17/ZGI5MuQpeXbugI8UYq3ypySZtWfFRPYm.jpg"
							alt="품격있는 당신을 위한 명품극장, 대전현대아울렛 6월 24일(수) OPEN!"
							onerror="noImg(this)">
					</a></li>

					<li><a href="#" class="eventBtn" data-no="8448"
						data-netfunnel="N" title="힐링 프리미엄 극장, 창원내서 6월 24일(수) OPEN! 상세보기">
							<img
							src="https://img.megabox.co.kr/SharedImg/event/2020/06/17/kH8BaiZ7alhx0O9BsrXkgw8iQy1wzAjw.jpg"
							alt="힐링 프리미엄 극장, 창원내서 6월 24일(수) OPEN!" onerror="noImg(this)">
					</a></li>

				</ul>
			</div>


			<div class="tit-util mt70 mb15">
				<h3 class="tit">극장 공지사항</h3>
				<a href="${pageContext.request.contextPath}/notice/noticeList"
					class="more" title="극장 공지사항 더보기">더보기 <i
					class="iconset ico-arr-right-gray"></i>
				</a>
			</div>

			<div class="table-wrap">
				<table class="board-list">
					<caption>번호, 제목, 지역, 등록일이 들어간 극장 공지사항 목록</caption>
					<colgroup>
						<col style="width: 150px;">
						<col>
						<col style="width: 150px;">
						<col style="width: 120px;">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">제목</th>
							<th scope="col">구분</th>
							<th scope="col">등록일</th>
						</tr>
					</thead>
					<tbody>


						<c:forEach items="${notice}" var="vo" begin="0" end="4">
							<tr>
								<td>${vo.num}</td>
								<th scope="row"><a
									href="${pageContext.request.contextPath}/notice/noticeSelect?num=${vo.num}"
									title="">${vo.title}</a></th>
								<td>${vo.separate}</td>
								<td>${vo.regDate}</td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
			</div>

		</div>
	</div>

	<div style="margin-top: 70px; margin-bottom: 70px"></div>

	<c:import url="../template/footer.jsp"></c:import>

</body>
</html>