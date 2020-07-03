<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${bookingLocalAr}" var="blList">

<li class="bookingLocal-Local"><button type="button" class="btn" id="10">
		<!-- btn on 하면 활성화  / has-issue 하면 왼쪽에 점 생김-->
		<span class="txt">${blList.localCode}(${bookingLocalArSize})</span>
	</button> 
	<div class="depth"> <!-- on (name출력) -->	<!-- mCS_no_scrollbar 활성화되면 지워짐 -->
		<div											
			class="detail-list m-scroll area-cd10 mCustomScrollbar _mCS_4 mCS_no_scrollbar">
			<div id="mCSB_4"
				class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
				style="max-height: none;" tabindex="0"> <!-- mCS_no_scrollbar_y 활성화되면 지워짐 -->
				<div id="mCSB_4_container" class="mCSB_container mCS_no_scrollbar_y"
					style="position: relative; top: 0; left: 0;" dir="ltr">
					<ul>
						<li class="bookingLocal-Local"><button id="btn" type="button">${blList.name}</button></li>
						<li><button id="btn" type="button" brch-no="1372"
								brch-nm="강남" brch-eng-nm="Gangnam" form-at="Y" area-cd="10"
								area-cd-nm="서울" spclb-yn="N" brch-bokd-unable-at="N"
								brch-popup-at="Y" brch-popup-no="998">강남</button></li>
						<li><button id="btn" type="button" brch-no="1359"
								brch-nm="강남대로(씨티)" brch-eng-nm="Gangnam-daero (City)"
								form-at="Y" area-cd="10" area-cd-nm="서울" spclb-yn="N"
								brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="988">강남대로(씨티)</button></li>
						<li><button id="btn" type="button" brch-no="1341"
								brch-nm="강동" brch-eng-nm="Gangdong" form-at="Y" area-cd="10"
								area-cd-nm="서울" spclb-yn="N" brch-bokd-unable-at="N"
								brch-popup-at="Y" brch-popup-no="939">강동</button></li>
					</ul>
				</div>
				<div id="mCSB_4_scrollbar_vertical"
					class="mCSB_scrollTools mCSB_4_scrollbar mCS-light mCSB_scrollTools_vertical">
					<div class="mCSB_draggerContainer">
						<div id="mCSB_4_dragger_vertical" class="mCSB_dragger"
							style="position: absolute; min-height: 30px; display: none; top: 0px;">
							<div class="mCSB_dragger_bar" style="line-height: 30px;"></div>
						</div>
						<div class="mCSB_draggerRail"></div>
					</div>
				</div>
			</div>
		</div>
	</div></li>
	
</c:forEach>

<script type="text/javascript">
	


</script>

 --%>