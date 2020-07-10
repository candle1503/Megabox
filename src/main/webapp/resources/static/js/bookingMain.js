
	//예매 날짜 리스트 부분 start//
	var count = 0;
	var date = new Date();
	var startDay = parseInt((date.getDate()+100+"").substr(1,3));

	var startYear = date.getFullYear();
	var startMonth = date.getMonth()+1+"";
	var startDaily = startDay+"";
	
	if(startMonth.length < 2){
		startMonth = 0 + startMonth;
	}

	if(startDaily.length < 2){
		startDaily = 0 + startDaily;
	}

	var startDate = startYear + "-" + startMonth + "-" + startDaily;

	if(count==0){
		var startTime = startDay;
	}
	 
	bookingTimeZone(startDay);
	
	$("#next").click(function(){
		$("#bookingTime-list").empty();
		startDay = startDay + 1;
		count++;
		bookingTimeZone(startDay);
	});
	
	$("#prev").click(function(){
		$("#bookingTime-list").empty();
		startDay = startDay - 1;
		count--;
		bookingTimeZone(startDay);
	});

	var miniTimeCss;
	
	function bookingTimeZone(startDay){
		$.get("bookingTimeZone?startDay="+startDay, function(result){
			$("#bookingTime-list").append(result);
		});
	
		if(count == 0){
			$("#prev").prop("disabled", "disabled");
			$("#next").removeAttr("disabled");
		} else if(count > 0 && count < 7){
			$("#prev").removeAttr("disabled");
			$("#next").removeAttr("disabled");
		} else if(count == 14){
			$("#prev").removeAttr("disabled");
			$("#next").prop("disabled", "disabled");
		}
	}
	
	$(".wrap").on("mouseover", ".bookingTime-list", function(){
		$(this).css("border-bottom", "2px solid #503396");

		var timeCss;

		for(var timeNum=1; timeNum<15; timeNum++){
			$(".bookingTime-list").on("click", "#timeBtn"+timeNum, function(){
				$("#timeBtn"+timeCss).removeClass("on");
				$(this).addClass("on");
				timeCss = $(this).attr('id').replace("timeBtn", '');
			}); 	
		}
	});
	
	$(".wrap").on("mouseout", ".bookingTime-list", function(){
		$(this).css("border-bottom", "1px solid #d8d9db");
	});
	//예매 날짜 리스트 부분 end//
	
	
	//예매 날짜별로 영화 리스트 부분 start//
	/* startTime = startDay+"";
	
	if(startTime.length<2){
		startTime = 0+startTime;
	}
	bookingMovieList(startTime);
	//startTime = parseInt(startTime);
	
	function bookingMovieList(startTime){
		$.get("bookingMovieList?startTime="+startTime, function(result){
			$("#bookingMovie-List").append(result);
		});	
	}
	
	$("#bookingTime-list").on("click", ".bookingTime-list",function(){
		$("#bookingMovie-List").empty();
		var days = $(this).text().split('/');
		startTime = parseInt(days[0]);

		startTime = startTime+"";
		
		if(startTime.length<2){
			startTime = 0+startTime;
		}
		
		//alert(startTime);
		bookingMovieList(startTime);
	}); */


	//-----------------------------------------------
	
	bookingMovieList(startDate);
	
	function bookingMovieList(startDate){
		$.get("bookingMovieList?startTime="+startDate, function(result){
			$("#bookingMovie-List").append(result);
		});	
	}
	
	$("#bookingTime-list").on("click", ".bookingTime-list",function(){
		$("#bookingMovie-List").empty();
		$("#bookingRoom-List").empty();
		/* var days = $(this).text().split('/');
		startDaily = parseInt(days[0]); */

		var startYearCut = $(this).text().substr(0,6);
		var startMonthCut = $(this).text().substr(7,2);
		var startDailyCut = $(this).text().substr(9,3); 

		startYear = startYearCut.trim();
		startMonth = startMonthCut.trim();
		startDaily = startDailyCut.trim();

		startDate = startYear + "-" + startMonth + "-" + startDaily;
		
		bookingMovieList(startDate);
	});
	//예매 날짜별로 영화 리스트 부분 end//
	
	//localCode 눌렀을 때
	for(var localNum=1; localNum<9; localNum++){

		var lastLocal;
		var lastDepth;
		var countDepth;
		
		$(".bookingLocal-Local").on("click", "#local"+localNum, function(){
			$("#local"+lastLocal).removeClass("on");
			$(this).addClass("on");
			lastLocal = $(this).attr('id').replace("local", '');

			$(lastDepth).removeClass("on");
			countDepth = $(this).attr('id').replace("local", '');
			lastDepth = "#localDepth"+countDepth;
			$(lastDepth).addClass("on");
		});
	}
	

	//예매 날짜별로 극장을 선택했을 때 리스트 부분 start//
	
	function bookingRoomList(startDate, name){
		$.get("bookingRoomList?startTime="+startDate+"&name="+name, function(result){
			$("#bookingRoom-List").append(result);
		});
	}


	function bookingMovieRoomList(startDate, name, movieNumber){
		$.get("bookingRoomList?startTime="+startDate+"&name="+name+"&movieNumber="+movieNumber, function(result){
			$("#bookingRoom-List").append(result);
		});
	}
	
	//name 눌렀을 때
	var name = "";
	
	for(var nameNum=1; nameNum<51; nameNum++){

		var localBtnCss;
		
		$(".localList").on("click", "#localBtnS"+nameNum, function(){
			$("#bookingRoom-List").empty();

			$("#localBtnS"+localBtnCss).removeClass("on");
			$(this).addClass("on");
			localBtnCss = $(this).attr('id').replace('localBtnS', '');
			
			name = encodeURIComponent($(this).val());
			
			$(".localName").val(name);
			
			var movieNumber = $('.test').val();
			
			if(movieNumber=="null"){
				bookingRoomList(startDate, name);
			}else{
				bookingMovieRoomList(startDate, name, movieNumber);
			}
		});
		
	}
	//예매 날짜별로 극장을 선택했을 때 리스트 부분 end//
	
	


	
	
	
	