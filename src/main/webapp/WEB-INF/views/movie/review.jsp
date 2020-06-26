<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.starR1{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat -52px 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR2{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR1.on{background-position:0 0;}
.starR2.on{background-position:-15px 0;}


</style>
</head>
<body>

<!-- 레이어 : 관람평 등록 -->

    <div class="wrap">
     	<form action="./reviewInsert" method="post">   
	
        <div class="layer-con">
            <!-- regi-reply-score review -->
            <div class="regi-reply-score review">
                <!-- score -->
                <div class="score">
                    <p class="tit">"${vo.name}"<br><span class="oneTitle">관람평</span>을 남겨보세요!</p>
                    <div class="box">
                        <div class="box-star-score">
                            <div class="starRev">
							  <span title="1" class="starR1 on">별1_왼쪽</span>
							  <span title="2" class="starR2">별1_오른쪽</span>
							  <span title="3" class="starR1">별2_왼쪽</span>
							  <span title="4" class="starR2">별2_오른쪽</span>
							  <span title="5" class="starR1">별3_왼쪽</span>
							  <span title="6" class="starR2">별3_오른쪽</span>
							  <span title="7" class="starR1">별4_왼쪽</span>
							  <span title="8" class="starR2">별4_오른쪽</span>
							  <span title="9" class="starR1">별5_왼쪽</span>
							  <span title="10" class="starR2">별5_오른쪽</span>
							
							</div>
                            <div class="num">
                                <em>0</em>
                                <span>점</span>
                            </div>
                        </div>

                        <div class="textarea">
                            <textarea id="textarea" rows="5" cols="30" title="한줄평 입력" placeholder="영화에 대한 후기를 남겨주세요." class="input-textarea" name="contents"></textarea>
                            <div class="util">
                                <p class="count"><span>0</span> / 100</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!--// score -->

                <!-- point -->
                <div class="point">
                    <p class="tit"><span class="oneText"></span>포인트는 무엇인가요?</p>
                    <p class="txt" id="oneLineAlert">(1개 선택가능)</p>

                    <div class="box">
                        <button type="button" class="btn" title="연출">연출</button>
                        <button type="button" class="btn" title="스토리">스토리</button>
                        <button type="button" class="btn" title="영상미">영상미</button>
                        <button type="button" class="btn" title="배우">배우</button>
                        <button type="button" class="btn" title="OST">OST</button>
                    </div>
                </div>
                <!--// point -->

                <div class="txt-alert errText" style="display: none;">한줄평 입력</div>
            </div>
            <!--// regi-reply-score preview -->
        </div>

			<input name="movieNum" value="${vo.movieNum}" hidden="true" >
				<input name="writer" value="practice" hidden="true">
				<input name="point" class="reviewRate" value="0" hidden="true">
				<input name="ticketNum" value="111" hidden="true">
				<input name="likePoint" class="likePoint" value="없음" hidden="true">
			    <div class="form-group">
			      
			    </div>
	
        <div class="btn-group-fixed">
            <button type="button" class="button close-layer">취소</button>
            <input type="submit" class="button purple" id="regOneBtn" data-no="" data-cd="" data-mno="20019200" value="등록">
        </div>
	</form>
    </div>


<!--// 레이어 : 관람평 등록 -->

	
	
	<script type="text/javascript">
	$('.starRev span').click(function(){
	  $(this).parent().children('span').removeClass('on');
	  $(this).addClass('on').prevAll('span').addClass('on');
	  $(".num > em").html($(this).attr("title"));
	  $(".reviewRate").val($(this).attr("title"));
	  return false;
	});

	$('.point .box button').on('click', function() {
        if($(this).attr('class').indexOf('on') == -1) {
            $('#oneLineAlert').text('(1개 선택가능)');
            $(".likePoint").val($(this).attr("title"));

            if($('.point .box button.on').length == 0){ 
                $('#oneLineAlert').addClass('font-gblue');
                $('#oneLineAlert').text('(선택완료 하셨습니다.)');
            }
             if($('.point .box button.on').length >= 1) { //3개째 선택하면 선택했던거 초기화
                $('.point .box button.on').removeClass('on');
               
                $(this).addClass('on');
                $('#oneLineAlert').text('(최대 1개 선택가능)');
                return;
            } 
            
            $(this).addClass('on');

        } else {
            $(this).removeClass('on');

        }
    });

	$('.close-layer').click(function(){
		
		var ajaxOption = {
	            url : "./reviewPage",
	            
	            data : {movieNum:'${vo.movieNum}'},
	            type : "GET",
	            dataType : "html"
	            
	    };  
		$.ajax(ajaxOption).done(function(data){
	       
	        $('.back').children().remove();
	       
	        $('.back').html(data);
	    });
		
	})
	$('#textarea').on('keyup', function() {
        if(this.value.length > 100) this.value = this.value.substr(0, 100);

        $('.textarea .count span').html(this.value.length);
    });
	
</script>
</body>
</html>