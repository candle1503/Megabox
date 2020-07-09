//현재 시간 밀리초
timestamp = new Date().getTime();

for(var roomNum=1; roomNum<101; roomNum++){
	var txt = $("#roomBtn"+roomNum).text();
	
	//현재 날짜의 년월일
	var txtCut = txt.split('/');
	var txtCutC = txtCut[0];
	if(txtCutC != null){
		txtCutC = txtCutC.trim();
	}
	
	//각 영화상영의 날짜 String타입을 Date타입으로 변환
	function parse(txtCutC){
		//현재 날짜의 년월일 
		var y = txtCutC.substr(0, 4);
		var m = txtCutC.substr(5, 2);
		var d = txtCutC.substr(8, 3);
		var h = txtCutC.substr(10, 4);
		
		//현재 상영날짜의 시분
		var txtCutCB = txtCut[1];
		if(txtCutCB != null){
			txtCutCB = txtCutCB.trim();
			var txtCutCBC = txtCutCB.split('~');
			var txtCutCBT = txtCutCBC[0];
			var txtCutCBTH = txtCutCBT.substr(0, 2);
			var txtCutCBTM = txtCutCBT.substr(3, 2);
		}
		
		//현재 날짜의 년월일과 현재 상영날짜의 시분을 합침 (현재 상영날짜 계산)
		return new Date(y,m-1,d, txtCutCBTH, txtCutCBTM);
	}
	//변환
	var daate = parse(txtCutC);
	//밀리초로 변환
	var daateM = daate.getTime(); 
	
	if(timestamp > daateM){
		$("#bookingRoomfrm"+roomNum).remove();
		//$("#roomBtn"+roomNum).remove();
	}
}
