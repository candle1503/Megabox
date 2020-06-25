<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <div class="movie-summary infoContent" id="info">
        
            <div class="txt">${vo.contents }</div>
            <div class="btn-more toggle">
                <button type="button" class="btn"><span>더보기</span> <i class="iconset ico-btn-more-arr"></i></button>
            </div>
        
    </div>
	
    <div class="movie-info infoContent">

        <div class="line">
           <p>감독&nbsp;: ${vo.director }</p>
           <p>장르&nbsp;: ${vo.genre } / ${vo.playTime }분</p>
           <p>등급&nbsp;: ${vo.age }</p>
           <p>개봉일&nbsp;: ${vo.openDay }</p>
  <!--           -->
        </div>
           <p>출연진&nbsp;: ${vo.character }</p>
    </div>

    <!-- movie-graph -->
    <div class="movie-graph infoContent">
        <div class="col">
            <dl>
                <dt>관람포인트</dt>
                <dd id="charByPoint">&nbsp;</dd>
            </dl>

            <div class="graph" style="position: relative; bottom: 0px;">
                <canvas id="chartByStart" style="width: 216px; height: 216px; display: none;"></canvas>
                <img src="../../../static/pc/images/movie/no-graph01.jpg" alt="기대포인트 결과 없음" style="">
            </div>
        </div>

        <div class="col" id="subMegaScore">
            <dl>
                <dt>실관람 평점</dt>
                <dd class="font-roboto regular"><em>0</em><span class="ir">점</span></dd>
            </dl>
			<!--
            
                
                
                
                    
                
            
			-->
            
                
                    <div class="graph">
                        <img src="../../../static/pc/images/movie/no-graph02.jpg" alt="메가스코어 결과 없음">
                    </div>
                    <div class="score" style="position: relative; bottom: 29px; display: none;">
                        <div class="before">
                            <div class="circle"><em>0</em><span class="ir">점</span></div>
                            <p>관람 전</p>
                        </div>
                        <div class="after">
                            <div class="circle"><em>0</em><span class="ir">점</span></div>
                            <p>관람 후</p>
                        </div>
                    </div>
                
                
            
        </div>

        <div class="col">
            <dl>
                <dt>예매율</dt>
                <dd class="font-roboto regular">
                    <span id="rkTag">46.5%</span>
                </dd>
            </dl>

            <div class="graph" style="position: relative; bottom: 10px; right: 10px;"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
                <canvas id="chartByBar" style="display: block; width: 216px; height: 216px;" width="216" height="216" class="chartjs-render-monitor"></canvas>
                <img src="../../../static/pc/images/movie/no-graph03.jpg" alt="기대율 결과 없음" style="display: none;">
            </div>
        </div>

        <div class="col">
            <dl>
                <dt>일자별관객수</dt>
                <dd class="font-roboto regular">
                  
                        ${vo.views }
                    
                </dd>
            </dl>

            <div class="graph">
                <canvas id="chartByLine" style="width: 220px; height: 205px; display: block;" width="220" height="205"></canvas>
                <img src="../../../static/pc/images/movie/no-graph04.jpg" alt="일자별 관객수 결과 없음" style="display: none;">
            </div>
        </div>
    </div>
    <!--// movie-graph -->

    <!-- 영화관 선택후 -->
    
    <!--// movie-greeting  -->

        
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
        
    
	<script type="text/javascript">
	var num = 1;
	$('.btn-more').click(function(){
		if(num==1){
			$('.txt').css("height", "360px")
			num=0
		} else {
			$('.txt').css("height", "140px")
			num=1
		}
		})
	
	</script>

    </div>

<div class="inner-wrap mt70 infoContent">
    <div class="tit-util mb15">
        <h2 class="tit small">이벤트</h2>
        <a href="javascript:void(0)" title="이벤트 페이지로 이동" onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;" class="more">더보기 <i class="iconset ico-arr-right-gray"></i></a>
    </div>

    <div class="event-box">
        <ul>
            
                
                    <li>
                        <a href="#" title="메가패키지4_콤보50%할인+포토카드+500포인트 상세보기" class="eventBtn" data-no="8456" data-netfunnel="N"><img src="https://img.megabox.co.kr/SharedImg/event/2020/06/18/h1ymwJ57pS5YVlxXi6RYSYrwlYZdvxhT.jpg" onerror="noImg(this)" alt="메가패키지4_콤보50%할인+포토카드+500포인트"></a>
                    </li>
                
            
                
                    <li>
                        <a href="#" title="목금토일 6천원 할인 4차_<극장에서 다시, 봄> 상세보기" class="eventBtn" data-no="8455" data-netfunnel="N"><img src="https://img.megabox.co.kr/SharedImg/event/2020/06/04/pyXibJYLHGPpRPkpG0ABTTCM9tm9Fra7.jpg" onerror="noImg(this)" alt="목금토일 6천원 할인 4차_<극장에서 다시, 봄>"></a>
                    </li>
                
            
        </ul>
    </div>
</div>

    
    <!--// contents -->

</body>
</html>