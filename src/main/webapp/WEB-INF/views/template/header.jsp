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
		<a href="#layer_mymega" class="header-open-layer btn-layer-mymega"
			title="���� �ް��ڽ�">���� �ް��ڽ�</a>
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
			<li><a href="./member/memberLogin">�α���</a></li>
		</ul>
	</nav>
	<!--// gnb -->

	<!--// topGnb -->

	<!-- ���̾� : ����Ʈ�� -->




	<div id="layer_sitemap" class="header-layer layer-sitemap">
		<!-- wrap -->
		<div class="wrap">
			<a href="" class="link-acc" title="����Ʈ�� ���̾� �Դϴ�.">����Ʈ�� ���̾� �Դϴ�.</a>

			<p class="tit">SITEMAP</p>

			<div class="list position-1">
				<p class="tit-depth">��ȭ</p>

				<ul class="list-depth">
					<li><a href="/movie" title="��ü��ȭ">��ü��ȭ</a></li>
					<li><a href="/curation/specialcontent" title="ť���̼�">ť���̼�</a></li>
					<li><a href="javascript:void(0)"
						onclick="javascript:MegaboxUtil.Common.moveMovieFilmCheck();"
						title="��ȭ��">��ȭ��</a></li>
					<li><a href="/moviepost/all" title="��������Ʈ">��������Ʈ</a></li>
				</ul>
			</div>

			<div class="list position-2">
				<p class="tit-depth">����</p>

				<ul class="list-depth">
					<li><a href="/booking" title="��������">��������</a></li>
					<li><a href="/booking/timetable" title="�󿵽ð�ǥ">�󿵽ð�ǥ</a></li>
					<li><a href="/booking/privatebooking" title="�� ��Ƽũ ����� ����">��
							��Ƽũ �����̺� ����</a></li>
					<!-- <li><a href="/booking?megaboxLanguage=en" title="English Ticketing">English Ticketing</a></li> -->
				</ul>
			</div>

			<div class="list position-3">
				<p class="tit-depth">����</p>

				<ul class="list-depth">
					<li><a href="/theater/list" title="��ü����">��ü����</a></li>
					<li><a href="/specialtheater/list" title="Ư����">Ư����</a></li>
				</ul>
			</div>

			<div class="list position-4">
				<p class="tit-depth">�̺�Ʈ</p>

				<ul class="list-depth">
					<li><a href="javascript:void(0)"
						onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;"
						title="������ �̺�Ʈ">������ �̺�Ʈ</a></li>
					<li><a href="javascript:void(0)"
						onclick="NetfunnelChk.aTag('EVENT_LIST','/event/end');return false;"
						title="���� �̺�Ʈ">���� �̺�Ʈ</a></li>
					<li><a href="javascript:void(0)"
						onclick="NetfunnelChk.aTag('EVENT_LIST','/event/winner/list');return false;"
						title="��÷�ڹ�ǥ">��÷�ڹ�ǥ</a></li>
				</ul>
			</div>

			<div class="list position-5">
				<p class="tit-depth">�����</p>

				<ul class="list-depth">
					<li><a href="javascript:void(0)"
						onclick="NetfunnelChk.aTag('STORE_LIST','/store');return false;"
						title="���ο� ��ǰ">���ο� ��ǰ</a></li>
					<li><a href="javascript:void(0)"
						onclick="NetfunnelChk.aTag('STORE_LIST','/store/megaticket');return false;"
						title="�ް�Ƽ��">�ް�Ƽ��</a></li>
					<li><a href="javascript:void(0)"
						onclick="NetfunnelChk.aTag('STORE_LIST','/store/megachance');return false;"
						title="�ް�����">�ް�����</a></li>
					<li><a href="javascript:void(0)"
						onclick="NetfunnelChk.aTag('STORE_LIST','/store/popcorn');return false;"
						title="����/����/����">����/����/����</a></li>
					<!-- <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('STORE_LIST','/store/e-giftcard');return false;" title="����Ʈī��">����Ʈī��</a></li> -->
				</ul>
			</div>
			<div class="list position-6">
				<p class="tit-depth">���� �ް��ڽ�</p>
				<ul class="list-depth mymage">


					<li><a
						href="javascript:movePage('/mypage',						'�α����� �ʿ��� ���� �Դϴ�. \n�α����Ͻðڽ��ϱ�?');"
						title="���� �ް��ڽ� Ȩ">���� �ް��ڽ� Ȩ</a></li>
					<li><a
						href="javascript:movePage('/mypage/bookinglist',			'�α����� �ʿ��� ���� �Դϴ�. \n�α����Ͻðڽ��ϱ�?');"
						title="����/���ų���">����/���ų���</a></li>
					<li><a
						href="javascript:movePage('/mypage/movie-coupon',		'�α����� �ʿ��� ���� �Դϴ�. \n�α����Ͻðڽ��ϱ�?');"
						title="��ȭ������">��ȭ������</a></li>
					<li><a
						href="javascript:movePage('/mypage/store-coupon',		'�α����� �ʿ��� ���� �Դϴ�. \n�α����Ͻðڽ��ϱ�?');"
						title="����ȯ��">����ȯ��</a></li>
					<li><a
						href="javascript:movePage('/mypage/discount-coupon',		'�α����� �ʿ��� ���� �Դϴ�. \n�α����Ͻðڽ��ϱ�?');"
						title="����/��������">����/��������</a></li>

					<li><a
						href="javascript:movePage('/mypage/point-list',			'�α����� �ʿ��� ���� �Դϴ�. \n�α����Ͻðڽ��ϱ�?');"
						title="���������Ʈ">���������Ʈ</a></li>
					<li><a
						href="javascript:movePage('/mypage/moviestory',			'�α����� �ʿ��� ���� �Դϴ�. \n�α����Ͻðڽ��ϱ�?');"
						title="���� �����丮">���� �����丮</a></li>
					<li><a
						href="javascript:movePage('/mypage/myevent',				'�α����� �ʿ��� ���� �Դϴ�. \n�α����Ͻðڽ��ϱ�?');"
						title="���� �̺�Ʈ ���𳻿�">���� �̺�Ʈ ���𳻿�</a></li>
					<li><a
						href="javascript:movePage('/mypage/myinquiry',			'�α����� �ʿ��� ���� �Դϴ�. \n�α����Ͻðڽ��ϱ�?');"
						title="���� ���ǳ���">���� ���ǳ���</a></li>
					<li><a href="#" title="���־��� ���� ī��">���־��� ���� ī��</a></li>
					<li><a
						href="javascript:movePage('/on/oh/ohh/Mypage/mainPage.do?returnURL=info','�α����� �ʿ��� ���� �Դϴ�.');"
						title="ȸ������">ȸ������</a></li>



				</ul>
			</div>

			<div class="list position-7">
				<p class="tit-depth">����</p>

				<ul class="list-depth">
					<li><a href="/benefit/membership" title="����� �ȳ�">����� �ȳ�</a></li>
					<li><a href="/benefit/viplounge" title="VIP LOUNGE">VIP
							LOUNGE</a></li>
					<li><a href="/benefit/discount/guide" title="����/����">����/����</a></li>
				</ul>
			</div>

			<div class="list position-8">
				<p class="tit-depth">������</p>

				<ul class="list-depth">
					<li><a href="/support" title="������ Ȩ">������ Ȩ</a></li>
					<li><a href="/support/faq" title="���ֹ�������">���ֹ�������</a></li>
					<li><a href="/support/notice" title="��������">��������</a></li>
					<li><a href="/support/inquiry" title="1:1����">1:1����</a></li>
					<li><a href="/support/rent" title="��ü/�������">��ü/�������</a></li>
					<li><a href="/support/lost" title="�нǹ�����">�нǹ�����</a></li>
				</ul>
			</div>

			<div class="list position-9">
				<p class="tit-depth">ȸ��Ұ�</p>

				<ul class="list-depth">
					<li><a href="/megaboxinfo" target="_blank" title="�ް��ڽ��Ұ�">�ް��ڽ��Ұ�</a></li>
					<li><a href="/socialcontribution" target="_blank" title="��ȸ����">��ȸ����</a></li>
					<li><a href="/advertize" target="_blank" title="ȫ���ڷ�">ȫ���ڷ�</a></li>
					<li><a href="/partner" target="_blank" title="����/�δ�������">����/�δ�������</a></li>
					<li><a href="/onlinereport" target="_blank" title="�¶�����������">�¶�����������</a></li>
					<li><a href="/ir" target="_blank" title="�ڷ�">IR�ڷ�</a></li>
					<li><a href="/recruit" target="_blank" title="����ä�븲">����ä��</a></li>
					<li><a href="https://jebo.joonganggroup.com/main.do"
						target="_blank" title="�����濵">�����濵</a></li>
				</ul>
			</div>

			<div class="list position-10">
				<p class="tit-depth">�̿���å</p>

				<ul class="list-depth">
					<li><a href="/support/terms" title="�̿���">�̿���</a></li>
					<li><a href="/support/privacy" title="��������ó����ħ">��������ó����ħ</a></li>
					<li><a href="/support/screenrule" title="��ũ�������������ѱ���">��ũ�������������ѱ���</a></li>
				</ul>
			</div>

			<div class="ir">
				<a href="" class="layer-close" title="���̾�ݱ�">���̾�ݱ�</a>
			</div>
		</div>
		<!--// wrap -->
	</div>
	<!--// ���̾� : ����Ʈ�� -->

	<!-- ���̾� : �˻� -->
	<div id="layer_header_search" class="header-layer layer-header-search"></div>
	<!--// ���̾� : �˻� -->

	<!-- ���̾� : ���������� -->




	<div id="layer_mymega" class="header-layer layer-mymege">
		<a href="" class="ir" title="���� �ް��ڽ� ���̾� �Դϴ�.">���� �ް��ڽ� ���̾� �Դϴ�.</a>

		<!-- wrap -->
		<div class="wrap" style="display: none">

			<div class="login-after">
				<div class="user-info">
					<p class="txt">�ȳ��ϼ���!</p>

					<p class="info">
						<!--
                            vip �϶��� ���
                            vip �ƴҶ��� �±� ��ü ����
                        -->
						<em class="vip">VIP PREMIUM</em> <em class="name"></em> <span>ȸ����</span>
					</p>

					<div class="last-date">
						������ ������ : <em></em>
					</div>

					<!-- vip, ����� �������� �� ���  -->
					<div class="membership">
						<!-- <i class="iconset ico-header-vip"></i>
                        <i class="iconset ico-header-film"></i>
                        <i class="iconset ico-header-classic"></i> -->
					</div>

					<div class="btn-fixed">
						<a href="/mypage" class="button" title="����  �ް��ڽ�">���� �ް��ڽ�</a>
					</div>
				</div>

				<div class="box">
					<div class="point">
						<p class="tit">Point</p>

						<p class="count">0</p>

						<div class="btn-fixed">
							<a href="/mypage/point-list" class="button" title="����� ����Ʈ">�����
								����Ʈ</a>
						</div>
					</div>
				</div>

				<div class="box">
					<div class="coupon">
						<p class="tit">
							����/������
							<!-- <i class="iconset ico-header-new"></i> -->
						</p>

						<p class="count">
							<em title="���� ��" class="cpon">0</em> <span title="������ ��"
								class="movie">0</span>
						</p>

						<div class="btn-fixed">
							<a href="/mypage/discount-coupon" class="button" title="����">����</a>
							<a href="/mypage/movie-coupon" class="button" title="������">������</a>
						</div>
					</div>
				</div>

				<div class="box">
					<div class="reserve">
						<p class="tit">
							����
							<!-- <i class="iconset ico-header-new"></i> -->
						</p>

						<p class="txt"></p>

						<div class="btn-fixed">
							<a href="/mypage/bookinglist" class="button" title="���ų���">���ų���
							</a>
						</div>
					</div>
				</div>

				<div class="box">
					<div class="buy">
						<p class="tit">
							����
							<!-- <i class="iconset ico-header-new"></i> -->
						</p>

						<p class="count">
							<em>0</em> <span>��</span>
						</p>
					</div>

					<div class="btn-fixed">
						<a href="/mypage/bookinglist?tab=02" class="button" title="���ų���">���ų���</a>
					</div>
				</div>
			</div>

			<!-- �α��� �� -->
			<div class="login-before">
				<p class="txt">
					�α��� �Ͻø� ���� �ް��ڽ��� ���� �� �־��.<br> ��ȭ�� ����ϴ� ����� ���� �� �´� ���ñ��� Ȯ����
					������!
				</p>

				<div class="mb50">
					<a href="#layer_login_common" id="moveLogin" title="�α���"
						class="button w120px btn-modal-open" w-data="850" h-data="484">�α���</a>
				</div>

				<a href="/join" class="link" title="Ȥ�� ���� ȸ���� �ƴϽŰ���?">Ȥ�� ���� ȸ����
					�ƴϽŰ���?</a>
			</div>
		</div>
		<!--// wrap -->

		<div class="ir">
			<a href="" class="layer-close" title="���̾�ݱ�">���̾�ݱ�</a>
		</div>
	</div>
	<!--// ���̾� : ���������� -->

</header>
<!--// header -->