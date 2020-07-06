<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

	<c:forEach items="${timeList}" var="date" varStatus="i">
	
		<c:if test="${fn:substringAfter(date,'//') eq '토'}">
			<li id="day${i.index}" class="bookingTime-list"> <button type="button" class="dateButton" style="color: #3b5fcb" > <h4>${fn:substring(date, 0, 7)}</h4> <em><span class="dateNum timeSpan">${fn:substring(date, 8, 10)}</span></em><span class="yoil timeSpan">${fn:substringAfter(date,'//')}</span> </button> </li>
		</c:if>
		
		<c:if test="${fn:substringAfter(date,'//') eq '일'}">
			<li id="day${i.index}" class="bookingTime-list"> <button type="button" class="dateButton" style="color: #e81002;"> <h4>${fn:substring(date, 0, 7)}</h4> <em><span class="dateNum timeSpan">${fn:substring(date, 8, 10)}</span></em><span class="yoil timeSpan">${fn:substringAfter(date,'//')}</span> </button> </li>
		</c:if>
		
		<c:if test="${fn:substringAfter(date,'//') ne '토' && fn:substringAfter(date,'//') ne '일'}">
			<li id="day${i.index}" class="bookingTime-list"> <button type="button" class="dateButton" style="color: black;"> <h4>${fn:substring(date, 0, 7)}</h4> <em><span class="dateNum timeSpan">${fn:substring(date, 8, 10)}</span></em><span class="yoil timeSpan">${fn:substringAfter(date,'//')}</span> </button> </li>
		</c:if>
		
	</c:forEach>
	
	<%-- 예전꺼 --%>
	<%-- <c:forEach items="${timeList}" var="date" varStatus="i">
	
		<c:if test="${fn:substringAfter(date,'/') eq '토'}">	
			<a href="#" style="color: #3b5fcb; text-decoration: none;" onfocus="blur()"> <li id="day${i.index}" class="bookingTime-list"> <em><span class="dateNum timeSpan">${fn:substringBefore(date,'/')}</span></em>ㆍ<span class="yoil timeSpan">${fn:substringAfter(date,'/')}</span> </li> </a>	
			<li id="day${i.index}" class="bookingTime-list"> <button type="button" class="dateButton" style="color: #3b5fcb" > <em><span class="dateNum timeSpan">${fn:substringBefore(date,'/')}</span></em><span class="yoil timeSpan">${fn:substringAfter(date,'/')}</span> </button> </li>
		</c:if>
		
		<c:if test="${fn:substringAfter(date,'/') eq '일'}">
			<a href="#" style="color: #e81002; text-decoration: none;" onfocus="blur()"> <li id="day${i.index}" class="bookingTime-list"> <em><span class="dateNum timeSpan">${fn:substringBefore(date,'/')}</span></em>ㆍ<span class="yoil timeSpan">${fn:substringAfter(date,'/')}</span> </li>  </a>
			<li id="day${i.index}" class="bookingTime-list"> <button type="button" class="dateButton" style="color: #e81002;"> <em><span class="dateNum timeSpan">${fn:substringBefore(date,'/')}</span></em><span class="yoil timeSpan">${fn:substringAfter(date,'/')}</span> </button> </li>
		</c:if>
		
		<c:if test="${fn:substringAfter(date,'/') ne '토' && fn:substringAfter(date,'/') ne '일'}">
			<a href="#" style="color: black; text-decoration: none;" onfocus="blur()" class="pointer-bottom"> <li id="day${i.index}" class="bookingTime-list">  <em><span class="dateNum timeSpan">${fn:substringBefore(date,'/')}</span></em>ㆍ<span class="yoil timeSpan">${fn:substringAfter(date,'/')}</span> </li> </a>
			<li id="day${i.index}" class="bookingTime-list"> <button type="button" class="dateButton" style="color: black;"> <em><span class="dateNum timeSpan">${fn:substringBefore(date,'/')}</span></em><span class="yoil timeSpan">${fn:substringAfter(date,'/')}</span> </button> </li>
		</c:if>
		
	</c:forEach> --%>

