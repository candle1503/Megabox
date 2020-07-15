<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<button id="btn">눌러</button>

	
	<script type="text/javascript">

	$('#btn').click(function(){
		alert("hi")

	    $.post("./payment", {seatNum:'${ticketVO.seatNum}', movieTime:'${ticketVO.movieTime}', id: '${ticketVO.id}', count:'${ticketVO.count}', movieNum:'${movieVO.movieNum}', theaterRoomCode:'${ticketVO.theaterRoomCode}', viewDate:'${ticketVO.viewDate}', movieName:'${movieVO.name}'}, function(result) {

			if(result>0){
	    	opener.$("#myForm").submit();
	        self.close();
			} else{

				alert("결제 취소")
			}
			
		});

	});
	</script>

</body>
</html>