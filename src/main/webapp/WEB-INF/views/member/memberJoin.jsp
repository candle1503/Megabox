<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko">
<head>
<link rel="stylesheet" href="/resources/css/megabox.min.css" media="all">
</head>
<body class="bg-member">
		<div class="member-wrap">
			<div>
				<img alt="" src="/resources/images/sTheater.png"
					style="margin-left: 90px"> <a href="/main" title="메인 페이지로 이동"></a>
			</div>

			<p class="tit-member">회원가입</p>

			<form action="./memberJoin" method="post">
				<div class="table-wrap">
					<table class="board-form">
						<caption>
							이름, 생년월일, 휴대폰 번호 항목을 가진 아이디 찾기 입력 표
							<!--이름, 생년월일, 휴대폰 번호 항목을 가진 아이디 찾기 입력 표-->
						</caption>
						<colgroup>
							<col style="width: 130px;">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="ibxSchIdMbNm">아이디<!--이름--></label></th>
								<td><input id="id" maxlength="20" type="text"
									placeholder="아이디" class="input-text w230px" name="id">
									<!--이름--></td>
							</tr>
							<tr>
								<th scope="row"><label for="ibxSchIdMbNm">비밀번호<!--이름--></label></th>
								<td><input id="password" maxlength="20" type="password"
									placeholder="비밀번호" class="input-text w230px" name="password">
									<!--이름--></td>
							</tr>
							<tr>
								<th scope="row"><label for="ibxSchIdMbNm">비밀번호 확인<!--이름--></label></th>
								<td><input id="passwordCheck" maxlength="20"
									type="password" placeholder="비밀번호 재입력"
									class="input-text w230px" name="passwordCheck"> <!--이름--></td>
							</tr>
							<tr>
								<th scope="row"><label for="ibxSchIdMbNm">이름<!--이름--></label></th>
								<td><input id="name" maxlength="20" type="text"
									placeholder="이름" class="input-text w230px" name="name">
									<!--이름--></td>
							</tr>
							<tr>
								<th scope="row"><label for="ibxSchIdBirthDe">전화번호<!--생년월일--></label></th>
								<td><input id="phone" maxlength="12" type="text"
									placeholder="'-' 없이 입력" " class="input-text w230px"
									name="phone">
							</tr>
							<tr>
								<th scope="row"><label for="ibxSchIdMblpTelno">이메일
										번호<!--휴대폰 번호-->
								</label></th>
								<td><input id="email" maxlength="20" type="email"
									placeholder="example@test.com" class="input-text w230px"
									name="email"> <!--'-' 없이 입력-->
									<div id="schIdMblpNo-error-text" class="alert"></div></td>
							</tr>
							<tr>
								<th scope="row"><label for="ibxSchIdMblpTelno">생년월일<!--휴대폰 번호-->
								</label></th>
								<td><input id="age" maxlength="11" type="text"
									placeholder="'나이입력" class="input-text w230px" name="age">
									<!--'-' 없이 입력-->
									<div id="schIdMblpNo-error-text" class="alert"></div></td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="btn-member-bottom v1">
					<button type="submit" class="button  large">
						회원등록
						<!--아이디 찾기-->
					</button>
				</div>
			</form>
		</div>
</body>
</html>