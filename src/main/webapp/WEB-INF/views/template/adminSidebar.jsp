<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	
    <div class="lnb-area">
					<nav id="lnb">
						<p class="tit on">
							<a href="#" title="나의 메가박스">관리자 목록</a>
						</p>

						<ul>
							<li class=""><a href="${pageContext.request.contextPath}/admin/memberList" title="회원 리스트">회원 리스트</a></li>
<%-- 							<li><a href="${pageContext.request.contextPath}/admin/movie" titel="영화 관리">영화 관리</a></li> --%>
							<li><a href="${pageContext.request.contextPath}/admin/theaterList" title="영화관 목록&관리">영화관 목록&관리</a></li>
							<li><a href="${pageContext.request.contextPath}/admin/booking" title="예약 관리">예약 관리</a></li>
						</ul>
					</nav>
				</div>
	