<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style type="text/css">

	.row > .column {
  padding: 0 8px;
}

.row:after {
  content: "";
  display: table;
  clear: both;
}

.column {
  float: left;
  width: 25%;
}

/* The Modal (background) */
.modal {
  display: none;
  position: fixed;
  z-index: 999;
  padding-top: 100px;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
   background-color: rgba( 1, 1, 1, 0.8 );
  
}

/* Modal Content */
.modal-content {
  position: relative;
  
  margin: auto;
  padding: 0;
  width: 85%;
  max-height: 800px;
  box-sizing: border-box;
}

/* The Close Button */
.close {
  color: white;
  position: absolute;
  top: 10px;
  right: 25px;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #999;
  text-decoration: none;
  cursor: pointer;
}

.mySlides {
  display: none;
  text-align: center;
}


.cursor {
  cursor: pointer;
}

/* Next & previous buttons */
.prev,
.next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -50px;
  color: white;
  font-weight: bold;
  font-size: 20px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
  -webkit-user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover,
.next:hover {
  background-color: rgba(0, 0, 0, 0.8);
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

img {
  margin-bottom: -4px;
}


.active,
.demo:hover {
  opacity: 1;
}


</style>
</head>
<body>

<div id="contentData">



<script type="text/javascript">

var holdBtn = false;

$(document).ready(function() {
	// 메인 탭
	if( $('.swiper-container').length > 0 ){
		var galleryThumbs = new Swiper('.gallery-thumbs', {
			spaceBetween: 20,
			slidesPerView: 4,
			freeMode: false,
			watchSlidesProgress: true,
		});
		var galleryTop = new Swiper('.gallery-top', {
			spaceBetween: 00,
			freeMode: false,
			effect: 'fade',
			navigation: {
				nextEl: '.swiper-button-next',
				prevEl: '.swiper-button-prev',
			},
			thumbs: {
				swiper: galleryThumbs
			}
		});
	}




	// 트레일러 섬네일 버튼
	$(".thumbsBtn").on('click', function(e) {
		console.log("movieBtn");
		//e.preventDefault();
		var obj = $(this).find('.thumbs-img-button');
		fn_stopVideo();
		var s_cn = obj.data('cn');
		$('#movieTitle').html(obj.data('title'));
		

	});

	
	


	


});


//스킬컷 생성 후 페이지 설정
function fn_checkStilPage() {
	var currentPage = $('#currentPage').val();
	var recordCountPerPage = 20;
	var pageNo = Number($('#currentPage').val());
	var pageTotalCnt = Math.ceil($('#stilCnt').text() / recordCountPerPage);

	if(pageNo >= pageTotalCnt) {
		$('.stair-slide-list .btn-more').hide();
	} else {
		$('#currentPage').val(pageNo + 1);
	}
}


//비디오를 정지한다.
function fn_stopVideo(){
	$("video").each(function(idx){
		this.pause();
	});
}


</script>


<div class="inner-wrap">


	<div class="pb100">
		<div class="movie-list-util mt40">
			<div class="movie-sorting">
				
				

				
					
				

			<!-- 	<span><button type="button" class="btn stilBtn on">전체(30)</button></span>
				<span><button type="button" class="btn stilBtn preview" data-target="tab1">예고편(17)</button></span>
				<span><button type="button" class="btn stilBtn stillcut" data-target="tab2">스틸컷(13)</button></span>-->
				<span>예고편(${videoCount })</span>
				<span>스틸컷(${image })</span>
			</div>
		</div>


		<!-- slide-title -->
		
			<!-- stillcut-slide -->
			<div class="stillcut-slide" id="tab1">
				<div class="slide-title">
					<!-- 하단 thumb-list 에있는 img 에alt 값이 span속의 글귀가 자동으로 들어가고 desc 속의 내용은 제목부분으로 자동으로 작성이됨 -->
					<h2 class="tit">
						<span id="movieTitle">${video[0].detail }</span>
					</h2>

					<!-- 2019-01-29 마크업 변경 -->
					<div class="slide-btn">
						<a href="#" title="이전 영상" class="videoBtn btn-prev swiper-button-prev swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true">
							
						</a>
						

						<a href="#" title="다음 영상" class="videoBtn btn-next swiper-button-next" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false">
							
						</a>
						
					</div>

					<!-- slide-list -->
					<div class="swiper-container gallery-top swiper-container-fade swiper-container-initialized swiper-container-horizontal">
						<div class="swiper-wrapper">
						
							<c:forEach items="${video }" var="video" varStatus="va">
								
								<div class="swiper-slide swiper-slide-active" style="width: 800px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
									<video class="videoTag" controls="" poster="${pageContext.request.contextPath}/upload/movie/${file[va.index].fileName}">
										<source src="${pageContext.request.contextPath}/upload/movie/${video.fileName}" type="video/mp4">
									</video>
								</div>
							</c:forEach>
							
						</div>
					<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
					<!--// slide-list -->



					<div class="thumbs-wrap">
						<div class="swiper-container gallery-thumbs swiper-container-initialized swiper-container-horizontal swiper-container-thumbs">
							<div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
								<c:forEach var="video" items="${video }" varStatus="va">
									<div class="thumbsBtn swiper-slide swiper-slide-thumb-active swiper-slide-active" style="width: 240px; margin-right: 20px;">
										<img class="thumbs-img-button" src="${pageContext.request.contextPath}/upload/movie/${file[va.index].fileName}" data-url="${pageContext.request.contextPath}/upload/movie/${video.fileName}" data-title="${video.detail }" data-cn="${video.detail }" alt="${video.detail }" onerror="this.src='${pageContext.request.contextPath}/upload/movie/${file[0].fileName}'">
										<div class="movie-detail">
											${video.detail }	<!-- 예고편 제목 -->
										</div>
										<i class="iconset ico-play"></i>
									</div>
								</c:forEach>
							</div>
						<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>

						<div class="slide-btn thumb-btn">
							<a href="" title="이전" class="videoBtn btn-prev swiper-button-prev swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true">
								
							</a>

							<a href="" title="다음" class="videoBtn btn-next swiper-button-next" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false">
								
							</a>
						</div>
					</div>
				</div><!--// slide-title -->

			</div><!--// stillcut-slide -->
		

		<!-- stair-slide -->
		<div class="stair-slide" id="tab2">
			<h2 class="tit small">${vo.name}에 대한 <span class="font-gblue" id="stilCnt">${image }</span>개의 스틸컷이 있어요!</h2>

			<div class="stair-slide-list" style="height: 1272px;">
			
			<c:forEach var="file" items="${file }" varStatus="vs">
			<c:if test="${vs.index eq 0}">
			<div class="thumb" style="display: block; opacity: 1; transform: translate(0px, 0px); transition: transform 0s ease 0s, opacity 0.2s ease-out 0.2s;"><a href="#" title="스틸컷 보기" class="${vs.count }">

   		<!-- 포스터 -->
			<img src="${pageContext.request.contextPath}/upload/movie/${file.fileName}" alt="" onerror="noImg(this, 'main');" style="height: 360px;">

	</a></div>
			</c:if>
			<c:if test="${vs.index eq 1}">
			<div class="thumb" style="display: block; opacity: 1; transform: translate(280px, 0px); transition: transform 0s ease 0s, opacity 0.2s ease-out 0.2s;"><a href="#" title="스틸컷 보기" class="${vs.count }">

   		<!-- 포스터 -->
			<img src="${pageContext.request.contextPath}/upload/movie/${file.fileName}" alt="" onerror="noImg(this, 'main');" style="height: 360px;">

	</a></div>
			</c:if>
			<c:if test="${vs.index eq 2}">
			<div class="thumb" style="display: block; opacity: 1; transform: translate(560px, 0px); transition: transform 0s ease 0s, opacity 0.2s ease-out 0.2s;"><a href="#" title="스틸컷 보기" class="${vs.count }">

   		<!-- 포스터 -->
			<img src="${pageContext.request.contextPath}/upload/movie/${file.fileName}" alt="" onerror="noImg(this, 'main');" style="height: 360px;">

	</a></div>
			</c:if>
			<c:if test="${vs.index eq 3}">
			<div class="thumb" style="display: block; opacity: 1; transform: translate(840px, 0px); transition: transform 0s ease 0s, opacity 0.2s ease-out 0.2s;"><a href="#" title="스틸컷 보기" class="${vs.count }">

   		<!-- 포스터 -->
			<img src="${pageContext.request.contextPath}/upload/movie/${file.fileName}" alt="" onerror="noImg(this, 'main');" style="height: 360px;">

	</a></div>
			</c:if>
			<c:if test="${vs.index eq 4}">
			<div class="thumb" style="display: block; opacity: 1; transform: translate(0px, 380px); transition: transform 0s ease 0s, opacity 0.2s ease-out 0.2s;"><a href="#" title="스틸컷 보기" class="${vs.count }">

   		<!-- 포스터 -->
			<img src="${pageContext.request.contextPath}/upload/movie/${file.fileName}" alt="" onerror="noImg(this, 'main');" style="height: 360px;">

	</a></div>
			</c:if>
			<c:if test="${vs.index eq 5}">
			<div class="thumb" style="display: block; opacity: 1; transform: translate(280px, 380px); transition: transform 0s ease 0s, opacity 0.2s ease-out 0.2s;"><a href="#" title="스틸컷 보기" class="${vs.count }">

   		<!-- 포스터 -->
			<img src="${pageContext.request.contextPath}/upload/movie/${file.fileName}" alt="" onerror="noImg(this, 'main');" style="height: 360px;">

	</a></div>
			</c:if>
			<c:if test="${vs.index eq 6}">
			<div class="thumb" style="display: block; opacity: 1; transform: translate(560px, 380px); transition: transform 0s ease 0s, opacity 0.2s ease-out 0.2s;"><a href="#" title="스틸컷 보기" class="${vs.count }">

   		<!-- 포스터 -->
			<img src="${pageContext.request.contextPath}/upload/movie/${file.fileName}" alt="" onerror="noImg(this, 'main');" style="height: 360px;">

	</a></div>
			</c:if>
			<c:if test="${vs.index eq 7}">
			<div class="thumb" style="display: block; opacity: 1; transform: translate(840px, 380px); transition: transform 0s ease 0s, opacity 0.2s ease-out 0.2s;"><a href="#" title="스틸컷 보기" class="${vs.count }">

   		<!-- 포스터 -->
			<img src="${pageContext.request.contextPath}/upload/movie/${file.fileName}" alt="" onerror="noImg(this, 'main');" style="height: 360px;">

	</a></div>
			</c:if>
			<c:if test="${vs.index eq 8}">
			<div class="thumb" style="display: block; opacity: 1; transform: translate(0px, 760px); transition: transform 0s ease 0s, opacity 0.2s ease-out 0.2s;"><a href="#" title="스틸컷 보기" class="${vs.count }">

   		<!-- 포스터 -->
			<img src="${pageContext.request.contextPath}/upload/movie/${file.fileName}" alt="" onerror="noImg(this, 'main');" style="height: 360px;">

	</a></div>
			</c:if>
			<c:if test="${vs.index eq 9}">
			<div class="thumb" style="display: block; opacity: 1; transform: translate(280px, 760px); transition: transform 0s ease 0s, opacity 0.2s ease-out 0.2s;"><a href="#" title="스틸컷 보기" class="${vs.count }">

   		<!-- 포스터 -->
			<img src="${pageContext.request.contextPath}/upload/movie/${file.fileName}" alt="" onerror="noImg(this, 'main');" style="height: 360px;">

	</a></div>
			</c:if>
			<c:if test="${vs.index eq 10}">
			<div class="thumb" style="display: block; opacity: 1; transform: translate(560px, 760px); transition: transform 0s ease 0s, opacity 0.2s ease-out 0.2s;"><a href="#" title="스틸컷 보기" class="${vs.count }">

   		<!-- 포스터 -->
			<img src="${pageContext.request.contextPath}/upload/movie/${file.fileName}" alt="" onerror="noImg(this, 'main');" style="height: 360px;">

	</a></div>
			</c:if>
			<c:if test="${vs.index eq 11}">
			<div class="thumb" style="display: block; opacity: 1; transform: translate(840px, 760px); transition: transform 0s ease 0s, opacity 0.2s ease-out 0.2s;"><a href="#" title="스틸컷 보기" class="${vs.count }">

   		<!-- 포스터 -->
			<img src="${pageContext.request.contextPath}/upload/movie/${file.fileName}" alt="" onerror="noImg(this, 'main');" style="height: 360px;">

	</a></div>
			</c:if>
			<c:if test="${vs.index eq 12}">
			<div class="thumb" style="display: block; opacity: 1; transform: translate(0px, 1140px); transition: transform 0s ease 0s, opacity 0.2s ease-out 0.2s;"><a href="#" title="스틸컷 보기" class="${vs.count }">

   		<!-- 포스터 -->
			<img src="${pageContext.request.contextPath}/upload/movie/${file.fileName}" alt="" onerror="noImg(this, 'main');" style="height: 360px;">

	</a></div>
			</c:if>
			<c:if test="${vs.index eq 13}">
			<div class="thumb" style="display: block; opacity: 1; transform: translate(280px, 1140px); transition: transform 0s ease 0s, opacity 0.2s ease-out 0.2s;"><a href="#" title="스틸컷 보기" class="${vs.count }">

   		<!-- 포스터 -->
			<img src="${pageContext.request.contextPath}/upload/movie/${file.fileName}" alt="" onerror="noImg(this, 'main');" style="height: 360px;">

	</a></div>
			</c:if>
			<c:if test="${vs.index eq 14}">
			<div class="thumb" style="display: block; opacity: 1; transform: translate(560px, 1140px); transition: transform 0s ease 0s, opacity 0.2s ease-out 0.2s;"><a href="#" title="스틸컷 보기" class="${vs.count }">

   		<!-- 포스터 -->
			<img src="${pageContext.request.contextPath}/upload/movie/${file.fileName}" alt="" onerror="noImg(this, 'main');" style="height: 360px;">

	</a></div>
			</c:if>
			<c:if test="${vs.index eq 15}">
			<div class="thumb" style="display: block; opacity: 1; transform: translate(840px, 1140px); transition: transform 0s ease 0s, opacity 0.2s ease-out 0.2s;"><a href="#" title="스틸컷 보기" class="${vs.count }">

   		<!-- 포스터 -->
			<img src="${pageContext.request.contextPath}/upload/movie/${file.fileName}" alt="" onerror="noImg(this, 'main');" style="height: 360px;">

	</a></div>
			</c:if>
				
	</c:forEach>
			</div>


<div id="myModal" class="modal">
  <span class="close cursor" onclick="closeModal()">&times;</span>
  <div class="modal-content">

<c:forEach var="file" items="${file }" varStatus="vs">
    <div class="mySlides">
      <div class="numbertext" style="font-size: 1.2em;"><span class="indexNum">${vs.count }</span> / ${image }</div>
      <img src="${pageContext.request.contextPath}/upload/movie/${file.fileName}" style="max-height: 780px;">
    </div>
    </c:forEach>
    <span class="prev" onclick="plusSlides(-1)">&#10094;</span>
    <span class="next" onclick="plusSlides(1)">&#10095;</span>



  </div>
</div>

<script>

$("#tab2 a").on("click", function(e){

	e.preventDefault();
	openModal();
	currentSlide($(this).attr("class"));
})


function openModal() {
  document.getElementById("myModal").style.display = "block";
}

function closeModal() {
  document.getElementById("myModal").style.display = "none";
}


function plusSlides(n) {
	
	slideIndex=slideIndex/1+n
	
  showSlides(slideIndex);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }

  slides[slideIndex-1].style.display = "block";

}
</script>

			
		</div>
		<!--// stair-slide -->

	</div>
	<!--// pb100 -->
</div>
</div>


<!-- 		</div> -->
        

</body>


