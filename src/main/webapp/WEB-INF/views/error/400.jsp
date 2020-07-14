<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:import url="../template/header.jsp"></c:import>
<c:import url="../template/header_css.jsp"></c:import>

<div class="container">

			<!-- contents -->
			<div id="contents">

				<div class="error-page">
					<i class="iconset ico-error-404"></i>

					<p class="tit">페이지를 찾을 수 없습니다.</p>

					<p class="txt">
						방문하시려는 웹 페이지의 주소가 잘못 입력되었거나 변경 또는 삭제되어 요청하신 페이지를 찾을 수 없습니다.<br>
						입력하신 주소가 정확한지 다시 한 번 확인해 주시기 바랍니다.
					</p>

					<div class="tel">
						<i class="iconset ico-tel-purple"></i>
						<span>고객센터</span>
						<em>1234-0102</em>
					</div>

					<div class="btn-group">
						<a href="javascript:history.back(-1);" class="button large" title="이전 페이지 이동">이전 페이지 이동</a>
						<a href="${pageContext.request.contextPath}/" class="button purple large" title="쌍용 씨네시티 메인으로 이동">쌍용 씨네시티 메인으로 이동</a>
					</div>
				</div>

			</div>
			<!--// contents -->
		</div>

		<c:import url="../template/footer.jsp"></c:import>

</body>
</html>