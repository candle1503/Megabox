<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="ko">
<head>
<link rel="stylesheet" href="/resources/css/megabox.min.css" media="all">
</head>
<body class="bg-member">
		<div class="member-wrap">
			<div>
				<a href="../"><img alt="" src="/resources/images/sTheater.png"
					style="margin-left: 90px" ></a> 
			</div>
			<p class="tit-member">회원가입&<a href="./memberLogin" style="color:#503396;">로그인</a></p>

			<form:form modelAttribute="memberVO" action="./memberJoin" method="post" enctype="multipart/form-data">
				<input type="hidden" name="files" value="">
				<div class="table-wrap">
					<table class="board-form">
						<colgroup>
							<col style="width: 130px;">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="ibxSchIdMbNm">아이디</label></th>
								<td><form:input path="id" id="id" maxlength="20" type="text"
									placeholder="아이디" class="input-text w230px"/>
									<form:errors path="id"></form:errors>
									</td>
							</tr>
							<tr>
								<th scope="row"><label for="ibxSchIdMbNm">비밀번호</label></th>
								<td><form:input path="password" id="password" maxlength="20" type="password"
									placeholder="비밀번호" class="input-text w230px"/>
									<form:errors path="password"></form:errors>
									</td>
							</tr>
							<tr>
								<th scope="row"><label for="ibxSchIdMbNm">비밀번호 확인</label></th>
								<td><form:input path="passwordCheck" id="passwordCheck" maxlength="20"
									type="password" placeholder="비밀번호 재입력"
									class="input-text w230px"/>
									<form:errors path="passwordCheck"></form:errors>
									 </td>
							</tr>
							<tr>
								<th scope="row"><label for="ibxSchIdMbNm">이름</label></th>
								<td><form:input path="name" id="name" maxlength="20" type="text"
									placeholder="이름" class="input-text w230px"/>
									<form:errors path="name"></form:errors>
									</td>
							</tr>
							<tr>
								<th scope="row"><label for="ibxSchIdBirthDe">전화번호</label></th>
								<td><form:input path="phone" id="phone" maxlength="12" type="text"
									placeholder="'-' 없이 입력"  class="input-text w230px"
									/>
									<form:errors path="phone"></form:errors>
							</tr>
							<tr>
								<th scope="row"><label for="ibxSchIdMblpTelno">이메일
								</label></th>
								<td><form:input path="email" id="email" maxlength="20" type="email"
									placeholder="example@test.com" class="input-text w230px"
									/> 
									<form:errors path="email"></form:errors>
									</td>
							</tr>
							<tr>
								<th scope="row"><label for="ibxSchIdMblpTelno">나이
								</label></th>
								<td><form:input path="age" id="age" maxlength="11" type="text"
									 class="input-text w230px" placeholder="나이입력" />
									 <form:errors path="age"></form:errors>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="btn-member-bottom v1">
					<button type="submit" class="button  large">
						회원등록
					</button>
				</div>
			</form:form>
		</div>
</body>
</html>