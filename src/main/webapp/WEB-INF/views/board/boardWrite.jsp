<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <style type="text/css">
  	.dropdown-toggle{
  		float: left;
  	}
  	
  	.noticeError{
  		color: red;
  	}
  		
  </style>
  
</head>

<body>

<div class="container">

		<form:form modelAttribute="noticeVO" class="form-horizontal"
			action="${board}${path}" method="POST" enctype="multipart/form-data">
			<form:input path="num" type="hidden" id="num" />

			<div class="form-group">
				<label class="control-label col-sm-2" for="title">제목:</label>
				<div class="col-sm-10">
					<form:input path="title" type="text" class="form-control"
						id="title" placeholder="Enter title" value="${vo.title}"/>
					<form:errors path="title" cssClass="noticeError"></form:errors>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="contents">내용:</label>
				<div class="col-sm-10">
					<form:textarea path="contents" rows="" cols="" class="form-control"
						id="summernote" value="${vo.contents}"></form:textarea>
					<form:errors path="contents" cssClass="noticeError"></form:errors>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="separate">구분:</label>
				<div class="col-sm-10">
					<div class="dropdown">
						<button class="btn btn-primary dropdown-toggle" type="button"
							data-toggle="dropdown">
							구분을 골라주세요 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu dropdown-separate">
							<li><a href="#" value="공지">공지</a></li>
							<li><a href="#" value="이벤트">이벤트</a></li>
							<li><a href="#" value="무대인사">무대인사</a></li>
							<li><a href="#" value="라이브뷰잉">라이브뷰잉</a></li>
						</ul>
					</div>
					<form:input path="separate" type="text" class="form-control"
						id="separate" placeholder="Enter separate" readonly="true" value="${vo.separate}"/>
					<form:errors path="separate" cssClass="noticeError"></form:errors>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="localCode">지역:</label>
				<div class="col-sm-10">
					<div class="dropdown">
						<button class="btn btn-primary dropdown-toggle" type="button"
							data-toggle="dropdown">
							지역을 골라주세요 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu dropdown-localCode">
							<li><a href="#" value="서울">서울</a></li>
							<li><a href="#" value="경기">경기</a></li>
							<li><a href="#" value="인천">인천</a></li>
							<li><a href="#" value="대전/충청/세종">대전/충청/세종</a></li>
							<li><a href="#" value="부산/대구/경상">부산/대구/경상</a></li>
							<li><a href="#" value="광주/전라">광주/전라</a></li>
							<li><a href="#" value="강원">강원</a></li>
							<li><a href="#" value="제주">제주</a></li>

						</ul>
					</div>
					<form:input path="localCode" type="text" class="form-control"
						id="localCode" placeholder="Enter localCode" readonly="true" value="${vo.localCode}"/>
					<form:errors path="localCode" cssClass="noticeError"></form:errors>
				</div>
			</div>

			<%-- 예전방식 --%>
			<div class="form-group">
				<label class="control-label col-sm-2" for="name">극장:</label>
				<div class="col-sm-10">
					<div class="dropdown dd1">
						<button class="btn btn-primary dropdown-toggle" type="button"
							data-toggle="dropdown">
							서울 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu dropdown-seoul">
							<c:forEach items="${theaterArSeoul}" var="taSeoul">
								<li><a href="#" value="${taSeoul.name}">${taSeoul.name}</a></li>
							</c:forEach>
						</ul>

					</div>
					
					<div class="dropdown dd2">
					<button class="btn btn-primary dropdown-toggle" type="button"
							data-toggle="dropdown">
							경기 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu dropdown-gyeonggi">
							<c:forEach items="${theaterArGyeonggi}" var="taGyeonggi">
								<li><a href="#" value="${taGyeonggi.name}">${taGyeonggi.name}</a></li>
							</c:forEach>
						</ul>
					</div>
					
					<div class="dropdown dd3">
					<button class="btn btn-primary dropdown-toggle" type="button"
							data-toggle="dropdown">
							인천 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu dropdown-incheon">
							<c:forEach items="${theaterArIncheon}" var="taIncheon">
								<li><a href="#" value="${taIncheon.name}">${taIncheon.name}</a></li>
							</c:forEach>
						</ul>
					</div>
					
					<div class="dropdown dd4">
					<button class="btn btn-primary dropdown-toggle" type="button"
							data-toggle="dropdown">
							대전/충청/세종 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu dropdown-chungcheong">
							<c:forEach items="${theaterArChungcheong}" var="taChungcheong">
								<li><a href="#" value="${taChungcheong.name}">${taChungcheong.name}</a></li>
							</c:forEach>
						</ul>
					</div>
					
					<div class="dropdown dd5">
					<button class="btn btn-primary dropdown-toggle" type="button"
							data-toggle="dropdown">
							부산/대구/경상 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu dropdown-gyeongsang">
							<c:forEach items="${theaterArGyeongsang}" var="taGyeongsang">
								<li><a href="#" value="${taGyeongsang.name}">${taGyeongsang.name}</a></li>
							</c:forEach>
						</ul>
					</div>
					
					<div class="dropdown dd6">
					<button class="btn btn-primary dropdown-toggle" type="button"
							data-toggle="dropdown">
							광주/전라 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu dropdown-jeolla">
							<c:forEach items="${theaterArJeolla}" var="taJeolla">
								<li><a href="#" value="${taJeolla.name}">${taJeolla.name}</a></li>
							</c:forEach>
						</ul>
					</div>
					
					<div class="dropdown dd7">
					<button class="btn btn-primary dropdown-toggle" type="button"
							data-toggle="dropdown">
							강원 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu dropdown-gangwon">
							<c:forEach items="${theaterArGangwon}" var="taGangwon">
								<li><a href="#" value="${taGangwon.name}">${taGangwon.name}</a></li>
							</c:forEach>
						</ul>
					</div>
					
					<div class="dropdown dd8">
					<button class="btn btn-primary dropdown-toggle" type="button"
							data-toggle="dropdown">
							제주 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu dropdown-jeju">
							<c:forEach items="${theaterArJeju}" var="taJeju">
								<li><a href="#" value="${taJeju.name}">${taJeju.name}</a></li>
							</c:forEach>
						</ul>
					</div>

					<form:input path="name" type="text"
						class="form-control seoul gyeonggi incheon chungcheong gyeongsang jeolla gangwon jeju" id="name"
						placeholder="Enter name" readonly="true" value="${vo.name}"/>
					<form:errors path="name" cssClass="noticeError"></form:errors>
				</div>
			</div>
			

			<%-- ajax로 보내는 방법인데 안됌 --%>
			<%-- <div class="form-group">
				<label class="control-label col-sm-2" for="localCode">지역test:</label>
				<div class="col-sm-10">
					<div class="dropdown">
						<button class="btn btn-primary dropdown-toggle" type="button"
							data-toggle="dropdown">
							지역을 골라주세요 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu dropdown-code">
							<li><a href="" value="서울">서울</a></li>
							<li><a href="" value="경기">경기</a></li>
							<li><a href="" value="인천">인천</a></li>
							<li><a href="" value="대전/충청/세종">대전/충청/세종</a></li>
							<li><a href="" value="부산/대구/경상">부산/대구/경상</a></li>
							<li><a href="" value="광주/전라">광주/전라</a></li>
							<li><a href="" value="강원">강원</a></li>
							<li><a href="" value="제주">제주</a></li>
						</ul>
						
					</div>
					
						<select id="localCode-sel" onchange="getLocation()">
							<option value="서울">서울</option>
							<option value="경기">경기</option>
							<option value="인천">인천</option>
						</select>
						
						<input type="checkbox" id="ml1" class="filterCheck" name="filterAddr" value="서울"> <label id="mlL1" for="ml1"
								class="checkLabel">서울</label>
						<input type="checkbox" id="ml2" class="filterCheck" name="filterAddr" value="경기"> <label id="mlL1" for="ml2"
								class="checkLabel">경기</label>
						<input type="checkbox" id="ml3" class="filterCheck" name="filterAddr" value="인천"> <label id="mlL1" for="ml3"
								class="checkLabel">인천</label>
						
					<form:input path="localCode" type="text" class="form-control"
						id="localCode" placeholder="Enter localCode" />
					<form:errors path="localCode" cssClass="t"></form:errors>
				</div>
			</div>			 --%>
			
			<!-- <script type="text/javascript">

				//체크박스 버젼
				$(".filterCheck").click(function(){
	
					var localCode = $("input[name='filterAddr']:checked").val();
	
					$.ajax({ 
						url:"noticeWrite",
						type:"GET",
						data:{localCode},
						success:function(result){
							console.log(result);
						},
						error:function(result){
							console.log(result);
						}
					});
					
				});
				
				//select 버젼
				var localCode =""
	
				function getLocation(){
					localCode = $("#localCode-sel").val();
					$("#localCode").val($("#localCode-sel").attr('value'));
					
					$.ajax({ 
						url:"noticeWrite",
						type:"GET",
						data:{localCode},
						success:function(result){
							console.log(result);
						},
						error:function(result){
							console.log(result);
						}
					});
				}
			
				//드롭박스 버젼
				$(".dropdown-code li > a").click(function(){
					var localCode = $(this).attr('value');

					$.ajax({ 
						url:"noticeWrite",
						type:"GET",
						data:{localCode},
						success:function(result){
							$("#localCode").val(localCode);
						},
						error:function(result){
							console.log(result);
						}
					});
					
				});

			</script> -->
			
			
			<%-- name 리스트 출력 부분 --%>
			<%-- <div class="form-group">
				<label class="control-label col-sm-2" for="name">극장나올꺼임:</label>
				<div class="col-sm-10">
					<div class="dropdown">
						<button class="btn btn-primary dropdown-toggle" type="button"
							data-toggle="dropdown">
							지역을 골라주세요 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu dropdown-name">
						
							<c:forEach items="${codeList}" var="cList">
								<li><a href="#" value="${cList.name}">${cList.name}</a></li>
							</c:forEach>
						</ul>
					</div>
					
					<c:forEach items="${codeList}" var="cList">
						<h3>${cList.name}</h3>
					</c:forEach>
					
				</div>
			</div> --%>
			
			<div class="form-group">
				<div class="col-sm-10">
					<input type="button" class="btn btn-info" id="add" value="FileAdd" >
				</div>
			</div>
			<div class="form-group" id="file"></div>

				<div class="fileDown">
					<c:forEach items="${vo.noticeFileVOs}" var="fileVO">
						<div class="fileSub">
							<span style="font-weight: bolder;">* 첨부 파일 다운로드 *</span><br>
							<a href=""> -
								${fileVO.oriName}</a><a href="./fileDelete?num=${vo.num}" class="btn btn-danger" id="fdc">FileDelete</a>
						</div>
					</c:forEach>
				</div>
				
				<!-- <div class="fileDownCancel">
					<a href="./fileDelete?num=" class="btn btn-danger" id="fdc">FileDelete</a>
					<input type="button" id="fdc" value="FileCancel">
				</div> -->



			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Submit</button>
				</div>
			</div>
		</form:form>

	</div>


	<script type="text/javascript">
		$(".dropdown-separate li > a").click(function() {
			$("#separate").val($(this).attr('value'));
		});

		$(".dropdown-localCode li > a").click(function() {
			$("#localCode").val($(this).attr('value'));
		});

		$(".dropdown-seoul li > a").click(function() {
			$(".seoul").val($(this).attr('value'));
		});

		$(".dropdown-gyeonggi li > a").click(function() {
			$(".gyeonggi").val($(this).attr('value'));
		});

		$(".dropdown-incheon li > a").click(function() {
			$(".incheon").val($(this).attr('value'));
		});

		$(".dropdown-chungcheong li > a").click(function() {
			$(".chungcheong").val($(this).attr('value'));
		});

		$(".dropdown-gyeongsang li > a").click(function() {
			$(".gyeongsang").val($(this).attr('value'));
		});

		$(".dropdown-jeolla li > a").click(function() {
			$(".jeolla").val($(this).attr('value'));
		});

		$(".dropdown-gangwon li > a").click(function() {
			$(".gangwon").val($(this).attr('value'));
		});

		$(".dropdown-jeju li > a").click(function() {
			$(".jeju").val($(this).attr('value'));
		});
		
		
		var path = '${path}';
		if (path == 'Write') {
			$("#num").remove();
		}

		var fileCount = 1;

			

		
		$("#file").on("click", ".remove", function(){
			$(this).parent().remove();
			fileCount--;
		});
		
		$("#add").click(function() {

			if(fileCount < 6){
				$("#file").append('<div class="form-group"><div><input type="file" name="files"></div><i class="glyphicon glyphicon-remove remove"></i></div>');
				fileCount++;
			}else{
				alert("최대 파일 등록 수는 5개까지만 가능합니다.");
			}
			
		});


		
		$("#fdc").click(function(){
			$(".fileSub > span").remove();
			$(".fileSub > a").remove();

			
			
		});

		
	</script>


</body>
</html>