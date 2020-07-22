<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
          <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

      <jsp:useBean id="now" class="java.util.Date" />

	<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />  
	
	<fmt:formatDate value="${vo.openDay }" pattern="yyyy-MM-dd" var="openDay"/>


   <!-- movie-graph -->
    
     <div class="movie-graph infoContent">
        <div class="col">
            <dl>
                <dt>관람포인트</dt>
                
                <dd id="charByPoint">&nbsp;無&nbsp;</dd>
            </dl>

            <div class="graph" style="position: relative; bottom: 29px;">
           <c:choose>
           	<c:when test="${today <= openDay || vo.rate eq '0'}">
		
                 <img src="/resources/static/images/no-graph01.jpg" alt="메가스코어 결과 없음" style="margin-top: 30px;">
                
             </c:when>
             <c:otherwise>
                <canvas id="chartByStart" style="width: 216px; height: 216px;"></canvas>
                
                <script>
                var marksCanvas = document.getElementById("chartByStart");
				var max = Math.max(${direct}, ${player}, ${ost}, ${beauty}, ${story});
				if(max==${direct}){
				$('#charByPoint').html("<em>연출</em>")
				} else if(max==${player}) {
					$('#charByPoint').html("<em>배우</em>")	
				}else if(max==${ost}) {
					$('#charByPoint').html("<em>OST</em>")	
				}else if(max==${beauty}) {
					$('#charByPoint').html("<em>영상미</em>")	
				} else {
					$('#charByPoint').html("<em>스토리</em>")	
				}
				
				Chart.defaults.global.defaultFontFamily = "Lato";
				Chart.defaults.global.defaultFontSize = 15;
				
				var marksData = {
				  labels: ["연출", "배우", "OST", "영상미", "스토리"],
				  datasets: [{
				    
				    backgroundColor: "transparent",
				    borderColor: "purple",
					pointBorderWidth:'0',
				    pointBackgroundColor: "purple",
				    pointStyle : "line",
				    
				    data: [${direct}, ${player}, ${ost}, ${beauty}, ${story}]
				  }]
				};
				
				var chartOptions = {
				  scale: {
					  gridLines: {
					      color: "silver",
					      lineWidth: 1
					    },
				    ticks: {
				      beginAtZero: true,
				      min: 0,
				      max: 105,
				      stepSize: 40,
				      display: false
				    },
				    pointLabels: {
				      fontSize: 11,
				      fontColor: "gray"
				    }
				  },
				  legend: {
					
				    display: false
				  }
				};
				
				var radarChart = new Chart(marksCanvas, {
				  type: 'radar',
				  data: marksData,
				  options: chartOptions
				});
				</script>
             </c:otherwise>
             </c:choose>
            </div>
        </div>

      
        <div class="col" id="subMegaScore">
            <dl>
                <dt>실관람 평점</dt>
                <c:if test="${vo.rate < 1 }">
                	<dd class="font-roboto regular"><em>0<fmt:formatNumber value="${vo.rate}" pattern="#,###.0"/></em><span class="ir">점</span></dd>
                </c:if>
                <c:if test="${vo.rate >= 1 }">
                <dd class="font-roboto regular"><em><fmt:formatNumber value="${vo.rate}" pattern="#,###.0"/></em><span class="ir">점</span></dd>
            	</c:if>
            </dl>
            
           <c:choose>
           	<c:when test="${today <= openDay || vo.rate eq '0'}">

				<div class="graph" >
                        <img src="/resources/static/images/no-graph02.jpg" alt="메가스코어 결과 없음">
                </div>
             </c:when>
           	
              <c:otherwise>
                     <div class="score equal" style="position: relative; bottom: 29px;;">
                        <div class="middle">
                            <div class="circle"><em><fmt:formatNumber value="${vo.rate}" pattern="#,###.0"/></em><span class="ir">점</span></div>
                            <p>관람 후</p>
                        </div>
                    </div>
               </c:otherwise>
             </c:choose>
                
            
        </div>

        <div class="col">
            <dl>
                <dt>예매율</dt>
                <dd class="font-roboto regular">
                    <span id="rkTag">
                    	<c:if test="${vo.bookingRate >= 1 }">
						<fmt:formatNumber value="${vo.bookingRate}" pattern="#,###.0"/>
						</c:if>
						<c:if test="${vo.bookingRate < 1 }">
						0<fmt:formatNumber value="${vo.bookingRate}" pattern="#,###.0"/>
						</c:if>
						 %</span>
                </dd>
            </dl>

            <div class="graph" style="position: relative; bottom: 10px; right: 10px;"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
                <c:choose>
                <c:when test="${vo.bookingRate eq 0}">
				
                        <img src="/resources/static/images/no-graph03.jpg" alt="메가스코어 결과 없음">
                
             </c:when>
             <c:when test="${vo.bookingRate ne 0 }">
                <canvas id="chartByBar" style="display: block; width: 216px; height: 216px;" width="216" height="216" class="chartjs-render-monitor"></canvas>
            <script>
			var ctx = document.getElementById('chartByBar').getContext('2d');
			 Chart.defaults.global.defaultFontFamily = "Lato";
             Chart.defaults.global.defaultFontSize = 15;
			var maxAge = Math.max(${first}, ${second}, ${third}, ${fourth}, ${old});
			var first = ${first}
			var second = ${second}
			var third = ${third}
			var fourth = ${fourth}
			var old = ${old}
			var barChart = new Chart(ctx, {
			    type: 'bar',
			    data: {
			        labels: ['10대', '20대', '30대', '40대', '50대'],
			        datasets: [{
			            label:'',
			           data: [first, second, third, fourth, old],
			           
			            backgroundColor: [
			                'rgba(255, 99, 132, 0.2)',
			                'rgba(54, 162, 235, 0.2)',
			                'rgba(255, 206, 86, 0.2)',
			                'rgba(75, 192, 192, 0.2)',
			                'rgba(153, 102, 255, 0.2)'
			                
			            ],
			            borderColor: [
			                'rgba(255, 99, 132, 1)',
			                'rgba(54, 162, 235, 1)',
			                'rgba(255, 206, 86, 1)',
			                'rgba(75, 192, 192, 1)',
			                'rgba(153, 102, 255, 1)'
			            ],
			            borderWidth: 0.5
			        }]
			    },
			    options: { 
			        scales: {
			            
			            yAxes: [{
			            	
			                ticks: {
			                    beginAtZero: true,
			                    display: false,
			                    stepSize: 100,
			                    max : maxAge
			                }
			            }]
			        },
			        legend : {display:false}
			    }
			});
			
			
			
			</script>
            
             </c:when>
             </c:choose>
            </div>
        </div>

        <div class="col">
            <dl>
                <dt>일자별관객수</dt>
                <dd class="font-roboto regular">
                  
                       ${views }
                    
                </dd>
            </dl>

            <div class="graph">
            <c:choose>
             <c:when test="${today <= openDay || views eq '0'}">
				
                        <img src="/resources/static/images/no-graph04.jpg" alt="메가스코어 결과 없음">
                
             </c:when>
             <c:otherwise>
                <canvas id="chartByLine" style="width: 220px; height: 205px; display: block;" width="220" height="205"></canvas>
                
                <script type="text/javascript">
                var maxView = Math.max(${one}, ${two}, ${three}, ${four});
                var now = new Date();
                var mon = (now.getMonth()+1)>9 ? ''+(now.getMonth()+1) : '0'+(now.getMonth()+1);
                var day = now.getDate()>9 ? ''+now.getDate() : '0'+now.getDate();

                var one = mon + '.' + (day-1);        
                var two = mon + '.' + (day-2);
                var three = mon + '.' + (day-3); 
                var four = mon + '.' + (day-4);
                

                var speedCanvas = document.getElementById("chartByLine");

                Chart.defaults.global.defaultFontFamily = "Lato";
                Chart.defaults.global.defaultFontSize = 15;

                var speedData = {
                  labels: [four, three, two, one],
                  datasets: [{
                    label: "",
                    data: [${four}, ${three}, ${two}, ${one}],
                    lineTension: 0,
                    fill: false,
                    borderColor: 'rgba(75, 192, 192, 0.5)',
                    backgroundColor: 'transparent',
                    borderDash: [5, 5],
                    pointBorderColor: 'rgba(75, 192, 192, 0.5)',
                    pointBackgroundColor: 'rgba(75, 192, 192, 0.5)',
                    pointRadius: 5,
                    pointHoverRadius: 10,
                    pointHitRadius: 30,
                    pointBorderWidth: 2,
                    pointStyle: 'rectRounded'
                  }]
                };

                var chartOption = {
                	scales: {
    			      
    			    	yAxes: [{
    			            	
    			            ticks: {
    			                    beginAtZero: true,
    			                    display: false,
    			                    stepSize: 100,
    			                    max : maxView+5
    			                }
    			            }]
    			        ,
      				    pointLabels: {
      				      fontSize: 11,
      				      fontColor: "gray"
      				    }
      				  },
                  
                  legend: {
                    display: false,
                    
                    labels: {
                      boxWidth: 80,
                      fontColor: 'black'
                    }
                  }
                };

                var lineChart = new Chart(speedCanvas, {
                  type: 'line',
                  data: speedData,
                  options: chartOption
                });
                </script>
             </c:otherwise>
             </c:choose>
            </div>
        </div>
    </div>

    <!-- 영화관 선택후 -->
    
    <!--// movie-greeting  -->

        
        <!-- 한줄평 없을 때 -->
        
        	<div class="movie-idv-story oneContent mt70">
	 <c:choose>
		<c:when test="${not empty review}">
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
                    
       
							<c:forEach items="${review}" var="vo">
								  <li class="type01 oneContentTag">    <div class="story-area">        <div class="user-prof">            <div class="prof-img"><img src="${pageContext.request.contextPath}/upload/movie/bg-photo.png" alt="프로필 사진" title="프로필 사진" onerror="noImg(this, 'human')"></div>            
								  <p class="user-id">${vo.writer}</p>        </div>        <div class="story-box">            <div class="story-wrap review"><div class="tit">관람평</div>                <div class="story-cont">                    <div class="story-point">                        
								  <span>${vo.point }</span>                    </div>                    <div class="story-recommend">
								  <em>${vo.likePoint }</em>                    </div>                    
								  <div class="story-txt">${vo.contents } </div>                    <div class="story-like">                        <button type="button" class="oneLikeBtn" title="댓글 추천" data-no="648604" data-is="N"><i class="iconset ico-like-gray"></i> <span>0</span></button>                    </div>                    <div class="story-util">                        <div class="post-funtion">                            <div class="wrap">                                <button type="button" class="btn-alert">옵션보기</button>                                <div class="balloon-space user">                                    <div class="balloon-cont"><div class="user">    <p class="reset a-c">스포일러 및 욕설/비방하는<br>내용이 있습니까?</p>    <button type="button" class="maskOne" data-no="648604">댓글 신고 <i class="iconset ico-arr-right-green"></i></button></div>                                            <div class="btn-close"><a href="#" title="닫기"><img src="/static/pc/images/common/btn/btn-balloon-close.png" alt="닫기"></a></div>                                        </div>                                    </div>                                </div>                            </div>                        </div>                    </div>                </div>            </div>        </div>        <div class="story-date">            <div class="review on">                
								  <span>${vo.regDate }</span>            </div>        </div></li>
      
							</c:forEach>
							</ul>
							</c:when>	
							<c:otherwise>
								 
								<!-- 한줄평 없을 때 -->
								<script type="text/javascript">

								</script>
            <h2 class="tit small mt70">아직 남겨진 한줄평이 없어요.</h2>
            
	

    <div class="movie-idv-story oneContent">


    
        <ul>

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


    </div>
    
        
    
	<script type="text/javascript">
	var num = 1;
	$('.btn-more').click(function(){
		if(num==1){
			$('.txt').css("height", "360px")
			$('.txt').css("overflow", "auto")
			$('.btn-more .ico-btn-more-arr').css("transform", "rotate(180deg)")
			$('.btn-more span').html("닫기")
			num=0
		} else {
			$('.txt').css("height", "140px")
			$('.txt').css("overflow", "hidden")
			$('.btn-more .ico-btn-more-arr').css("transform", "rotate(360deg)")
			$('.btn-more span').html("더보기")
			num=1
		}
		})
		
