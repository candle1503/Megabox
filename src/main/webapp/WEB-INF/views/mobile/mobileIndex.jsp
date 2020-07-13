<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

<c:import url="../template/mobileHeader_css.jsp"></c:import>

</head>

<body class="body" style="font-family: 'Do Hyeon', sans-serif;">

<c:import url="../template/mobileHeader.jsp"></c:import>


	<section class="section-text-white position-relative">
		<div class="d-background"
			data-image-src="http://via.placeholder.com/1920x1080"
			data-parallax="scroll"></div>
		<div class="d-background bg-theme-blacked"></div>
		<div class="mt-auto container position-relative">
			<div class="top-block-head text-uppercase">
				<h2 class="display-4">
					#<span class="text-theme" style="font-family: 'Do Hyeon', sans-serif;">상영중인 영화</span>
				</h2>
			</div>
			<div class="top-block-footer">
				<div class="slick-spaced slick-carousel"
					data-slick-view="navigation responsive-4">
					<div class="slick-slides">
						<div class="slick-slide">
							<article class="poster-entity" data-role="hover-wrap">
								<div class="embed-responsive embed-responsive-poster">
									<img class="embed-responsive-item"
										src="http://via.placeholder.com/340x510" alt="" />
								</div>
								<div
									class="d-background bg-theme-lighted collapse animated faster"
									data-show-class="fadeIn show" data-hide-class="fadeOut show"></div>
								<div class="d-over bg-highlight-bottom">
									<div class="collapse animated faster entity-play"
										data-show-class="fadeIn show" data-hide-class="fadeOut show">
										<a
											class="action-icon-theme action-icon-bordered rounded-circle"
											href="https://www.youtube.com/watch?v=d96cjJhvlMA"
											data-magnific-popup="iframe"> <span class="icon-content"><i
												class="fas fa-play"></i></span>
										</a>
									</div>
									<h4 class="entity-title">
										<a class="content-link" href="movie-info-sidebar-right.html">Outsider</a>
									</h4>
									<div class="entity-category">
										<a class="content-link" href="movies-blocks.html">crime</a>, <a
											class="content-link" href="movies-blocks.html">comedy</a>
									</div>
									<div class="entity-info">
										<div class="info-lines">
											<div class="info info-short">
												<span class="text-theme info-icon"><i
													class="fas fa-star"></i></span> <span class="info-text">8,1</span>
												<span class="info-rest">/10</span>
											</div>
											<div class="info info-short">
												<span class="text-theme info-icon"><i
													class="fas fa-clock"></i></span> <span class="info-text">125</span>
												<span class="info-rest">&nbsp;min</span>
											</div>
										</div>
									</div>
								</div>
							</article>
						</div>


						<div class="slick-slide">
							<article class="poster-entity" data-role="hover-wrap">
								<div class="embed-responsive embed-responsive-poster">
									<img class="embed-responsive-item"
										src="http://via.placeholder.com/340x510" alt="" />
								</div>
								<div
									class="d-background bg-theme-lighted collapse animated faster"
									data-show-class="fadeIn show" data-hide-class="fadeOut show"></div>
								<div class="d-over bg-highlight-bottom">
									<div class="collapse animated faster entity-play"
										data-show-class="fadeIn show" data-hide-class="fadeOut show">
										<a
											class="action-icon-theme action-icon-bordered rounded-circle"
											href="https://www.youtube.com/watch?v=d96cjJhvlMA"
											data-magnific-popup="iframe"> <span class="icon-content"><i
												class="fas fa-play"></i></span>
										</a>
									</div>
									<h4 class="entity-title">
										<a class="content-link" href="movie-info-sidebar-right.html">New
											world</a>
									</h4>
									<div class="entity-category">
										<a class="content-link" href="movies-blocks.html">thriller</a>,
										<a class="content-link" href="movies-blocks.html">horror</a>
									</div>
									<div class="entity-info">
										<div class="info-lines">
											<div class="info info-short">
												<span class="text-theme info-icon"><i
													class="fas fa-star"></i></span> <span class="info-text">9,1</span>
												<span class="info-rest">/10</span>
											</div>
											<div class="info info-short">
												<span class="text-theme info-icon"><i
													class="fas fa-clock"></i></span> <span class="info-text">125</span>
												<span class="info-rest">&nbsp;min</span>
											</div>
										</div>
									</div>
								</div>
							</article>
						</div>
					</div>
					<div class="slick-arrows">
						<div class="slick-arrow-prev">
							<span class="th-dots th-arrow-left th-dots-animated"> <span></span>
								<span></span> <span></span>
							</span>
						</div>
						<div class="slick-arrow-next">
							<span class="th-dots th-arrow-right th-dots-animated"> <span></span>
								<span></span> <span></span>
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section
		class="section-solid-long section-text-white position-relative">
		<div class="d-background"
			data-image-src="http://via.placeholder.com/1920x1080"
			data-parallax="scroll"></div>
		<div class="d-background bg-gradient-black"></div>
		<div class="container position-relative">
			<div class="section-head">
				<h2 class="section-title text-uppercase">Comming Soon</h2>
			</div>
			<div class="slick-spaced slick-carousel"
				data-slick-view="navigation single">
				<div class="slick-slides">
					<div class="slick-slide">
						<article class="movie-line-entity">
							<div class="entity-preview">
								<div class="embed-responsive embed-responsive-16by9">
									<img class="embed-responsive-item"
										src="http://via.placeholder.com/1920x1080" alt="" />
								</div>
								<div class="d-over">
									<div class="entity-play">
										<a
											class="action-icon-theme action-icon-bordered rounded-circle"
											href="https://www.youtube.com/watch?v=d96cjJhvlMA"
											data-magnific-popup="iframe"> <span class="icon-content"><i
												class="fas fa-play"></i></span>
										</a>
									</div>
								</div>
							</div>
							<div class="entity-content">
								<h4 class="entity-title">
									<a class="content-link" href="movie-info-sidebar-right.html">One
										way road</a>
								</h4>
								<div class="entity-category">
									<a class="content-link" href="movies-blocks.html">sport</a>, <a
										class="content-link" href="movies-blocks.html">musical</a>
								</div>
								<div class="entity-info">
									<div class="info-lines">
										<div class="info info-short">
											<span class="text-theme info-icon"><i
												class="fas fa-calendar-alt"></i></span> <span class="info-text">18
												jul 2020</span>
										</div>
										<div class="info info-short">
											<span class="text-theme info-icon"><i
												class="fas fa-clock"></i></span> <span class="info-text">130</span>
											<span class="info-rest">&nbsp;min</span>
										</div>
									</div>
								</div>
								<p class="text-short entity-text">In luctus ac nisi vel
									vulputate. Sed blandit augue ut ex eleifend, ac posuere dolor
									sollicitudin. Mauris tempus euismod mauris id semper.
									Vestibulum ut vulputate elit, id ultricies libero. Aenean
									laoreet mi augue, at iaculis nisi aliquam eu. Quisque nec ipsum
									vehicula diam egestas porttitor eu vitae ex. Curabitur auctor
									tortor elementum leo faucibus, sit amet imperdiet ante maximus.
									Nulla viverra tortor dignissim purus placerat dapibus nec ut
									orci. Quisque efficitur nulla quis pulvinar dapibus. Phasellus
									sodales tortor sit amet sagittis condimentum. Donec ac
									ultricies ex. In odio leo, rhoncus aliquam bibendum sit amet,
									varius sit amet nisl.</p>
							</div>
						</article>
					</div>


					<div class="slick-slide">
						<article class="movie-line-entity">
							<div class="entity-preview">
								<div class="embed-responsive embed-responsive-16by9">
									<img class="embed-responsive-item"
										src="http://via.placeholder.com/1920x1080" alt="" />
								</div>
								<div class="d-over">
									<div class="entity-play">
										<a
											class="action-icon-theme action-icon-bordered rounded-circle"
											href="https://www.youtube.com/watch?v=d96cjJhvlMA"
											data-magnific-popup="iframe"> <span class="icon-content"><i
												class="fas fa-play"></i></span>
										</a>
									</div>
								</div>
							</div>
							<div class="entity-content">
								<h4 class="entity-title">
									<a class="content-link" href="movie-info-sidebar-right.html">Cloud
										10</a>
								</h4>
								<div class="entity-category">
									<a class="content-link" href="movies-blocks.html">drama</a>, <a
										class="content-link" href="movies-blocks.html">superhero</a>
								</div>
								<div class="entity-info">
									<div class="info-lines">
										<div class="info info-short">
											<span class="text-theme info-icon"><i
												class="fas fa-calendar-alt"></i></span> <span class="info-text">19
												oct 2020</span>
										</div>
										<div class="info info-short">
											<span class="text-theme info-icon"><i
												class="fas fa-clock"></i></span> <span class="info-text">110</span>
											<span class="info-rest">&nbsp;min</span>
										</div>
									</div>
								</div>
								<p class="text-short entity-text">Vivamus dolor ex, viverra
									ut facilisis et, euismod et quam. Aliquam sit amet mattis
									velit, ullamcorper venenatis magna. Aenean ac maximus magna.
									Proin pharetra venenatis tortor, ac suscipit est ultrices
									vitae. Mauris vulputate, nisl in lacinia dignissim, libero
									justo vehicula arcu, a porttitor quam erat ac dui. Suspendisse
									potenti. Maecenas sit amet interdum sem. Vestibulum sit amet
									volutpat mauris, ut gravida velit. Donec ultricies, eros ut
									finibus volutpat, enim ligula tempus enim, non bibendum libero
									tellus at velit. Aenean placerat egestas ullamcorper.</p>
							</div>
						</article>
					</div>
				</div>
				<div class="slick-arrows">
					<div class="slick-arrow-prev">
						<span class="th-dots th-arrow-left th-dots-animated"> <span></span>
							<span></span> <span></span>
						</span>
					</div>
					<div class="slick-arrow-next">
						<span class="th-dots th-arrow-right th-dots-animated"> <span></span>
							<span></span> <span></span>
						</span>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="section-long">
		<div class="container">
			<div class="section-head">
				<h2 class="section-title text-uppercase" style="font-family: 'Do Hyeon', sans-serif;">공지사항</h2>
			</div>
			<div class="grid row">


				<div class="col-md-6">
					<article class="article-tape-entity">

						<div class="entity-content">
							<h4 class="entity-title">
								<a class="content-link" href="article-sidebar-right.html">Creative
									life</a>
							</h4>
							<div class="entity-category">
								<a class="content-link" href="news-blocks-sidebar-right.html">comedy</a>,
								<a class="content-link" href="news-blocks-sidebar-right.html">detective</a>,
								<a class="content-link" href="news-blocks-sidebar-right.html">sci-fi</a>
							</div>
							<p class="text-short entity-text">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Sed consectetur ultrices justo a
								pellentesque. Praesent venenatis dolor nec tempus lacinia. Donec
								ac condimentum dolor. Nullam sit amet nisl hendrerit, pharetra
								nulla convallis, malesuada diam. Donec ornare nisl eu lectus
								rhoncus, at malesuada metus rutrum. Aliquam a nisl vulputate,
								sodales ipsum aliquam, tempus purus. Suspendisse convallis,
								lectus nec vehicula sollicitudin, lorem sapien rhoncus dolor,
								vel lacinia urna velit ullamcorper nisi. Phasellus pellentesque,
								magna nec gravida feugiat, est magna suscipit ligula, vel
								porttitor nunc enim at nibh. Sed varius sit amet leo vitae
								consequat.</p>

						</div>
					</article>
				</div>

			</div>
			<div class="section-bottom">
				<a class="btn btn-theme" href="${pageContext.request.contextPath}/notice/noticeList" style="font-family: 'Do Hyeon', sans-serif;">공지사항
					더보기</a>
			</div>
		</div>
	</section>

	<a class="scroll-top disabled" href="#"><i class="fas fa-angle-up"
		aria-hidden="true"></i></a>


	<c:import url="../template/mobileFooter.jsp"></c:import>


	<!-- jQuery library -->
	<script
		src="${pageContext.request.contextPath}/resources/static/mobile/js/jquery-3.3.1.js"></script>
	<!-- Bootstrap -->
	<script
		src="${pageContext.request.contextPath}/resources/static/mobile/bootstrap/js/bootstrap.js"></script>
	<!-- Paralax.js -->
	<script
		src="${pageContext.request.contextPath}/resources/static/mobile/parallax.js/parallax.js"></script>
	<!-- Waypoints -->
	<script
		src="${pageContext.request.contextPath}/resources/static/mobile/waypoints/jquery.waypoints.min.js"></script>
	<!-- Slick carousel -->
	<script
		src="${pageContext.request.contextPath}/resources/static/mobile/slick/slick.min.js"></script>
	<!-- Magnific Popup -->
	<script
		src="${pageContext.request.contextPath}/resources/static/mobile/magnific-popup/jquery.magnific-popup.min.js"></script>
	<!-- Inits product scripts -->
	<script
		src="${pageContext.request.contextPath}/resources/static/mobile/js/script.js"></script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAJ4Qy67ZAILavdLyYV2ZwlShd0VAqzRXA&callback=initMap"></script>
	<script async defer
		src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js"></script>
</body>


</html>