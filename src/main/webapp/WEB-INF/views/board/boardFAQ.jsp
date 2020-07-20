<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주 묻는 질문 | 라이프씨어터, 쌍용 씨네시티 </title>


<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=yes" />
<link rel="stylesheet" href="../resources/static/css/board.css" media="all" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<c:import url="../template/header_css.jsp"></c:import>

</head>
<body>

	<c:import url="../template/header.jsp"></c:import>

	<div class="body-wrap">


			<input type="hidden" id="idx" value="" />
			<input type="hidden" name="currentPage" value="" />

			<!-- container -->
			<div class="container has-lnb" style="margin-top: 30px;">
				
				<div class="inner-wrap">
					<div class="lnb-area">
						<nav id="lnb">
							<p class="tit" style="width: 100%; font-size: 1.2em; line-height: 90px; color: #fff; text-align: center;">고객센터
							<ul>
								<li class="on"><a href="${board}FAQ" title="자주 묻는 질문">자주 묻는 질문</a></li>
								<li><a href="${board}List" title="공지사항">공지사항</a></li>
						
							</ul>

							<!-- 고객센터 메뉴일때만 출력 -->
							<div class="left-customer-info">
								<p class="tit">
									쌍용 씨네시티 고객센터 <span>Dream center</span>
								</p>
								<p class="tel">1234-0102</p>
								<p class="time">
									<i class="iconset ico-clock"></i> 10:00~19:00
								</p>
							</div>
						</nav>
					</div>

					<div id="contents">
						<h2 class="tit">자주 묻는 질문</h2>


						<!--// tab-block -->

						<div class="faq-list-box">

							<div class="faq-list">
								<ul>

								<li><div class="qut on">
										<a href="#"><p class="tit">
												<span class="font-green">[영화예매]</span>
											</p>
											<p class="txt">
												영화 예매 시 쌍용 씨네마 포인트 선택이 되지않아요
											</p></a>
									</div>
									<div class="awn">
										<p class="cont">
											<span style="font-size: 14px;">적립된 포인트는 사용 가능한 포인트 내에서
												상품 정가 전액 기준으로 사용 가능합니다.<br> <br> ▶구포인트<br>
												&nbsp; - 사용 가능 요일 : 월~금요일(공휴일 제외)<br> &nbsp; - 차감 포인트 :
												티켓 정가 100%<br> <br> ▶신포인트<br> &nbsp; - 사용 가능
												요일 : 월~일요일(요일 무관)<br> &nbsp; - 차감 포인트 : 티켓 정가 100%<br>
												<br> ※ 포인트는 현금 또는 신용카드 등 다른 결제 수단과 합산하여 사용할 수 없습니다.<br>
												※ 특별콘텐트(오페라, 팝콘클래식, 기획전, GV, 라이브중계 등)의 경우 포인트로 관람이 불가합니다.<br>
												※ 더 부티크 프라이빗 관람시 포인트 사용이 불가합니다.
											</span>
										</p>
									</div></li>
								<li><div class="qut">
										<a href="#"><p class="tit">
												<span class="font-green">[홈페이지/모바일]</span>
											</p>
											<p class="txt">
												자주쓰는 카드 등록은 어떻게 하나요?
											</p></a>
									</div>
									<div class="awn">
										<p class="cont">
											<span style="font-size: 14px;">제휴 할인 카드에 한하여 등록 가능하며,
												신용카드 등록은 불가합니다.<br> 등록된 할인카드는 어플 및 모바일 웹을 통한 예매하실 경우
												사용가능합니다.<br> <br> ▶등록 방법<br> <br> * 홈페이지
												: 회원 로그인 후 왼쪽 상단 사이트맵(三 모양)을 선택 - [자주쓰는 할인 카드] 선택 - 이용 동의 후
												카드 등록<br> <br> * 어플/모바일 웹 : 오른쪽 상단 三 모양 선택 또는 하단
												[MY] 선택 - [나의 메가박스] - 하단 [내 정보 관리] - [자주쓰는 할인카드] - 이용동의 후 카드
												등록
											</span>
										</p>
									</div></li>
								<li><div class="qut">
										<a href="#"><p class="tit">
												<span class="font-green">[영화예매]</span>
											</p>
											<p class="txt">
													제휴 예매처 예매 시 포인트 적립/본영화 등록이 가능한가요?
											</p></a>
									</div>
									<div class="awn">
										<p class="cont">
											제휴 예매처[yes24, 맥스무비, 인터파크, SKT VIP]에서 예매하신 경우<br> 예매자 정보와
											메가박스 회원 정보가 일치 시 자동 적립 됩니다.<br> <br> 적립자 변경은 불가하나
											메가박스 회원이 아닌 예매자 정보일 경우<br> 상영시간전까지 현장 매표소 방문 시 적립은
											가능합니다.<br> <br> 본영화 등록은 극장에서 발권하신 티켓 하단의 온라인 예매번호
											12자리를 입력시 등록되며,<br> 본영화 등록시 관람이력에 포함되어 포토카드 제작이 가능합니다.<br>
											(Yes24, 네이버, 맥스무비, 인터파크, SKT, KT, 다음 등)
										</p>
									</div></li>
								<li><div class="qut">
										<a href="#"><p class="tit">
												<span class="font-green">[홈페이지/모바일]</span>
											</p>
											<p class="txt">
												아이디를 바꾸고 싶은데 수정할 수 있나요?
											</p></a>
									</div>
									<div class="awn">
										<p class="cont">
											<span style="font-size: 14px;">회원가입시 입력한 아이디는 변경이
												불가하며,<br> 탈퇴 후 재가입(신규가입)을 통해 새로운 아이디로 지정할 수 있습니다.<br>
												<br> 단, 탈퇴 시 재가입은 30일이후부터 가능합니다.
											</span><br> &nbsp;
										</p>
									</div></li>
								<li><div class="qut">
										<a href="#"><p class="tit">
												<span class="font-green">[홈페이지/모바일]</span>
											</p>
											<p class="txt">
												이름을 개명했는데 어디서 바꾸나요?
											</p></a>
									</div>
									<div class="awn">
										<p class="cont">
											<span style="font-size: 14px;">홈페이지 및 어플 회원 로그인 후 [나의
												메가박스] - [개인정보 수정]에서 [이름변경]을 선택하여주시면<br> 휴대폰 본인인증 또는 아이핀
												인증을 통해 변경 가능합니다.<br> <br> 단, 신용평가기관에 개명된 이름이 먼저
												등록되어 있어야 합니다.
											</span>
										</p>
									</div></li>
								<li><div class="qut">
										<a href="#"><p class="tit">
												<span class="font-green">[결제수단/관람권]</span>
											</p>
											<p class="txt">
												문화누리 카드 사용이 가능한가요?
											</p></a>
									</div>
									<div class="awn">
										<p class="cont">
											<span style="font-size: 14px;">온라인 및 현장에서 결제 가능하며 잔여금액
												부족시 사용 불가합니다.<br> <br> 문화누리 카드 사용시 성인/청소년 관람료 선택시
												2,500원이 청구 할인 되며 일반관에 한하여 할인 가능합니다.<br> (단,
												조조/심야/우대/마티네/어린이 등 기타 중복할인 불가)<br> 문화누리카드 할인 이용시
												문화누리카드로만 결제 가능합니다.<br> <br> 할인제외 상영관 : 더부티크, 컴포트,
												특별관 및 특별콘텐트, 기타 콘텐트<br> 할인제외 지점 : 센트럴, 일산벨라시타, 삼천포,
												광주하남, 광주상무, 속초, 김천, 아트나인
											</span><br> &nbsp;
										</p>
									</div></li>




									<li><div class="qut">
											<a href="#"><p class="tit">
													<span class="font-green">[영화예매]</span>
												</p>
												<p class="txt">
													영화 관람등급은 어떻게 되나요?
												</p></a>
										</div>
										<div class="awn">
											<p class="cont">
												<span style="font-size: 14px;"><strong>전체
														관람가</strong> : 모든 연령의 고객이 관람 가능<br> &nbsp;<br> <strong>12세
														이상 관람가</strong> : 만12세 이상(주민등록상 생일기준) 관람 가능<br>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;만12세 미만 고객은 보호자(성인) 동반 시 관람 가능<br> <br> <strong>15세
														이상 관람가</strong> : 만15세 이상(주민등록상 생일기준) 관람 가능<br>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp; 만15세 미만 고객은 보호자(성인 동반 시 관람 가능<br> <br> <strong>청소년
														관람불가</strong> : 만18세 이상(주민등록상 생일기준) 관람 가능<br>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp; -&nbsp; 만18세 이상이더라도 고등학교 재학중인 경우 관람 불가<br>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													- 신분증 지참 필수 (티켓 구매, 입장 시 신분증 확인 必)<br>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;만18세 미만 고객은 보호자(성인) 동반 시에도 관람 불가<br> <br> <span
													style="color: rgb(192, 57, 43);"><strong>*
															보호자(성인) : 만 20세 이상의 성인</strong></span></span>
											</p>
										</div></li>


								<li><div class="qut">
										<a href="#"><p class="tit">
												<span class="font-green">[홈페이지/모바일]</span>
											</p>
											<p class="txt">
												일행이 구매한 티켓은 본영화 등록이 불가한가요?
											</p></a>
									</div>
									<div class="awn">
										<p class="cont">
											<span style="font-size: 14px;">같이 동반하신 고객에게 등록된 내역도
												구매하신 관람인원수 만큼 등록 가능하며,<br> 동일 계정에 중복 등록은 불가합니다.
											</span>
										</p>
									</div></li>

								<li><div class="qut">
										<a href="#"><p class="tit">
												<span class="font-green">[홈페이지/모바일]</span>
											</p>
											<p class="txt">
												아이디와 비밀번호를 잃어버렸습니다.
											</p></a>
									</div>
									<div class="awn">
										<p class="cont">
											<span style="font-size: 12px;">로그인 화면 하단에 ID/PW찾기 버튼을
												통해 확인하실 수 있습니다.<br> <br> 아이디 찾기의 경우,<br> 기존
												회원정보에 등록된 휴대폰번호가 변경된 경우, 본인인증 찾기를 통해서 확인하실 수 있습니다.&nbsp;<br>
												&nbsp;
											</span>
											<p>
											<span style="font-size: 12px;">* ID/PW 찾기가 원활하지 않을 경우,<br>
												&nbsp;&nbsp;대표번호 1544-0070 (운영시간 09:00~21:00) &gt; 상담원 연결 후
												문의주시기 바랍니다.
											</span>
											</p>
										</p>
											
									</div></li>

								<li><div class="qut">
										<a href="#"><p class="tit">
												<span class="font-green">[극장]</span>
											</p>
											<p class="txt">
												외부음식 반입이 가능한가요?
											</p></a>
									</div>
									<div class="awn">
										<p class="cont">
											<span style="font-size: 14px;">상영관 내 외부 음식 반입은 가능하나<br>
												영화 관람 시 다른 고객님에게 방해가 되지않은 품목에 한하여 반입 가능합니다.<br> <br>
												강한 냄새 및 지속적인 소음이 발생하는 품목은 취식 후 입장해주시길 부탁드리며,<br> 쾌적한 관람
												환경을 위해 많은 양해 부탁드립니다.
											</span>
										</p>
									</div></li>
							</ul>
							</div>
						</div>




			<script type="text/javascript">

				$(".qut").click(function(){
					$(this).toggleClass('on');
				});
		
			</script>








						<!-- pagination -->
						<nav class="pagination"></nav>
						<!--// pagination -->
					</div>
				</div>
			</div>
	
			

			<div class="quick-area">
				<a href="" class="btn-go-top" title="top">top</a>
			</div>

			<!-- footer -->
			<footer id="footer">
				<!-- footer-top -->
				<div class="footer-top">
					<div class="inner-wrap">
						<ul class="fnb">
							<li><a href="/megaboxinfo" title="회사소개 페이지로 이동">회사소개</a></li>
							<li><a href="/recruit" title="인재채용 페이지로 이동">인재채용</a></li>
							<li><a href="/socialcontribution" title="사회공헌 페이지로 이동">사회공헌</a></li>
							<li><a href="/partner" title="제휴/광고/부대사업문의 페이지로 이동">제휴/광고/부대사업문의</a></li>
							<li><a href="/support/terms" title="이용약관 페이지로 이동">이용약관</a></li>
							<li class="privacy"><a href="/support/privacy"
								title="개인정보처리방침 페이지로 이동">개인정보처리방침</a></li>
							<li><a href="https://jebo.joonganggroup.com/main.do"
								target="_blank" title="윤리경영 페이지로 이동">윤리경영</a></li>
						</ul>

						<a href="#layer_looking_theater" class="btn-looking-theater"
							title="극장찾기"><i class="iconset ico-footer-search"></i> 극장찾기</a>
					</div>
				</div>
				<!--// footer-top -->

				<!-- footer-bottom -->
				<div class="footer-bottom">
					<div class="inner-wrap">
						<div class="ci">MEGABOX : Life Theater</div>

						<div class="footer-info">
							<div>
								<address>서울특별시 성동구 왕십리로 50, 6층(성수동 1가, 메가박스스퀘어)</address>
								<p>ARS 1544-0070</p>
							</div>
							<p>대표자명 김진선</p>
							<p>&middot; 개인정보보호책임자 조상연</p>
							<p>&middot; 사업자등록번호 211-86-59478</p>
							<p>&middot; 통신판매업신고번호 제 833호</p>
							<p class="copy">COPYRIGHT &copy; MegaboxJoongAng, Inc. All
								rights reserved</p>
						</div>

						<div class="footer-sns">
							<a href="https://twitter.com/megaboxon" target="_blank"
								title="MEGABOX 트위터 페이지로 이동"><i class="iconset ico-twitter">트위터</i></a>
							<a href="https://www.facebook.com/megaboxon" target="_blank"
								title="MEGABOX 페이스북 페이지로 이동"><i class="iconset ico-facebook">페이스북</i></a>
							<a href="http://instagram.com/megaboxon" target="_blank"
								title="MEGABOX 인스타그램 페이지로 이동"><i
								class="iconset ico-instagram">인스타그램</i></a> <a
								href="https://play.google.com/store/apps/details?id=com.megabox.mop"
								target="_blank" title="MEGABOX 구글플레이 페이지로 이동"><i
								class="iconset ico-googleplay">구글플레이</i></a> <a
								href="https://itunes.apple.com/kr/app/megabox/id894443858?l=ko&ls=1&mt=8"
								target="_blank" title="MEGABOX 앱스토어 페이지로 이동"><i
								class="iconset ico-appstore">앱스토어</i></a>
						</div>
					</div>
				</div>
				<!--// footer-bottom -->
				<div id="layer_looking_theater" class="layer-looking-theater"></div>
			</footer>
			<!--// footer -->

			<!-- 모바일 때만 출력 -->
			<div class="go-mobile">
				<a href="#" data-url="https://m.megabox.co.kr">모바일웹으로 보기 <i
					class="iconset ico-go-mobile"></i></a>
			</div>
	</div>
	<form id="mainForm"></form>
	

</body>
</html>