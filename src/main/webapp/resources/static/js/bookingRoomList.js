
	
	

	/*function bookingSeatView(startDate, movieNum, theaterRoomCode){
		$.get("bookingSeatView?startTime="+startDate+"&movieNum="+movieNum+"&theaterRoomCode="+theaterRoomCode, function(result){
			location.href="./bookingSeat";
		});
	}
	
	var roomSize = "${bookingRoomArSize}";
	
	for(var roomNum=1; roomNum<101; roomNum++){
		
		$(".bookingRoomList-room").on("click", "#roomBtn"+roomNum, function(){
			var zzz = $(this).text();
			console.log(zzz);
			
			var numberCodeCut = $(this).text().split('/');
			var startTimeHCut = $(this).text().split('//');
			
			var movieNum = parseInt(numberCodeCut[0]);
			console.log(movieNum);
			var theaterRoomCode = parseInt(numberCodeCut[1]);
			console.log(theaterRoomCode);
			var startTimeHMsub = startTimeHCut[1];
			var startTimeHM = startTimeHMsub.substr(0, 13);
			startTimeHM = startTimeHM.trim();
			console.log(startTimeHM);
			
			startDate = startDate + "/" + startTimeHM;
			console.log(startDate);
			
			bookingSeatView(startDate, movieNum, theaterRoomCode);
		});
	
	}*/
 
	//-------------------------------------------------------------

	function bookingSeatView(timeCode){
		$.ajax({
			url:"bookingSeatView",
			type:"get",
			data: {timeCode},
			success:function(result){
				location.href=result;
			},
		});
		
		/*$.get("./bookingSeatView", {
			data : timeCode
		}, function(bookingSeatView){
			alert(bookingSeatView);
			var tt = bookingSeatView;
			location.href=tt;
		});*/
		
		
//		$.get("bookingSeatView?startTime="+startDate+"&timeCode="+timeCode, function(result){
//			location.href="./bookingSeatView?timeCode="+timeCode;
//		});
	}

	var roomSize = "${bookingRoomArSize}";
	
	for(var roomNum=1; roomNum<101; roomNum++){
		
		$(".bookingRoomList-room").on("click", "#roomBtn"+roomNum, function(){
			var numberCodeCut = $(this).text().split('/');
			
			var timeCode = parseInt(numberCodeCut[0]);
			alert(timeCode);
			
			
			//bookingSeatView(timeCode);
		});
	
	}
	
	
	
	
