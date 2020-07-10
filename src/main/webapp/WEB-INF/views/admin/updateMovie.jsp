<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="ko">
<head>

<title>나의메가박스 | 라이프씨어터, 메가박스</title>

<link rel="shortcut icon" href="/resources/static/icon/favicon.ico">
<link rel="stylesheet" href="/resources/static/css/megabox.min.css" media="all">
<link rel="stylesheet" href="/resources/static/css/myPage.css" media="all">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<style type="text/css">

	#content {
		float: right;
    	width: calc(100% - 260px);
		padding: 40px 0 0 0;
	}
	
	.box-file-input label{
    display:inline-block;
    background:#23a3a7;
    color:#fff;
    padding:0px 15px;
    line-height:35px;
    cursor:pointer;
}

.box-file-input label:after{
    content:"파일등록";
}

.box-file-input .file-input{
    display:none;
}

.box-file-input .filename{
    display:inline-block;
    padding-left:10px;
}

.cbox {
	margin-left: 15px;
}

</style>

</head>

<body>


	
		<c:import url="../template/header.jsp"></c:import>
	



		<div class="container has-lnb">
			<div class="page-util">
				<div class="inner-wrap" id="myLoaction">
					<div class="location">
						<span>Home</span> <a href="./getMyPage" title="나의 메가박스 페이지로 이동">나의
							메가박스</a> <a href="#" title="회원정보 페이지로 이동">회원정보</a> <a class="no-link">개인정보
							수정</a>
					</div>
				</div>
			</div>

			<div class="inner-wrap">

				<c:import url="../template/adminSidebar.jsp"></c:import>

				<div id="content" class="">
					<form:form modelAttribute="movieVO" action="./movieUpdate"
						method="post" enctype="multipart/form-data">
						<h2 class="tit">영화 추가</h2>

						<div class="box-radius" style="margin-bottom: 0px;">
							<div class="box-top" style="padding-left: 10px">
								<strong>영화 수정</strong>
							</div>
							<form:textarea path="name" class="box-bot" rows="1" cols="93"
								style="resize: none;" placeholder="영화 이름을 입력하세요." value="${movieVO.name }"/>
							<form:errors path="name"></form:errors>
							<input type="text" name="movieNum" value="${movieVO.movieNum }" hidden="true">
							<br>
							<div class="box-top" style="padding-left: 10px">
								<strong>장르</strong>
							</div>
							<form:checkbox path="genreTest" value="드라마" label="드라마 " class="cbox"/>
							<form:checkbox path="genreTest" value="애니메이션" label="애니메이션 " class="cbox"/>
							<form:checkbox path="genreTest" value="스릴러" label="스릴러 " class="cbox"/>
							<form:checkbox path="genreTest" value="어드벤처" label="어드벤처 " class="cbox"/>
							<form:checkbox path="genreTest" value="액션" label="액션 " class="cbox"/>
							<form:checkbox path="genreTest" value="사극" label="사극 " class="cbox"/>
							<form:checkbox path="genreTest" value="범죄" label="범죄 " class="cbox"/>
							<form:checkbox path="genreTest" value="코미디" label="코미디 " class="cbox"/>
							<form:checkbox path="genreTest" value="뮤지컬" label="뮤지컬 " class="cbox"/>
							<form:checkbox path="genreTest" value="SF" label="SF " class="cbox"/>
							<form:checkbox path="genreTest" value="미스터리" label="미스터리 " class="cbox"/>
							<form:checkbox path="genreTest" value="로맨스" label="로맨스 " class="cbox"/>
							<form:checkbox path="genreTest" value="공포" label="공포 " class="cbox"/>
							<form:checkbox path="genreTest" value="판타지" label="판타지 " class="cbox"/>
							
							<br>
							
							<form:errors path="genreTest"></form:errors>
							<div class="box-top" style="padding-left: 10px">
								<strong>배우</strong>
							</div>
							<input type="button" value="배우 추가" class="button" id="addCha" />
							<div id="cha" style="padding: 10px 45px 30px 30px;">
								<input type="text" name="characters" placeholder="배우 이름을 입력하세요." style="height: 45px; margin-left: 15px;" required="required" value="${character[0] }">
								<c:forEach items="${character }" var="cha" begin="1">
									<span><input type="text" name="characters" placeholder="배우 이름을 입력하세요." style="height: 45px; margin-left: 15px;" value="${cha}"><span style="cursor: pointer;" class="del"> ×</span></span>
								</c:forEach>
								
							</div>
							
							<div class="box-top" style="padding-left: 10px">
								<strong>감독</strong>
							</div>
							<form:textarea path="director" class="box-bot" rows="1" cols="93"
								style="resize: none;" placeholder="감독 이름을 입력하세요." value="${movieVO.director }"/>
							<form:errors path="director"></form:errors>
							<div class="box-top" style="padding-left: 10px">
								<strong>영화 소개 줄거리</strong>
							</div>
							<div style="width:100%; height:200px;">
							<form:textarea path="contents" class="box-bot" rows="9" cols="93"
								style="resize: none; padding: 30px 48px 30px 30px; width:100%;" placeholder="영화 소개를 해주세요."/>
							<form:errors path="contents"></form:errors>
							</div>
							<div class="box-top" style="padding-left: 10px">
								<strong>나이 제한</strong>
							</div>
							
							<form:select path="age" class="btn dropdown-toggle btn-default bs-placeholder" style="width: 840px; margin-bottom:15px; margin-top:15px;" >
							 	<option class="opt" value="" selected="selected">나이 제한을 설정</option>
								<option class="opt" value="전체관람가">ALL</option>
								<option class="opt" value="12세이상관람가">12세이용가</option>
								<option class="opt" value="15세이상관람가">15세이용가</option>
								<option class="opt" value="청소년관람불가">청소년관람불가</option>							
							</form:select>
							<form:errors path="age"></form:errors>
							
							<div class="box-top" style="padding-left: 10px">
								<strong>개봉일</strong> <strong style="float:right;">러닝 타임</strong>
							</div>
							<form:input path="openDay" type="Date" required="true" style="width:70%; height: 50px;" value="${movieVO.openDay }"/>
							
							<span style="float:right; line-height: 50px; font-size: 1.2em; text-indent: 1.1em;"> <b>분</b></span><form:input path="playTime" type="number" min="1" max="300" style="width:60px; height:50px; float:right; text-align:center;" value="${movieVO.playTime }" />
							<div class="box-top" style="padding-left: 10px">
								<strong>포스터 </strong>
								<input type="text" name="posterNum" id="posterNum" hidden="true">
							</div>
							<div id="postImg" title="${file[0].fileNum }">
							<img alt="" src="${pageContext.request.contextPath}/upload/movie/${file[0].fileName}" class="thumb_img" style="width:240px;">
							</div>
							<div class="box-file-input"><label>
							<input name="posterImg" type="file" accept="image/*" id="poster" class="file-input"></label>
							<span class="filename">파일을 선택해주세요.</span>
							</div>
							
							
							<div class="box-top" style="padding-left: 10px">
								<strong>무비 스틸컷(이미지 파일)</strong>
							</div>
							<div class="imgCut">
							<c:forEach items="${file }" var="file" begin="1">
							
							<div style="box-sizing: content-box; display: inline-block; margin-left: 25px; margin-top: 10px; margin-bottom: 10px;">

								<img src="${pageContext.request.contextPath}/upload/movie/${file.fileName}" alt="" onerror="noImg(this, 'main');" style="height: 240px; max-width: 360px;">
								
								<img src="/resources/static/images/xbutton.jpg" style="width: 20px; float:right; cursor: pointer;" class="del" title="${file.fileNum }">
								
							</div>

							</c:forEach>
							</div>
							<input type="button" value="파일 추가" class="button" id="add" />
							<div id="f">
								
							</div>
							<div class="box-top" style="padding-left: 10px">
								<strong>관련 영상(예고편)  ※mp4파일만 가능※</strong>
							</div>
							<div class="imgCut">
							<c:forEach items="${video }" var="video">
							
							<div style="box-sizing: content-box; display: inline-block; margin-left: 25px; margin-top: 10px; margin-bottom: 10px;">
								<video src="${pageContext.request.contextPath}/upload/movie/${video.fileName}" style="width: 320px; max-height: 180px;"></video>
								<img src="/resources/static/images/xbutton.jpg" style="width: 20px; float:right; cursor: pointer;" class="del" title="${video.fileNum }">
								<div> ${video.detail }</div>
							</div>

							</c:forEach>
							</div>
							<input type="button" value="영상 추가" class="button" id="addVideo" />
							<div id="vid">
								
							</div>
						</div>


						<div class="btn-group mt40">
							<a href="./movieList"> <input type="button"
								class="button large" value="취소">
							</a>
							<button type="submit" class="button purple large">등록</button>
						</div>
					</form:form>
				</div>
		
			</div>
		</div>
		<script type="text/javascript">
			var imgNum = 0;
			var underAge = '${movieVO.age}'
			var genre = [
				<c:forEach items="${genre }" var="genre">
				'${genre}',
				</c:forEach>
				];

			var elImage = document.querySelector("#poster");
			elImage.addEventListener("change", function(evt){
				var image = evt.target.files[0];
				var posterNum=$("#postImg").attr("title");
				var thumb = document.querySelector(".thumb_img");
	 			thumb.src = window.URL.createObjectURL(image);
	 			$("#posterNum").val(posterNum)
	 			
	 			
			})

			
			$('.cbox').each(function(){
				for(i=0; i<genre.length; i++){
					if($(this).val()==genre[i]){
						$(this).prop("checked", true);
					}
						
				}
			})
			
			$('.opt').each(function(){
				if(underAge==$(this).val()){
					$(this).prop("selected", true)
				}	

			})
			
				
				
			$("#add").click(function(){
			if(imgNum==15){
				alert("이미지는 15개까지");
			}else{
			 $("#f").append('<div class="box-file-input"><label><input type="file" name="files" accept="image/*" class="file-input"></label><span class="filename">파일을 선택해주세요. </span><span style="cursor: pointer;" class="del"> ×</span></div>');
				imgNum+=1;
			}
			});	

			$("#addVideo").click(function(){
				$("#vid").append('<div class="box-file-input"><label><input type="file" name="files" accept="video/mp4" class="file-input"></label><span class="filename">파일을 선택해주세요. </span><span style="cursor: pointer;" class="del"> ×</span><input type="text" name="details" placeholder="영상 제목" style="margin-left:30px;" required="required"></div>');
			
			});	

			$("#addCha").click(function(){
				$("#cha").append('<span><input type="text" name="characters" placeholder="배우 이름을 입력하세요." style="height: 45px; margin-left: 15px;"><span style="cursor: pointer;" class="del"> ×</span></span>');
			
			});	

			$('.imgCut').on('click', '.del', function(){
				var fileNum=$(this).attr("title");
				var flag = confirm("정말 삭제하시겠습니까?");
				if(flag==true){
				$("#cha").append('<input type="text" name="delImg" style="height: 45px; margin-left: 15px;" value="'+fileNum+'" hidden="true">');
				$(this).parent().remove();
				}
				

				})
			
			
			$('#cha').on('click', '.del', function(){
				
				$(this).parent().remove();

				})
			
			$('#f').on('click', '.del', function(){
				
				$(this).parent().remove();

				})
			$('#vid').on('click', '.del', function(){
				
				$(this).parent().remove();

				})
				
			 $(document).on("change", ".file-input", function(){
     
		        var filename = $(this).val();
		      
		
		        if(filename == ""){   
		            filename = "파일을 선택해주세요.";
		        }
				
				$(this).parent().next('.filename').text(filename);
		        
		        
		
		    })
			
		
		</script>
		
		
		<footer id="footer">
			<!-- footer-top -->
			<div class="footer-top">
				<div class="inner-wrap">
					<ul class="fnb">
						<li><a href="/megaboxinfo" title="회사소개 페이지로 이동">회사소개</a></li>
						<li><a href="/recruit" title="인재채용 페이지로 이동">인재채용</a></li>
						<li><a href="/socialcontribution" title="사회공헌 페이지로 이동">사회공헌</a></li>
						<li><a href="/partner" title="제휴/광고/부대사업문의 페이지로 이동">제휴/광고/부대사업문의</a></li>
						<li><a href="/support/terms" title="이용약관 페이지로 이동">이용약관</a></li>
						<li class="privacy"><a href="/support/privacy"
							title="개인정보처리방침 페이지로 이동">개인정보처리방침</a></li>
						<li><a href="https://jebo.joonganggroup.com/main.do"
							target="_blank" title="윤리경영 페이지로 이동">윤리경영</a></li>
					</ul>

					<a href="#layer_looking_theater" class="btn-looking-theater"
						title="극장찾기"><i class="iconset ico-footer-search"></i> 극장찾기</a>
				</div>
			</div>
			<!--// footer-top -->

			<!-- footer-bottom -->
			<div class="footer-bottom">
				<div class="inner-wrap">
					<div class="ci">MEGABOX : Life Theater</div>

					<div class="footer-info">
						<div>
							<address>서울특별시 성동구 왕십리로 50, 6층(성수동 1가, 메가박스스퀘어)</address>
							<p>ARS 1544-0070</p>
						</div>
						<p>대표자명 김진선</p>
						<p>· 개인정보보호책임자 조상연</p>
						<p>· 사업자등록번호 211-86-59478</p>
						<p>· 통신판매업신고번호 제 833호</p>
						<p class="copy">COPYRIGHT © MegaboxJoongAng, Inc. All rights
							reserved</p>
					</div>

					<div class="footer-sns">
						<a href="https://twitter.com/megaboxon" target="_blank"
							title="MEGABOX 트위터 페이지로 이동"><i class="iconset ico-twitter">트위터</i></a>
						<a href="https://www.facebook.com/megaboxon" target="_blank"
							title="MEGABOX 페이스북 페이지로 이동"><i class="iconset ico-facebook">페이스북</i></a>
						<a href="http://instagram.com/megaboxon" target="_blank"
							title="MEGABOX 인스타그램 페이지로 이동"><i
							class="iconset ico-instagram">인스타그램</i></a> <a
							href="https://play.google.com/store/apps/details?id=com.megabox.mop"
							target="_blank" title="MEGABOX 구글플레이 페이지로 이동"><i
							class="iconset ico-googleplay">구글플레이</i></a> <a
							href="https://itunes.apple.com/kr/app/megabox/id894443858?l=ko&amp;ls=1&amp;mt=8"
							target="_blank" title="MEGABOX 앱스토어 페이지로 이동"><i
							class="iconset ico-appstore">앱스토어</i></a>
					</div>
				</div>
			</div>
			<!--// footer-bottom -->
			<div id="layer_looking_theater" class="layer-looking-theater"></div>
		</footer>
		<!--// footer -->

		<!-- 모바일 때만 출력 -->
		<div class="go-mobile" style="display: none;">
			<a href="#" data-url="https://m.megabox.co.kr">모바일웹으로 보기 <i
				class="iconset ico-go-mobile"></i></a>
		</div>
	

	<div class="normalStyle"
		style="display: none; position: fixed; top: 0; left: 0; background: #000; opacity: 0.7; text-indent: -9999px; width: 100%; height: 100%; z-index: 100;">닫기</div>
	<div class="alertStyle"
		style="display: none; position: fixed; top: 0px; left: 0px; background: #000; opacity: 0.7; width: 100%; height: 100%; z-index: 5005;"></div>

</body>
</html>