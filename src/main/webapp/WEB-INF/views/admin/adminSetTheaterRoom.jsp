<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="ko">
<head>

<title>나의메가박스 | 라이프씨어터, 메가박스</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="shortcut icon" href="/resources/static/icon/favicon.ico">
<link rel="stylesheet" href="/resources/static/css/megabox.min.css"
	media="all">
<link rel="stylesheet" href="/resources/static/css/myPage.css"
	media="all">

<!-- dataPicker -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


</head>

<body>

	<c:import url="../template/header.jsp"></c:import>
	<div class="body-wrap">



		<div class="container has-lnb" style="margin-top: 0px;">
			

			<div class="inner-wrap">

				<c:import url="../template/adminSidebar.jsp"></c:import>

				<div id="contents">
					<h2 class="tit">상영관 설정</h2>

					<!-- c:foreach 로 관수 마다 뿌려져야함 -->

					<c:forEach items="${list}" var="vo" varStatus="i">
						<form action="./setTheaterRoom" method="post" class="setSubmit${i.count}">
							<div class="roomNumber">
								<!-- theaterNum 히든으로 넘겨줄거임 -->
								<input type="hidden" value="${theaterNum}" name="theaterNum">
								<!-- theaterRoomCode 히든으로 넘겨줄거임 -->
								<input type="hidden" value="${vo.theaterRoomCode}"
									name="theaterRoomCode">
								<!-- theaterRoomCode 히든으로 넘겨줄거임 -->
								<input type="hidden" value="${vo.roomName}" name="roomName">
								<!-- theaterRoomCode 히든으로 넘겨줄거임 -->
								<input type="hidden" value="${name}" name="name">
								<div class="tit-util mt40 mb10">
									<h3 class="tit">${vo.roomName}</h3>

									<input class="timeAddBtn${i.count} button" type="button"
										style="margin-left: 50px; font-size: large;" value="상영시간+">

									<div class="right">
										<p class="reset${i.count}">
											<input id="calendar${i.count}" style="left: 1300px;"
												value="시작날짜" name="startDay"/> <input
												id="calendar${4+i.count}" style="left: 1400px;"
												value="마지막날짜" name="endDay"/>
										</p>
									</div>

								</div>
								

								<div class="table-wrap mb40">
									<table class="board-form">
										<colgroup>
											<col style="width: 180px;">
											<col>
										</colgroup>
										<tbody class="timeAdd${0+i.count}">
											<!-- +버튼 누르면 아래로 추가되게 -->
											<tr class="added">
												<th scope="row"><label for="phone"> <select
														class="btn dropdown-toggle btn-default bs-placeholder timeChoose${i.count}"
														style="border: none; background-color: #f7f8f9;"
														name="time">
															<option value="">상영 시간 선택</option>
															<option value="07:00">07:00</option>
															<option value="08:00">08:00</option>
															<option value="09:00">09:00</option>
															<option value="10:00">10:00</option>
															<option value="11:00">11:00</option>
															<option value="12:00">12:00</option>
															<option value="13:00">13:00</option>
															<option value="14:00">14:00</option>
															<option value="15:00">15:00</option>
															<option value="16:00">16:00</option>
															<option value="17:00">17:00</option>
															<option value="18:00">18:00</option>
															<option value="19:00">19:00</option>
															<option value="20:00">20:00</option>
															<option value="21:00">21:00</option>
															<option value="22:00">22:00</option>
													</select>
												</label></th>
												<td style="background-color: #f7f8f9;"><select
													class="input-text w500px movieSelect${i.count}"
													style="border: none; background-color: #f7f8f9; width: 550px"
													name="movieNum">

												</select>
											</tr>


										</tbody>
									</table>
									<input type=button class="button resetBTN${i.count}"
										style="float: right;" value="RESET">
									<input type="button" class="button purple" id="saveBTN${i.count}"
										style="margin-left: 700px;" value="저장">
								</div>
						</form>
					</c:forEach>

					<!-- 각종 체크.. -->
					<script src="/resources/static/js/movieTimeChecking.js" async=""></script>

				<script type="text/javascript">
// 				var timeCss;

// 				for(var timeNum=1; timeNum<15; timeNum++){
// 					$(".bookingTime-list").on("click", "#timeBtn"+timeNum, function(){
// 						$("#timeBtn"+timeCss).removeClass("on");
// 						$(this).addClass("on");
// 						timeCss = $(this).attr('id').replace("timeBtn", '');
// 					}); 	
// 				}
				var num;
				var num2;
				var lastTimeChoose=0;
					for(var i=1; i<5; i++){
					$('#saveBTN'+i).on("click",function(){
						num = $(this).attr('id').replace("saveBTN", '');
						num2 = Number(num)+Number(4);
						var startDay = $('#calendar'+num).val();
						var endDay = $('#calendar'+num2).val();
						var timeChoose = $('.timeChoose'+num).val();
						var movieSelect = $('.movieSelect'+num).val();
						if(startDay,endDay,timeChoose,movieSelect == null ){
							alert("날짜, 시간, 영화 모두 선택 해주세요.");
							}else{
							$('.setSubmit'+num).submit();

								}
						})
					}
// 					if()	
// 				  	$('.setSubmit').submit();
// 						})
				</script>

				</div>

				<div class="btn-group mt40">
					<a href="${pageContext.request.contextPath}/admin/theaterList"> <input type="button"
						class="button purple large" value="뒤로가기">
					</a>
				</div>

			</div>



		</div>
	</div>



	<div class="normalStyle"
		style="display: none; position: fixed; top: 0; left: 0; background: #000; opacity: 0.7; text-indent: -9999px; width: 100%; height: 100%; z-index: 100;">닫기</div>
	<div class="alertStyle"
		style="display: none; position: fixed; top: 0px; left: 0px; background: #000; opacity: 0.7; width: 100%; height: 100%; z-index: 5005;"></div>
</body>
</html>