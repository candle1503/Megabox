<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="ko">
<head>
<link rel="stylesheet" href="/resources/static/css/megabox.min.css" media="all">

</head>
<body class="bg-member">
	<div class="member-wrap">
		<div>
			<a href="../"><img alt="" src="/resources/static/static/images/sTheater.png"
				style="margin-left: 90px"></a>
		</div>
		<p class="tit-member">로그인&<a href="./memberJoin" style="color:#503396;">회원가입</a></p>

		<form:form modelAttribute="memberVO" action="./memberLogin" method="post">
			<div class="table-wrap">
				<table class="board-form">
					<colgroup>
						<col style="width: 130px;">
						<col>
					</colgroup>
					<tbody>
						<tr>
							<th scope="row"><label for="ibxSchIdMbNm">아이디<!--이름--></label></th>
							<td><form:input path="id" id="id" maxlength="20" type="text"
								placeholder="아이디" class="input-text w230px" />
								<form:errors path="id"></form:errors>
								 </td>
						</tr>
						<tr>
							<th scope="row"><label for="ibxSchIdMbNm">비밀번호<!--이름--></label></th>
							<td><form:input path="password" id="password" maxlength="20" type="password"
								placeholder="비밀번호" class="input-text w230px" />
								<form:errors path="password"></form:errors>
								</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="btn-member-bottom v1">
				<button type="submit" class="button  large">로그인</button>
			</div>
		</form:form>
	</div>
</body>
</html>