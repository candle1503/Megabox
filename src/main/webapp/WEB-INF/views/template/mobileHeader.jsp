<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header class="header header-horizontal header-view-pannel"
	style="font-family: 'Do Hyeon', sans-serif;">
	<div class="container">
		<nav class="navbar">
			<a class="navbar-brand"
				href="${pageContext.request.contextPath}/mobile/mobileIndex"> <span
				class="logo-element"> <span class="logo-tape"> <span
						class="svg-content svg-fill-theme"
						data-svg="${pageContext.request.contextPath}/resources/static/mobile/images/svg/logo-part.svg"></span>
				</span> <span class="logo-text text-uppercase"
					style="font-family: 'Do Hyeon', sans-serif;"> <span
						style="font-family: 'Do Hyeon', sans-serif;">쌍</span>용시네마
				</span>
			</span>
			</a>
			<button class="navbar-toggler" type="button">
				<span class="th-dots-active-close th-dots th-bars"> <span></span>
					<span></span> <span></span>
				</span>
			</button>
			<div class="navbar-collapse">
				<ul class="navbar-nav">

					<c:if test="${member ne null}">
						<li><h3 style="padding-bottom: 15px;">${member.name}님
								환영합니다!!</h3></li>
					</c:if>

					<c:if test="${member ne null}">
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/mobile/mobileTicket">▶모바일티켓 확인하기</a></li>
					</c:if>

					<c:if test="${member eq null}">
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/mobile/mobileLogin">▶모바일티켓
								확인하기</a></li>
					</c:if>

					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/">▶웹 환경으로 보기</a></li>

				</ul>

				<c:if test="${member eq null}">
					<div class="navbar-extra">
						<a class="btn-theme btn"
							href="${pageContext.request.contextPath}/mobile/mobileLogin"
							style="font-family: 'Do Hyeon', sans-serif;"><i
							class="fas fa-ticket-alt"></i>&nbsp;&nbsp;로그인 하기</a>
					</div>
				</c:if>

				<c:if test="${member ne null}">
					<div class="navbar-extra">
						<a class="btn-theme btn"
							href="${pageContext.request.contextPath}/mobile/mobileLogout"
							style="font-family: 'Do Hyeon', sans-serif;"><i
							class="fas fa-ticket-alt"></i>&nbsp;&nbsp;로그아웃 하기</a>
					</div>
				</c:if>
			</div>
		</nav>
	</div>
</header>