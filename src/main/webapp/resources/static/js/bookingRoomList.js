/*
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
	}*/


	var roomSize = "${bookingRoomArSize}";
	
	for(var roomNum=1; roomNum<101; roomNum++){
		
		$(".bookingRoomList-room").on("click", "#roomBtn"+roomNum, function(){
			
			
			
			
			
			
			location.href="./bookingSeat?timeCode=468";
		});
	
	}
	
	/*$(".bookingRoomList-room").on("click", "#roomBtn1", function(){
		alert("zz");
	});*/