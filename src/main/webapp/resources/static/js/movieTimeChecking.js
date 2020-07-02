
								var G_calendar = {
										startDate: '-0d',
									    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
									    dayNamesMin: ['일','월','화','수','목','금','토'],
									    weekHeader: 'Wk',
									    dateFormat: 'yy-mm-dd',	
									    autoclose : true,
									    showOn:"both",
										buttonImageOnly:false,
									    showMonthAfterYear: true,
									    maxDate: '',
									    minDate: '-1y',
									    closeText: '닫기'
									        
								}
							

							<!-- 버튼들 유효성 검사 -->
								var timeAddContents1 = $('.timeAdd1').html();
								var timeAddContents2 = $('.timeAdd2').html();
								var timeAddContents3 = $('.timeAdd3').html();
								var timeAddContents4 = $('.timeAdd4').html();
								var lastTime1 = 0;
								var lastTime2 = 0;
								var lastTime3 = 0;
								var lastTime4 = 0;
								var timeGap1;
								var timeGap2;
								var timeGap3;
								var timeGap4;
								var listCount1 = 1;
								var listCount2 = 1;
								var listCount3 = 1;
								var listCount4 = 1;
								var startDay1;
								var startDay2;
								var startDay3;
								var startDay4;
								var endDay5;
								var endDay6;
								var endDay7;
								var endDay8;
								var i = 1;

								var timeChoose1;
								var timeChoose2;
								var timeChoose3;
								var timeChoose4;
								var movieSelected1;
								var movieSelected2;
								var movieSelected3;
								var movieSelected4;

								
								while(i<9){
								$('#calendar'+i).datepicker(G_calendar);
									i += 1;
								}
								
								$('.resetBTN1').on('click', function() {
									$('.reset1').empty();
									$('.reset1').prepend('<input id="calendar1" style=" left: 1300px;" value="시작 날짜" > <input id="calendar5" style="left: 1400px; " value="마지막 날짜" >')
									$('#calendar1').datepicker(G_calendar);
									$('#calendar5').datepicker(G_calendar);
									$('.timeAdd1').empty();
									$('.timeAdd1').prepend(timeAddContents1);
									lastTime1 = 0;
									listCount1 = 1;


									$('#calendar1').val("시작 날짜");
									$('#calendar5').val("마지막 날짜");
									startDay1="시작 날짜";
									endDay5="마지막 날짜";

									$('#calendar1').change( function(){
										
										startDay1 = $('#calendar1').val();
										alert(startDay1);
										
										if(startDay1 > endDay5){
											alert("마지막 날짜 이전으로 설정해주세요.");
											$('#calendar1').val("시작날짜");
										}


										<!-- 상영중인 영화 찾기 -->
										$.post("movieTimeCheck", {
											choosedTime : startDay1
										}, function(result) {
										$('.movieSelect1').append(result);
											result.trim();
											console.log(result)
										});

										})
									
									$('#calendar5').change(function(){
								endDay5=$('#calendar5').val()
								
								if($('#calendar1').val()=="시작날짜"){
									alert("시작날짜를 먼저 선택해주세요.");
									$('#calendar5').val("마지막날짜");
									endDay5 = "마지막날짜";
									}else if(endDay5 < startDay1){
									alert("시작날짜 이후로 설정해주세요.");
									$('#calendar5').val("마지막날짜");
									endDay5 = "마지막날짜";
									}
								})
								
									$('.movieSelect1').click(function(){
									if($('.movieSelect1').val()==null){
										alert("시작날짜를 먼저 선택해야 영화가 나옵니다.")
										}
									})
								})
							
								$('.resetBTN2').on('click', function() {
									$('.reset2').empty();
									$('.reset2').prepend('<input id="calendar2" style=" left: 1300px;" value="시작 날짜" > <input id="calendar6" style="left: 1400px; " value="마지막 날짜" >')
									$('#calendar2').datepicker(G_calendar);
									$('#calendar6').datepicker(G_calendar);
									$('.timeAdd2').empty();
									$('.timeAdd2').prepend(timeAddContents2);
									lastTime2 = 0;
									listCount2 = 1;


									$('#calendar2').val("시작 날짜");
									$('#calendar6').val("마지막 날짜");
									startDay2="시작 날짜";
									endDay6="마지막 날짜";

									$('#calendar2').change( function(){
										startDay2 = $('#calendar2').val();
										if(startDay2 > endDay6){
											alert("마지막 날짜 이전으로 설정해주세요.");
											$('#calendar2').val("시작날짜");
										}

										$.post("movieTimeCheck", {
											choosedTime : startDay2
										}, function(result) {
											result.trim();
										$('.movieSelect2').append(result);
										});
									})
									
									$('#calendar6').change(function(){
								endDay6=$('#calendar6').val()
								
								if($('#calendar2').val()=="시작날짜"){
									alert("시작날짜를 먼저 선택해주세요.");
									$('#calendar6').val("마지막날짜");
									endDay6 = "마지막날짜";
									}else if(endDay6 < startDay2){
									alert("시작날짜 이후로 설정해주세요.");
									$('#calendar6').val("마지막날짜");
									endDay6 = "마지막날짜";
									}
								})

									$('.movieSelect2').click(function(){
									if($('.movieSelect2').val()==null){
										alert("시작날짜를 먼저 선택해야 영화가 나옵니다.")
										}
									})
								})
							
								$('.resetBTN3').on('click', function() {
									$('.reset3').empty();
									$('.reset3').prepend('<input id="calendar3" style=" left: 1300px;" value="시작 날짜" > <input id="calendar7" style="left: 1400px; " value="마지막 날짜" >')
									$('#calendar3').datepicker(G_calendar);
									$('#calendar7').datepicker(G_calendar);
									$('.timeAdd3').empty();
									$('.timeAdd3').prepend(timeAddContents3);
									lastTime3 = 0;
									listCount3 = 1;


									$('#calendar3').val("시작 날짜");
									$('#calendar7').val("마지막 날짜");
									startDay3="시작 날짜";
									endDay7="마지막 날짜";

									$('#calendar3').change( function(){
										startDay3 = $('#calendar3').val();
										if(startDay3 > endDay7){
											alert("마지막 날짜 이전으로 설정해주세요.");
											$('#calendar3').val("시작날짜");
										}

										$.post("movieTimeCheck", {
											choosedTime : startDay3
										}, function(result) {
											result.trim();
										$('.movieSelect3').append(result);
										});
									})
									
									$('#calendar7').change(function(){
								endDay7=$('#calendar7').val()
								
								if($('#calendar3').val()=="시작날짜"){
									alert("시작날짜를 먼저 선택해주세요.");
									$('#calendar7').val("마지막날짜");
									endDay7 = "마지막날짜";
									}else if(endDay7 < startDay3){
									alert("시작날짜 이후로 설정해주세요.");
									$('#calendar7').val("마지막날짜");
									endDay7 = "마지막날짜";
									}
								})
									$('.movieSelect3').click(function(){
									if($('.movieSelect3').val()==null){
										alert("시작날짜를 먼저 선택해야 영화가 나옵니다.")
										}
									})
									
								})
							
								$('.resetBTN4').on('click', function() {
									$('.reset4').empty();
									$('.reset4').prepend('<input id="calendar4" style=" left: 1300px;" value="시작 날짜" > <input id="calendar8" style="left: 1400px; " value="마지막 날짜" >')
									$('#calendar4').datepicker(G_calendar);
									$('#calendar8').datepicker(G_calendar);
									$('.timeAdd4').empty();
									$('.timeAdd4').prepend(timeAddContents4);
									lastTime4 = 0;
									listCount4 = 1;


									$('#calendar4').val("시작 날짜");
									$('#calendar8').val("마지막 날짜");
									startDay4="시작 날짜";
									endDay8="마지막 날짜";

									$('#calendar4').change( function(){
										startDay4 = $('#calendar4').val();
										if(startDay4 > endDay8){
											alert("마지막 날짜 이전으로 설정해주세요.");
											$('#calendar4').val("시작날짜");
										}

										$.post("movieTimeCheck", {
											choosedTime : startDay4
										}, function(result) {
											result.trim();
										$('.movieSelect4').append(result);
										});
									})
									
									$('#calendar8').change(function(){
								endDay8=$('#calendar8').val()
								
								if($('#calendar4').val()=="시작날짜"){
									alert("시작날짜를 먼저 선택해주세요.");
									$('#calendar8').val("마지막날짜");
									endDay8 = "마지막날짜";
									}else if(endDay8 < startDay4){
									alert("시작날짜 이후로 설정해주세요.");
									$('#calendar8').val("마지막날짜");
									endDay8 = "마지막날짜";
									}
								})

									$('.movieSelect4').click(function(){
									if($('.movieSelect4').val()==null){
										alert("시작날짜를 먼저 선택해야 영화가 나옵니다.")
										}
									})
								})
							
								

							$('#calendar1').change( function(){
							
								startDay1 = $('#calendar1').val();
								
								if(startDay1 > endDay5){
									alert("마지막 날짜 이전으로 설정해주세요.");
									$('#calendar1').val("시작날짜");
								}
								


								<!-- 상영중인 영화 찾기 -->
								$.post("movieTimeCheck", {
									choosedTime : startDay1
								}, function(result) {
									result.trim();
								$('.movieSelect1').append(result);
								});
								
								})
								

							$('#calendar2').change( function(){
								startDay2 = $('#calendar2').val();
								if(startDay2 > endDay6){
									alert("마지막 날짜 이전으로 설정해주세요.");
									$('#calendar2').val("시작날짜");
								}
		
								$.post("movieTimeCheck", {
									choosedTime : startDay2
								}, function(result) {
									result.trim();
								$('.movieSelect2').append(result);
								});

								
							})
							

							$('#calendar3').change( function(){
								startDay3 = $('#calendar3').val();
								if(startDay3 > endDay7){
									alert("마지막 날짜 이전으로 설정해주세요.");
									$('#calendar3').val("시작날짜");
								}

								$.post("movieTimeCheck", {
									choosedTime : startDay3
								}, function(result) {
									result.trim();
								$('.movieSelect3').append(result);
								});

								
							})
							

							$('#calendar4').change( function(){
								startDay4 = $('#calendar4').val();
								if(startDay4 > endDay8){
									alert("마지막 날짜 이전으로 설정해주세요.");
									$('#calendar4').val("시작날짜");
								}

								$.post("movieTimeCheck", {
									choosedTime : startDay4
								}, function(result) {
									result.trim();
								$('.movieSelect4').append(result);
								});
								
							})
							
							$('#calendar5').change(function(){
								endDay5=$('#calendar5').val()
								
							if($('#calendar1').val()=="시작날짜"){
								alert("시작날짜를 먼저 선택해주세요.");
								$('#calendar5').val("마지막날짜");
								endDay5 = "마지막날짜";
								}else if(endDay5 < startDay1){
								alert("시작날짜 이후로 설정해주세요.");
								$('#calendar5').val("마지막날짜");
								endDay5 = "마지막날짜";
								}
							})
								
							$('#calendar6').change(function(){
								endDay6=$('#calendar6').val()
								
							if($('#calendar2').val()=="시작날짜"){
								alert("시작날짜를 먼저 선택해주세요.");
								$('#calendar6').val("마지막날짜");
								endDay6 = "마지막날짜";
								}else if(endDay6 < startDay2){
								alert("시작날짜 이후로 설정해주세요.");
								$('#calendar6').val("마지막날짜");
								endDay6 = "마지막날짜";
								}
							})
								
							$('#calendar7').change(function(){
								endDay7=$('#calendar7').val()
								
							if($('#calendar3').val()=="시작날짜"){
								alert("시작날짜를 먼저 선택해주세요.");
								$('#calendar7').val("마지막날짜");
								endDay7 = "마지막날짜";
								}else if(endDay7 < startDay3){
								alert("시작날짜 이후로 설정해주세요.");
								$('#calendar7').val("마지막날짜");
								endDay7 = "마지막날짜";
								}
							})
								
							$('#calendar8').change(function(){
								endDay8=$('#calendar8').val()
								
							if($('#calendar4').val()=="시작날짜"){
								alert("시작날짜를 먼저 선택해주세요.");
								$('#calendar8').val("마지막날짜");
								endDay8 = "마지막날짜";
								}else if(endDay8 < startDay4){
								alert("시작날짜 이후로 설정해주세요.");
								$('#calendar8').val("마지막날짜");
								endDay8 = "마지막날짜";
								}
							})
							
								$('.timeAddBtn1').on('click',function() {
								
								if (listCount1 > 3) {
									alert("상영은 최대 4번");
									return false;
								}

								var timeChoose1 = $('.timeChoose1').val();
								var movieSelected1 = $('.movieSelect1').val();
								if (timeChoose1 == '') {
									alert("시간을 먼저 선택해주세요");
									return false;
								} else if (movieSelected1 == null || movieSelected1 == '') {
									alert("영화를 선택해주세요");
									return false;
								}
								timeGap1 = parseInt(timeChoose1) - lastTime1;

								
								if (lastTime1 != 0) {
									if (timeGap1 < 3) {
										alert("이전 시간과 3시간 이상으로 설정해주세요.")
										return false;
									}
								}
								lastTime1 = timeChoose1;
								var  movieContents1 = $('.movieSelect1').html();
								$('.timeAdd1').prepend(timeAddContents1);
								$('.movieSelect1').append(movieContents1);
								
								listCount1 += 1;
							})
							
							$('.timeAddBtn2').on('click',function() {
								
								if (listCount2 > 3) {
									alert("상영은 최대 4번");
									return false;
								}

								var timeChoose2 = $('.timeChoose2').val();
								var movieSelected2 = $('.movieSelect2').val();
								if (timeChoose2 == '') {
									alert("시간을 먼저 선택해주세요");
									return false;
								} else if (movieSelected2 == null || movieSelected2 == '') {
									alert("영화를 선택해주세요");
									return false;
								}
								timeGap2 = parseInt(timeChoose2) - lastTime2;

								
								if (lastTime2 != 0) {
									if (timeGap2 < 3) {
										alert("이전 시간과 3시간 이상으로 설정해주세요.")
										return false;
									}
								}
								lastTime2 = timeChoose2;
								var  movieContents2 = $('.movieSelect2').html();
								$('.timeAdd2').prepend(timeAddContents2);
								$('.movieSelect2').append(movieContents2);

								listCount2 += 1;
							})
							
							$('.timeAddBtn3').on('click',function() {
								
								if (listCount3 > 3) {
									alert("상영은 최대 4번");
									return false;
								}

								var timeChoose3 = $('.timeChoose3').val();
								var movieSelected3 = $('.movieSelect3').val();
								if (timeChoose3 == '') {
									alert("시간을 먼저 선택해주세요");
									return false;
								} else if (movieSelected3 == null || movieSelected3 == '') {
									alert("영화를 선택해주세요");
									return false;
								}
								timeGap3 = parseInt(timeChoose3) - lastTime3;

								
								if (lastTime3 != 0) {
									if (timeGap3 < 3) {
										alert("이전 시간과 3시간 이상으로 설정해주세요.")
										return false;
									}
								}
								lastTime3 = timeChoose3;
								var  movieContents3 = $('.movieSelect3').html();
								$('.timeAdd3').prepend(timeAddContents3);
								$('.movieSelect3').append(movieContents3);

								listCount3 += 1;
							})
							
							$('.timeAddBtn4').on('click',function() {
								
								if (listCount4 > 3) {
									alert("상영은 최대 4번");
									return false;
								}

								var timeChoose4 = $('.timeChoose4').val();
								var movieSelected4 = $('.movieSelect4').val();
								if (timeChoose4 == '') {
									alert("시간을 먼저 선택해주세요");
									return false;
								} else if (movieSelected4 == null || movieSelected4 == '') {
									alert("영화를 선택해주세요");
									return false;
								}
								timeGap4 = parseInt(timeChoose4) - lastTime4;

								
								if (lastTime4 != 0) {
									if (timeGap4 < 3) {
										alert("이전 시간과 3시간 이상으로 설정해주세요.")
										return false;
									}
								}
								lastTime4 = timeChoose4;
								var  movieContents4 = $('.movieSelect4').html();
								$('.timeAdd4').prepend(timeAddContents4);
								$('.movieSelect4').append(movieContents4);

								listCount4 += 1;
							})
							
							<!-- 영화 목록 없을때 누르면 날짜 먼저 누르라고 알려주기-->
								$('.movieSelect1').click(function(){
									if($('.movieSelect1').val()==null){
										alert("시작날짜를 먼저 선택해야 영화가 나옵니다.")
										}
									})
							
								$('.movieSelect2').click(function(){
									if($('.movieSelect2').val()==null){
										alert("시작날짜를 먼저 선택해야 영화가 나옵니다.")
										}
									})
							
								$('.movieSelect3').click(function(){
									if($('.movieSelect3').val()==null){
										alert("시작날짜를 먼저 선택해야 영화가 나옵니다.")
										}
									})
							
								$('.movieSelect4').click(function(){
									if($('.movieSelect4').val()==null){
										alert("시작날짜를 먼저 선택해야 영화가 나옵니다.")
										}
									})
									
							var timeChoosedNum = 0;
							$('.timeChoose1').change(function(){
								if($('.timeChoose1').val()-timeChoosedNum <3){
									alert("최소 3시간 이상으로 설정해주세요.")
								}
								timeChoosedNum = $('.timeChoose1').val()
							})
							
							$('.timeChoose1').change(function(){
								var timeChoosedNum = $('.timeChoose1').val()
							})
//							<!-- 저장 버튼 눌렀을 때 값들 다 있는지 확인 -->
//								$('.saveBTN1').click(function(){
//									if($('.movieSelect1').val() == null){
//										alert("영화선택해라");
//										}
//									})
							