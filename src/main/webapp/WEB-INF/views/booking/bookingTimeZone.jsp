<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

	<c:forEach items="${timeList}" var="date" varStatus="i">
	
		<c:if test="${fn:substringAfter(date,'/') eq '토'}">	
			<a href="#" style="color: #3b5fcb; text-decoration: none;" onfocus="blur()"> <li id="day${i.index}" class="bookingTime-list"> <em><span class="dateNum timeSpan">${fn:substringBefore(date,'/')}</span></em>ㆍ<span class="yoil timeSpan">${fn:substringAfter(date,'/')}</span> </li> </a>	
		</c:if>
		
		<c:if test="${fn:substringAfter(date,'/') eq '일'}">
			<a href="#" style="color: #e81002; text-decoration: none;" onfocus="blur()"> <li id="day${i.index}" class="bookingTime-list"> <em><span class="dateNum timeSpan">${fn:substringBefore(date,'/')}</span></em>ㆍ<span class="yoil timeSpan">${fn:substringAfter(date,'/')}</span> </li>  </a>
		</c:if>
		
		<c:if test="${fn:substringAfter(date,'/') ne '토' && fn:substringAfter(date,'/') ne '일'}">
			<a href="#" style="color: black; text-decoration: none;" onfocus="blur()" class="pointer-bottom"> <li id="day${i.index}" class="bookingTime-list">  <em><span class="dateNum timeSpan">${fn:substringBefore(date,'/')}</span></em>ㆍ<span class="yoil timeSpan">${fn:substringAfter(date,'/')}</span> </li> </a>
		</c:if>
		
	</c:forEach>


