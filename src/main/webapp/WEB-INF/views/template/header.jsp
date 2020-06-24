<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- header -->


<header id="header" class="main-header no-bg">

	<img class="ci" alt=""
		src="${pageContext.request.contextPath}/resources/images/sTheater.png"
		style="width: 7%; height: auto;">

	<!-- topGnb -->

	<div class="link-area">
		<a href="#layer_sitemap" class="header-open-layer btn-layer-sitemap"
			title="����Ʈ��">����Ʈ��</a> <a href="#layer_header_search"
			class="header-open-layer btn-layer-search" title="�˻�">�˻�</a> <a
			href="/booking/timetable" class="link-ticket" title="�󿵽ð�ǥ">�󿵽ð�ǥ</a>
		<c:if test="${member ne null}">
			<a href="./member/getMyPage" class="header-open-layer btn-layer-mymega"
			title="���� �ް��ڽ�">���� �ް��ڽ�</a>
		</c:if>
		
	</div>

	<!-- gnb -->
	<!--
        2019-04-15 ��ũ�� ���� : ����û
        1���� a �±׿� ���� �ٸ� class �߰�
    -->

	<nav id="gnb">
		<ul class="gnb-depth1">
			<li><a href="/movie" title="��ȭ">��ȭ</a>
				<div class="gnb-depth2">
					<ul>
						<li><a href="/movie" title="��ü��ȭ">��ü��ȭ</a></li>
						<li><a href="/curation/specialcontent" title="ť���̼�">ť���̼�</a></li>

						<li id="festivalArea" style="display: none;"><a
							href="/festival" title="��ȭ��">��ȭ��</a></li>
						<li><a href="/moviepost/all" title="��������Ʈ">��������Ʈ</a></li>
					</ul>
				</div></li>
			<li><a href="/booking" title="����">����</a>
				<div class="gnb-depth2">
					<ul>
						<li><a href="/booking" title="��������">��������</a></li>
						<li><a href="/booking/timetable" title="�󿵽ð�ǥ">�󿵽ð�ǥ</a></li>
						<li><a href="/booking/privatebooking" title="�� ��Ƽũ �����̺� ����">��
								��Ƽũ �����̺� ����</a></li>
					</ul>
				</div></li>
			<li><a href="/theater/list" title="����">����</a>
				<div class="gnb-depth2">
					<ul>
						<li><a href="/theater/list" title="��ü����">��ü����</a></li>
						<li><a href="/specialtheater/list" title="Ư����">Ư����</a></li>
					</ul>
				</div></li>


			<li><a href="../notice/noticeList" style="color: white;">��������</a></li>
			<li><a href="#">FAQ</a></li>
			<c:if test="${member eq null}">
			<li><a href="./member/memberLogin">�α���</a></li>
			</c:if>
			<c:if test="${member ne null}">
			<li><a href="./member/memberLogout">�α׾ƿ�</a></li>
			</c:if>
		</ul>
	</nav>
</header>
<!--// header -->