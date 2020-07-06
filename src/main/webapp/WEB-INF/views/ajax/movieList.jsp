<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<option value="">영화선택</option>
<c:forEach items="${movieList}" var="vo2">
	<option value="${vo2.movieNum}">${vo2.name}</option>
</c:forEach>