// 	$('.btn-like').on("click", function(){
// 		if(${empty member}){
// 			alert("로그인 후 이용해주세요");
// 		} else {
// 			 $.post("./likeUpdate", {movieNum:'${vo.movieNum}', like:'${vo.like}'}, function(result) {
// 					if(result>0){
// 							alert("success");
// 						} else{
// 						alert("failed");
// 						}
// 				 window.location.replace("./movieSelect?movieNum="+${vo.movieNum});
// 				});
				
// 		}
		
		
			
// 		});
	
	</script>


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
<script type="text/javascript">
$(".oneWrtNonMbBtn").click(function(){
	
	if(${member eq null}){

	alert("로그인이 필요한 서비스입니다.");
		} else {

		$('#review').parent().attr("class", "on");
		$("#inform").parent().removeClass("on");
		$("#preview").parent().removeClass("on");
		var ajaxOption = {
	            url : "./review",
	            
	            data : {movieNum:'${vo.movieNum}'},
	            type : "GET",
	            dataType : "html"
	            
	    };  
		$.ajax(ajaxOption).done(function(data){
	       
	        $('.back').children().remove();
	       $('.mt70').remove();
	        $('.back').html(data);
	    });

		}

	
})
	
</script>
    
    <!--// contents -->

</body>
</html>