<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<style type="text/css">
	
		/* .dateMain{
		}
	 
		#day-list{
			list-style: none;
			
		}
		  
		.day-list{
			width: 5%;
			display: inline-block;
			border: 1px solid black;
		}
		
		.dateNum{
			width: 2%;
			height: 30px;
		}
		  
		.yoil{
			width: 2%;
		} */
		
		
		
.preNext {
	background-color: white;
	border: none;
	outline: none;
}

.dateNum {
	font-size: 20px;
	font-family: 'Apple SD Gothic Neo', 'Noto Sans CJK KR', 'Malgun Gothic',
		'dotum', 'gulim', sans-serif;
}

.yoil {
	font-family: 'Apple SD Gothic Neo', 'Noto Sans CJK KR', 'Malgun Gothic',
		'dotum', 'gulim', sans-serif;
	font-size: 13px;
}

.day-list {
	display: inline-block;
	height: 100px;
	margin: 0 0.4%;
	width: 5%;
	float: left;
}

/* #day-list>li>a {
	width:5%;
	height:100px;
	color: white;
} */
	</style>

</head>
<body>

	<div class="dateMain">
		<h1>bookingList</h1>
	
		<div style="width: 5%; height: 100px; float: left;">
			<button id="prev" class="timeButton">&lt</button>
		</div>
		
		<div id="list">
			<ul id="day-list">
				
			</ul>
		</div>
	
		<div style="width: 5%; height: 100px; float: left;">
			<button id="next" class="timeButton">&gt</button>
		</div>
	</div>
	
	<script type="text/javascript">
		var count = 0;
		var date = new Date();
		var startDay = parseInt((date.getDate()+100+"").substr(1,3));
		 
		bookingTimeZone(startDay);

		$("#next").click(function(){
			$("#day-list").empty();
			startDay = startDay + 1;
			count++;
			bookingTimeZone(startDay);
		});
		
		$("#prev").click(function(){
			$("#day-list").empty();
			startDay = startDay - 1;
			count--;
			bookingTimeZone(startDay);
		});

		function bookingTimeZone(startDay){
			$.get("bookingTimeZone?startDay="+startDay, function(result){
				$("#day-list").append(result);
			});
 
			if(count == 0){
				$("#prev").prop("disabled", "disabled");
				$("#next").removeAttr("disabled");
			} else if(count > 0 && count < 7){
				$("#prev").removeAttr("disabled");
				$("#next").removeAttr("disabled");
			} else if(count == 7){
				$("#prev").removeAttr("disabled");
				$("#next").prop("disabled", "disabled");
			}
		}
		
		
	</script>


</body>
</html>