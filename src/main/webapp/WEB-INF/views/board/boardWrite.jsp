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
</head>
<body>

<form:form modelAttribute="boardVO" class="form-horizontal" action="${board}${path}" method="POST" enctype="multipart/form-data">
    <form:input path="num" type="hidden" id="num" />
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="title">제목:</label>
      <div class="col-sm-10">
        <form:input path="title" type="text" class="form-control" id="title" placeholder="Enter title"/>
        <form:errors path="title" cssClass="t"></form:errors>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="separate">구분:</label>
      <div class="col-sm-10">
	      <div class="dropdown">
			  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">구분을 골라주세요
			  <span class="caret"></span></button>
			  <ul class="dropdown-menu">
			    <li><a href="#" value="공지">공지</a></li>
			    <li><a href="#" value="이벤트">이벤트</a></li>
			    <li><a href="#" value="무대인사">무대인사</a></li>
			    <li><a href="#" value="라이브뷰잉">라이브뷰잉</a></li>
			  </ul>
			</div>
        <form:input path="separate" type="text" class="form-control" id="separate" placeholder="Enter separate"/>
        <form:errors path="separate" cssClass="t"></form:errors>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="contents">내용:</label>
      <div class="col-sm-10">          
    	  <form:textarea path="contents" rows="" cols="" class="form-control" id="summernote" ></form:textarea>
    	  <form:errors path="contents"></form:errors>
      </div>
    </div>
    
    
    <div class="form-group">
   	 	<input type="button" class="btn btn-info" id="add" value="FileAdd">
    </div>
    <div class="form-group" id="f">
		    	
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form:form>

	<script type="text/javascript">
		$(".dropdown-menu li > a").click(function(){
			$("#separate").val($(this).attr('value'));
		});
	</script>


</body>
</html>