<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div class="movie-idv-story oneContent back">
 	<br>
 	<h2 class="tit small">${vo.name}에 대한 <span class="font-gblue">${count }</span>개의 이야기가 있어요!</h2><br>
        <ul>
              <!-- 로그인이 안되있을시 -->
                    <li class="type03">
                        <div class="story-area">
                            <!-- 프로필영역 -->
                            <div class="user-prof">
                                <div class="prof-img"><img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-mega-profile.png" alt="MEGABOX"></div>
                                <p class="user-id">쌍용씨네마</p>
                            </div>
                            <!-- // 프로필영역 -->

                            <!-- 내용 영역 -->
                            <div class="story-box">
                                <div class="story-wrap">
                                    <div class="story-cont">
                                        <span class="font-gblue">${vo.name }</span> 재미있게 보셨나요? 영화의 어떤 점이 좋았는지 이야기해주세요.
                                    </div>

                                    <div class="story-write">
                                        <a href="#tooltip-layer01" title="관람평쓰기" class="tooltip-click oneWrtNonMbBtn"><i class="iconset ico-story-write"></i> 관람평쓰기</a>
                                        <div id="tooltip-layer01" class="tooltip-cont" style="width: 225px; height: 80px;">
                                            <div class="wrap loginTagClick">
                                                로그인이 필요한 서비스 입니다.<br>
                                                <a href="javaScript:fn_viewLoginPopup('default','pc');" class="font-green" title="로그인 바로가기">로그인 바로가기 <i class="iconset ico-arr-right-green"></i></a>
                                                <button type="button" class="btn-close-tooltip">툴팁 닫기</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- // 내용 영역 -->
                        </div>
                    </li>
        <c:choose>
							<c:when test="${not empty review}">
							<c:forEach items="${review}" var="vo">
								  <li class="type01 oneContentTag">    <div class="story-area">        <div class="user-prof">            <div class="prof-img"><img src="/static/pc/images/mypage/bg-photo.png" alt="프로필 사진" title="프로필 사진" onerror="noImg(this, 'human')"></div>            
								  <p class="user-id">${vo.writer}</p>        </div>        <div class="story-box">            <div class="story-wrap review"><div class="tit">관람평</div>                <div class="story-cont">                    <div class="story-point">                        
								  <span>${vo.point }</span>                    </div>                    <div class="story-recommend">
								  <em>${vo.likePoint }</em>                    </div>                    
								  <div class="story-txt">${vo.contents } </div>                    <div class="story-like">                        <button type="button" class="oneLikeBtn" title="댓글 추천" data-no="648604" data-is="N"><i class="iconset ico-like-gray"></i> <span>0</span></button>                    </div>                    <div class="story-util">                        <div class="post-funtion">                            <div class="wrap">                                <button type="button" class="btn-alert">옵션보기</button>                                <div class="balloon-space user">                                    <div class="balloon-cont"><div class="user">    <p class="reset a-c">스포일러 및 욕설/비방하는<br>내용이 있습니까?</p>    <button type="button" class="maskOne" data-no="648604">댓글 신고 <i class="iconset ico-arr-right-green"></i></button></div>                                            <div class="btn-close"><a href="#" title="닫기"><img src="/static/pc/images/common/btn/btn-balloon-close.png" alt="닫기"></a></div>                                        </div>                                    </div>                                </div>                            </div>                        </div>                    </div>                </div>            </div>        </div>        <div class="story-date">            <div class="review on">                
								  <span>${vo.regDate }</span>            </div>        </div></li>
      
							</c:forEach>
							</c:when>
							<c:otherwise>
								 
								<!-- 한줄평 없을 때 -->
            <h2 class="tit small mt70">아직 남겨진 한줄평이 없어요.</h2>
            
	

    <div class="movie-idv-story oneContent">


    
        <ul>

                    <li class="type03">
                        <div class="story-area">
                            <!-- 프로필영역 -->
                            <div class="user-prof">
                                <div class="prof-img"><img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-mega-profile.png" alt="MEGABOX"></div>
                                <p class="user-id">MEGABOX</p>
                            </div>
                            <!-- // 프로필영역 -->

                            <!-- 내용 영역 -->
                            <div class="story-box">
                                <div class="story-wrap">
                                    <div class="story-cont">
                                        첫번째 <span class="font-gblue">관람평</span>의 주인공이 되어 보세요.
                                    </div>
                                    <div class="story-write">

         					   		

					                	

					                	 <!-- 로그인이 안되있을시 -->
                                        	<a href="#tooltip-layer01" class="tooltip-click oneWrtNonMbBtn" w-data="500" h-data="680" data-cd="PREV" title="관람평쓰기"><i class="iconset ico-story-write"></i> 관람평쓰기</a>

                                    </div>
                                </div>
                            </div>
                            <!-- // 내용 영역 -->
                        </div>
                    </li>

        </ul>
    


    </div> 
								
							</c:otherwise>
						</c:choose>        
         
</ul>
    

    


    </div>
    
    <script type="text/javascript">
    $(".oneWrtNonMbBtn").click(function(){
		var ajaxOption = {
	            url : "./review",
	            
	            data : {movieNum:'${vo.movieNum}'},
	            type : "GET",
	            dataType : "html"
	            
	    };  
		$.ajax(ajaxOption).done(function(data){
	       
	        $('.back').children().remove();
	       
	        $('.back').html(data);
	    });
	})

    </script>
</body>
</html>