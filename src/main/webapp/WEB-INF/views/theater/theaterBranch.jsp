<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:import url="../template/header_css.jsp"></c:import>

</head>

<body>

	<c:import url="../template/header.jsp"></c:import>

	<div id="schdlContainer" class="container">
		<div class="page-util">
			<div class="inner-wrap">
				<div class="location">
					<span>Home</span> <a href="/theater/list" title="극장 페이지로 이동">극장</a>
					<a href="/theater/list" title="전체극장 페이지로 이동">전체극장</a> <a
						href="https://www.megabox.co.kr/theater?brchNo=1372"
						title="극장정보 페이지로 이동">극장정보</a>
				</div>
			</div>
		</div>

		<!-- contents -->
		<div id="contents" class="no-padding">

			<!-- theater-detail-page -->
			<div class="theater-detail-page">

				<div class="bg-img"
					style="background-image: url('/static/pc/images/theater/img-theater-detail.jpg');"></div>
				<div class="bg-pattern"></div>
				<div class="bg-mask"></div>

				<!-- theater-all -->
				<div class="theater-all">
					<!-- theater-area-list -->
					<div class="theater-area-list">
						<ul class="area-depth1">


							<li><a href="" class="depth1" title="서울 선택">서울</a>
								<div class="area-depth2">
									<ul>

										<li class="on"><a href="/theater?brchNo=1372"
											title="강남 상세보기">강남 </a></li>

										<li><a href="/theater?brchNo=1359" title="강남대로(씨티) 상세보기">강남대로(씨티)


										</a></li>

										<li><a href="/theater?brchNo=1341" title="강동 상세보기">강동


										</a></li>

										<li><a href="/theater?brchNo=1431" title="군자 상세보기">군자


										</a></li>

										<li><a href="/theater?brchNo=1003" title="동대문 상세보기">동대문


										</a></li>

										<li><a href="/theater?brchNo=1572" title="마곡 상세보기">마곡


										</a></li>

										<li><a href="/theater?brchNo=1581" title="목동 상세보기">목동


										</a></li>

										<li><a href="/theater?brchNo=1311" title="상봉 상세보기">상봉


										</a></li>

										<li><a href="/theater?brchNo=1211" title="상암월드컵경기장 상세보기">상암월드컵경기장


										</a></li>

										<li><a href="/theater?brchNo=1331" title="성수 상세보기">성수


										</a></li>

										<li><a href="/theater?brchNo=1371" title="센트럴 상세보기">센트럴


										</a></li>

										<li><a href="/theater?brchNo=1381" title="송파파크하비오 상세보기">송파파크하비오


										</a></li>

										<li><a href="/theater?brchNo=1202" title="신촌 상세보기">신촌


										</a></li>

										<li><a href="/theater?brchNo=1221" title="은평 상세보기">은평


										</a></li>

										<li><a href="/theater?brchNo=1561" title="이수 상세보기">이수


										</a></li>

										<li><a href="/theater?brchNo=1321" title="창동 상세보기">창동


										</a></li>

										<li><a href="/theater?brchNo=1351" title="코엑스 상세보기">코엑스


										</a></li>

										<li><a href="/theater?brchNo=1212" title="홍대 상세보기">홍대


										</a></li>

										<li><a href="/theater?brchNo=1571" title="화곡 상세보기">화곡


										</a></li>

										<li><a href="/theater?brchNo=1562" title="ARTNINE 상세보기">ARTNINE


										</a></li>

									</ul>
								</div></li>


							<li><a href="" class="depth1" title="경기 선택">경기</a>
								<div class="area-depth2">
									<ul>

										<li><a href="/theater?brchNo=4121" title="고양스타필드 상세보기">고양스타필드


										</a></li>

										<li><a href="/theater?brchNo=4152" title="김포한강신도시 상세보기">김포한강신도시


										</a></li>

										<li><a href="/theater?brchNo=4721" title="남양주 상세보기">남양주


										</a></li>

										<li><a href="/theater?brchNo=4451" title="동탄 상세보기">동탄


										</a></li>

										<li><a href="/theater?brchNo=4652" title="미사강변 상세보기">미사강변


										</a></li>

										<li><a href="/theater?brchNo=4113" title="백석 상세보기">백석


										</a></li>

										<li><a href="/theater?brchNo=4722" title="별내 상세보기">별내


										</a></li>

										<li><a href="/theater?brchNo=4221" title="부천스타필드시티 상세보기">부천스타필드시티


										</a></li>

										<li><a href="/theater?brchNo=4631" title="분당 상세보기">분당


										</a></li>

										<li><a href="/theater?brchNo=4411" title="수원 상세보기">수원


										</a></li>

										<li><a href="/theater?brchNo=4421" title="수원남문 상세보기">수원남문


										</a></li>

										<li><a href="/theater?brchNo=4291" title="시흥배곧 상세보기">시흥배곧


										</a></li>

										<li><a href="/theater?brchNo=4253" title="안산중앙 상세보기">안산중앙


										</a></li>

										<li><a href="/theater?brchNo=4821" title="양주 상세보기">양주


										</a></li>

										<li><a href="/theater?brchNo=4431" title="영통 상세보기">영통


										</a></li>

										<li><a href="/theater?brchNo=0012" title="용인기흥 상세보기">용인기흥




												<i class="iconset ico-theater-new"></i>






										</a></li>

										<li><a href="/theater?brchNo=4462" title="용인테크노밸리 상세보기">용인테크노밸리


										</a></li>

										<li><a href="/theater?brchNo=4804" title="의정부민락 상세보기">의정부민락


										</a></li>

										<li><a href="/theater?brchNo=4111" title="일산 상세보기">일산


										</a></li>

										<li><a href="/theater?brchNo=4104" title="일산벨라시타 상세보기">일산벨라시타


										</a></li>

										<li><a href="/theater?brchNo=4112" title="킨텍스 상세보기">킨텍스


										</a></li>

										<li><a href="/theater?brchNo=4132" title="파주금촌 상세보기">파주금촌


										</a></li>

										<li><a href="/theater?brchNo=4115" title="파주운정 상세보기">파주운정


										</a></li>

										<li><a href="/theater?brchNo=4131" title="파주출판도시 상세보기">파주출판도시


										</a></li>

										<li><a href="/theater?brchNo=4501" title="평택 상세보기">평택


										</a></li>

										<li><a href="/theater?brchNo=4651" title="하남스타필드 상세보기">하남스타필드


										</a></li>

									</ul>
								</div></li>


							<li><a href="" class="depth1" title="인천 선택">인천</a>
								<div class="area-depth2">
									<ul>

										<li><a href="/theater?brchNo=4041" title="검단 상세보기">검단


										</a></li>

										<li><a href="/theater?brchNo=4062" title="송도 상세보기">송도


										</a></li>

										<li><a href="/theater?brchNo=4001" title="영종 상세보기">영종


										</a></li>

										<li><a href="/theater?brchNo=4051" title="인천논현 상세보기">인천논현


										</a></li>

										<li><a href="/theater?brchNo=4042" title="청라 상세보기">청라


										</a></li>

										<li><a href="/theater?brchNo=4043" title="청라지젤 상세보기">청라지젤


										</a></li>

									</ul>
								</div></li>


							<li><a href="" class="depth1" title="대전/충청/세종 선택">대전/충청/세종</a>
								<div class="area-depth2">
									<ul>

										<li><a href="/theater?brchNo=3141" title="공주 상세보기">공주


										</a></li>

										<li><a href="/theater?brchNo=3021" title="대전 상세보기">대전


										</a></li>

										<li><a href="/theater?brchNo=0009" title="대전유성 상세보기">대전유성


										</a></li>

										<li><a href="/theater?brchNo=3011" title="대전중앙로 상세보기">대전중앙로


										</a></li>

										<li><a href="/theater?brchNo=0017" title="대전현대아울렛 상세보기">대전현대아울렛






												<i class="iconset ico-theater-open"></i>




										</a></li>

										<li><a href="/theater?brchNo=3391" title="세종(조치원) 상세보기">세종(조치원)


										</a></li>

										<li><a href="/theater?brchNo=3392" title="세종나성 상세보기">세종나성


										</a></li>

										<li><a href="/theater?brchNo=0008" title="세종청사 상세보기">세종청사






												<i class="iconset ico-theater-open"></i>




										</a></li>

										<li><a href="/theater?brchNo=3631" title="오창 상세보기">오창


										</a></li>

										<li><a href="/theater?brchNo=3901" title="제천 상세보기">제천


										</a></li>

										<li><a href="/theater?brchNo=3651" title="진천 상세보기">진천


										</a></li>

										<li><a href="/theater?brchNo=3301" title="천안 상세보기">천안


										</a></li>

										<li><a href="/theater?brchNo=3611" title="청주사창 상세보기">청주사창


										</a></li>

										<li><a href="/theater?brchNo=3801" title="충주 상세보기">충주


										</a></li>

										<li><a href="/theater?brchNo=3501" title="홍성내포 상세보기">홍성내포


										</a></li>

									</ul>
								</div></li>


							<li><a href="" class="depth1" title="부산/대구/경상 선택">부산/대구/경상</a>
								<div class="area-depth2">
									<ul>

										<li><a href="/theater?brchNo=6701" title="거창 상세보기">거창


										</a></li>

										<li><a href="/theater?brchNo=7602" title="경북도청 상세보기">경북도청


										</a></li>

										<li><a href="/theater?brchNo=7122" title="경산하양 상세보기">경산하양


										</a></li>

										<li><a href="/theater?brchNo=7801" title="경주 상세보기">경주


										</a></li>

										<li><a href="/theater?brchNo=7303" title="구미강동 상세보기">구미강동


										</a></li>

										<li><a href="/theater?brchNo=7401" title="김천 상세보기">김천


										</a></li>

										<li><a href="/theater?brchNo=7901" title="남포항 상세보기">남포항


										</a></li>

										<li><a href="/theater?brchNo=7022" title="대구(칠성로) 상세보기">대구(칠성로)


										</a></li>

										<li><a href="/theater?brchNo=7011"
											title="대구신세계(동대구) 상세보기">대구신세계(동대구) </a></li>

										<li><a href="/theater?brchNo=7012" title="대구이시아 상세보기">대구이시아


										</a></li>

										<li><a href="/theater?brchNo=6161" title="덕천 상세보기">덕천


										</a></li>

										<li><a href="/theater?brchNo=6312" title="마산 상세보기">마산


										</a></li>

										<li><a href="/theater?brchNo=7451" title="문경 상세보기">문경


										</a></li>

										<li><a href="/theater?brchNo=6001" title="부산극장 상세보기">부산극장


										</a></li>

										<li><a href="/theater?brchNo=6906" title="부산대 상세보기">부산대


										</a></li>

										<li><a href="/theater?brchNo=7021" title="북대구(칠곡) 상세보기">북대구(칠곡)


										</a></li>

										<li><a href="/theater?brchNo=6641" title="사천 상세보기">사천


										</a></li>

										<li><a href="/theater?brchNo=6642" title="삼천포 상세보기">삼천포


										</a></li>

										<li><a href="/theater?brchNo=6261" title="양산 상세보기">양산


										</a></li>

										<li><a href="/theater?brchNo=6262" title="양산라피에스타 상세보기">양산라피에스타


										</a></li>

										<li><a href="/theater?brchNo=6811" title="울산 상세보기">울산


										</a></li>

										<li><a href="/theater?brchNo=6191" title="정관 상세보기">정관


										</a></li>

										<li><a href="/theater?brchNo=6421" title="창원 상세보기">창원


										</a></li>

										<li><a href="/theater?brchNo=0014" title="창원내서 상세보기">창원내서






												<i class="iconset ico-theater-open"></i>




										</a></li>

										<li><a href="/theater?brchNo=6121" title="해운대(장산) 상세보기">해운대(장산)


										</a></li>

									</ul>
								</div></li>


							<li><a href="" class="depth1" title="광주/전라 선택">광주/전라</a>
								<div class="area-depth2">
									<ul>

										<li><a href="/theater?brchNo=5021" title="광주상무 상세보기">광주상무


										</a></li>

										<li><a href="/theater?brchNo=5061" title="광주하남 상세보기">광주하남


										</a></li>

										<li><a href="/theater?brchNo=5901" title="남원 상세보기">남원


										</a></li>

										<li><a href="/theater?brchNo=5302" title="목포하당(포르모) 상세보기">목포하당(포르모)


										</a></li>

										<li><a href="/theater?brchNo=5612" title="송천 상세보기">송천


										</a></li>

										<li><a href="/theater?brchNo=5401" title="순천 상세보기">순천


										</a></li>

										<li><a href="/theater?brchNo=5552" title="여수웅천 상세보기">여수웅천


										</a></li>

										<li><a href="/theater?brchNo=0010" title="전대(광주) 상세보기">전대(광주)


										</a></li>

										<li><a href="/theater?brchNo=5064" title="첨단 상세보기">첨단


										</a></li>

									</ul>
								</div></li>


							<li><a href="" class="depth1" title="강원 선택">강원</a>
								<div class="area-depth2">
									<ul>

										<li><a href="/theater?brchNo=2001" title="남춘천 상세보기">남춘천


										</a></li>

										<li><a href="/theater?brchNo=2171" title="속초 상세보기">속초


										</a></li>

										<li><a href="/theater?brchNo=2201" title="원주 상세보기">원주


										</a></li>

										<li><a href="/theater?brchNo=2202" title="원주센트럴 상세보기">원주센트럴


										</a></li>

									</ul>
								</div></li>


							<li><a href="" class="depth1" title="제주 선택">제주</a>
								<div class="area-depth2">
									<ul>

										<li><a href="/theater?brchNo=6901" title="제주 상세보기">제주


										</a></li>

									</ul>
								</div></li>

						</ul>
					</div>
					<!--// theater-area-list -->

					<p class="name">강남</p>

					<div class="btn-util right">

						<div class="block">




							<button type="button" class="btn btn-like tooltip click">
								<i class="iconset ico-like-line"></i> <span>선호극장</span> <span
									class="ir" data-width="235"> <span class="cont-area">
										<span class="login-alert-tooltip"> 로그인이 필요한 서비스 입니다.<br>
											<a href="" id="moveLogin" title="로그인하기">로그인하기 <i
												class="iconset ico-arr-right-green"></i></a>
									</span>
								</span>
								</span>
							</button>


						</div>
					</div>
				</div>
				<!--// theater-detail-cont -->
			</div>
			<!--// theater-detail-page -->

			<div class="inner-wrap pt40">

				<div class="tab-list fixed mb40 tab-layer">
					<ul>
						<li class="on"><a href="#tab01" title="극장정보 탭으로 이동">극장정보</a></li>
						<li><a href="#tab02" title="상영시간표 탭으로 이동">상영시간표</a></li>
						<li><a href="#tab03" title="관람료 탭으로 이동">관람료</a></li>
					</ul>
				</div>

				<div class="tab-cont-wrap">
					<div id="tab01" class="tab-cont on">

						<div class="theater-info-text mt40">
							<p class="big">
								강남의 중심! 강남 소비문화의 중심지인 지하철 2호선 , 신분당선 - 강남역과 연결<br>로맨틱
								멀티플렉스! 젊은 도시 강남이 한 눈에 보이는 최상의 View를 제공
							</p>
							<p>&lt;프라다&gt;가 선택한 수려한 디자인의 상영관 의자를 체험해보세요!</p>
						</div>



						<h2 class="tit small mt70">시설안내</h2>



						<h3 class="tit small">보유시설</h3>

						<div class="theater-facility">



							<p>
								<i class="iconset ico-facility-theater"></i>일반상영관
							</p>





							<p>
								<i class="iconset ico-facility-disabled"></i>장애인석
							</p>






						</div>



						<h3 class="tit small mt30">층별안내</h3>

						<ul class="dot-list">

							<li><span class="font-gblue">8층 : </span> 매표소, 매점, 에스컬레이터,
								엘리베이터 , 남자 · 여자 화장실, 비상계단 3</li>

							<li><span class="font-gblue">9층 : </span> 1관, 2관, 남자 · 여자
								화장실, 엘리베이터, 비상계단3</li>

							<li><span class="font-gblue">10층 : </span> 3관, 4관, 엘리베이터2,
								남자 · 여자 화장실, 비상계단 3</li>

							<li><span class="font-gblue">11층 : </span> 5관, 6관, 7관,
								엘리베이터2, 남자 · 여자 화장실, 비상계단 3</li>

						</ul>


						<h2 class="tit small mt70">교통안내</h2>

						<h3 class="tit small">약도</h3>

						<ul class="dot-list">
							<li><span class="font-gblue">도로명주소 : </span> 서울 서초구 서초대로77길
								3 아라타워 8층 메가박스 강남지점</li>

						</ul>

						<div class="location-map-btn mt15">
							<div class="btn-group left">
								<a
									href="http://m.map.naver.com/map.nhn?lng=127.0264086&amp;lat=37.498214&amp;level=2"
									class="button purple" target="_blank" title="새창열림">실시간 길찾기</a>
							</div>
						</div>



						<h3 class="tit small mt30">주차</h3>

						<div class="parking-info">


							<div class="parking-section">
								<div class="icon-box">
									<i class="iconset ico-parking" title="주차안내">주차안내</i>
								</div>

								<div class="info">
									<p class="tit">주차안내</p>

									<ul class="dot-list">

										<li>아라타워 건물 內 지하 3층 ~ 지하 6층 주차장 이용</li>

									</ul>
								</div>
							</div>



							<div class="parking-section">
								<div class="icon-box">
									<i class="iconset ico-parking-confirm" title="주차확인">주차확인</i>
								</div>

								<div class="info">
									<p class="tit">주차확인</p>

									<ul class="dot-list">

										<li>매표소에서 당일 관람 티켓 인증 후, 차량 번호 할인 등록하여 지하 정산소에서 결제</li>

									</ul>
								</div>
							</div>



							<div class="parking-section">
								<div class="icon-box">
									<i class="iconset ico-cash" title="주차요금">주차요금</i>
								</div>

								<div class="info">
									<p class="tit">주차요금</p>

									<ul class="dot-list">

										<li>주차 요금은 입차시간을 기준으로 합니다.</li>

										<li>영화 관람 시 3시간 → 3,000원(3시간 초과 시 10분당 1,000원 부과, 초과비용 출차
											시 정산)</li>

										<li>건물 내 타 매장과 주차 할인 중복 적용 불가.</li>

										<li>입차시 최대 3시간 30분까지 할인 가능(차량 1대에 주차 할인 적용 2회 이상 불가)</li>

										<li>주차 공간이 협소하므로 가급적이면 대중교통을 이용 바랍니다. (지하철 2호선 강남역 출구 9번
											출구)</li>

									</ul>
								</div>
							</div>

						</div>





						<h3 class="tit small mt30">대중교통</h3>

						<!-- location-info -->
						<div class="public-transportation">

							<!-- 버스 정보 -->

							<div class="transportation-section">
								<div class="icon-box">
									<i class="iconset ico-bus" title="버스">버스</i>
								</div>

								<div class="info">
									<p class="tit">버스</p>
									<ul class="dot-list">

										<li>140번, 144번, 145번, 146번, 360번, 402번, 407번, 408번, 420번,
											440번, 441번, 462번, 470번, 471번</li>

										<li>3412번, 4412번, 서초03번, 서초 09번</li>

										<li>9404번, 9408번, 9409번, 9503번, 9711번, 9500번, 9501번,
											9510번, 9800번, 9801번, 9802번, 9901번, M4403번, M7412번</li>

									</ul>
								</div>
							</div>


							<!-- 지하철 정보 -->

							<div class="transportation-section">
								<div class="icon-box">
									<i class="iconset ico-metro" title="지하철">지하철</i>
								</div>

								<div class="info">
									<p class="tit">지하철</p>
									<ul class="dot-list">

										<li>지하철 2호선 , 신분당선 ‘강남역 -&gt; 지하철 9번(구 5번) 출구 좌측 연결통로 이용</li>

									</ul>
								</div>
							</div>


							<!-- 대중교통 정보가 없는 경우 -->

						</div>


						<!--// location-info -->



						<div id="brchNoti">
							<h2 class="tit small mt70">공지사항</h2>

							<!-- accordion-list -->
							<div class="accordion-list">
								<ul>
									<li><div class="title ">
											<a href="" title="[강남] 운영시간 임시 조정 안내">
												<div class="cont-tit">[강남] 운영시간 임시 조정 안내</div>
												<p class="cont-admin">강남</p>
												<p class="cont-date">2020.04.03</p>
											</a>
										</div>
										<div class="content" style="display: none">
											안녕하세요.<br> 메가박스 강남지점입니다.<br> 코로나19 확산 예방에 동참하고자
											운영시간이 임시 조정되오니<br> 홈페이지나 어플 상영시간표를 참고하시어 영화관 이용 부탁드립니다.<br>
											<br> - 운영시간 조정 적용일 : 2020년 4월 1일(수) ~<br>
											&nbsp;(매표, 매점 운영시간 : 13시 30분 ~ 20시 30분)<br> <br>
											지속적인 방역과 소독관리를 통해 안전한 관람 환경 조성에 최선을 다하겠습니다.<br> 감사합니다.
										</div></li>
									<li><div class="title ">
											<a href="" title="[강남] 영화 관람 요금 변경 안내">
												<div class="cont-tit">[강남] 영화 관람 요금 변경 안내</div>
												<p class="cont-admin">강남</p>
												<p class="cont-date">2020.01.06</p>
											</a>
										</div>
										<div class="content" style="display: none">
											<p>
												안녕하십니까.<br> 메가박스 강남지점입니다.<br> &nbsp;<br>
												2020년 1월6일(월)부터 영화 관람 요금이 일부 조정됩니다.<br> &nbsp;<br>
												- 조정내용<br> &nbsp;<br> 주말 청소년 조조 요금: 기존 6,000원 →
												7,000원(상영관 별 첫 회차 영화)<br> &nbsp;<br> 앞으로도 고객님의 많은
												관심과 사랑 부탁드리며,<br> 더욱 나아진 서비스로 고객님의 성원에 보답하는 메가박스 강남지점이
												되겠습니다.<br> &nbsp;<br> 감사합니다.<br> &nbsp;
											</p>
										</div></li>
									<li><div class="title ">
											<a href="" title="[강남] 2019년 상반기 소방 작동기능점검 실시 안내">
												<div class="cont-tit">[강남] 2019년 상반기 소방 작동기능점검 실시 안내</div>
												<p class="cont-admin">강남</p>
												<p class="cont-date">2019.02.07</p>
											</a>
										</div>
										<div class="content" style="display: none">
											<p>
												<span
													style="color: rgb(0, 0, 0); font-family: 메가박스 라이프; font-size: 10pt;">안녕하십니까.
													메가박스 강남지점입니다.</span>
											</p>

											<p>
												<br> <span
													style="color: rgb(0, 0, 0); font-family: 메가박스 라이프; font-size: 10pt;">고객님의
													안전한 영화 관람을 위하여 2019년도 상반기&nbsp;소방 작동기능점검을 실시할 예정입니다.</span>
											</p>

											<p>
												<span
													style="color: rgb(0, 0, 0); font-family: 메가박스 라이프; font-size: 10pt;">아래의
													내용 확인하시어 영화관 이용에&nbsp;참고해 주시기 바랍니다.</span>
											</p>

											<p>&nbsp;</p>

											<p>
												<strong><span
													style="color: rgb(0, 0, 0); font-family: 메가박스 라이프; font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
													-&nbsp;내 용&nbsp;-</strong>
											</p>

											<p>&nbsp;</p>

											<p>
												<span
													style="color: rgb(0, 0, 0); font-family: 메가박스 라이프; font-size: 10pt;">1.
												</span> <span
													style="color: rgb(0, 0, 0); font-family: 메가박스 라이프; font-size: 10pt;">시행
													일시:</span><span
													style="color: rgb(0, 0, 0); font-family: 메가박스 라이프; font-size: 10pt;">&nbsp;2019년
													2월 11일(월)~2월 12일(화) 09:00~16:00(2일 진행)</span>
											</p>

											<p>&nbsp;</p>

											<p>
												<span
													style="color: rgb(0, 0, 0); font-family: 메가박스 라이프; font-size: 10pt;">2.&nbsp;</span><span
													style="color: rgb(0, 0, 0); font-family: 메가박스 라이프; font-size: 10pt;">안내</span><span
													style="color: rgb(0, 0, 0); font-family: 메가박스 라이프; font-size: 10pt;">
													사항:</span><span
													style="color: rgb(0, 0, 0); font-family: 메가박스 라이프; font-size: 10pt;">
													점검 시간 동안 간헐적으로 소음(경종, 싸이렌, 비상 방송) 발생 및 시각 경보기가&nbsp;작동할 수
													있습니다.</span>
											</p>

											<p>
												<span
													style="color: rgb(0, 0, 0); font-family: 메가박스 라이프; font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;다소
													불편하시더라도 많은 양해 부탁 드립니다.</span>
											</p>

											<p>&nbsp;</p>

											<p>
												<span
													style="color: rgb(0, 0, 0); font-family: 메가박스 라이프; font-size: 10pt;">감사합니다.</span>
											</p>
										</div></li>
									<li><div class="title ">
											<a href="" title="[강남] 건물 주차장 이용 제한 안내">
												<div class="cont-tit">[강남] 건물 주차장 이용 제한 안내</div>
												<p class="cont-admin">강남</p>
												<p class="cont-date">2018.08.07</p>
											</a>
										</div>
										<div class="content" style="display: none">
											<p malgun=""
												style="margin: 0px; padding: 0px; line-height: normal; font-family: dotum, 돋움, Apple-Gothic,; font-size: 20.79px; font-stretch: normal;">
												<span
													style="color: rgb(0, 0, 0); font-family:; -ms-word-break: break-all;">안녕하세요,<br>
													메가박스 강남지점입니다.&nbsp;
												</span>
											</p>

											<p malgun=""
												style="margin: 0px; padding: 0px; line-height: normal; font-family: dotum, 돋움, Apple-Gothic,; font-size: 20.79px; font-stretch: normal;">&nbsp;</p>

											<p malgun=""
												style="margin: 0px; padding: 0px; line-height: normal; font-family: dotum, 돋움, Apple-Gothic,; font-size: 20.79px; font-stretch: normal;">
												<span
													style="color: rgb(0, 0, 0); font-family:; -ms-word-break: break-all;">'드루킹'
													특검 수사 진행 기간 동안 강남역 일대&nbsp;</span><span
													style="color: rgb(0, 0, 0); font-family:; -ms-word-break: break-all;">교통
													통행 제한&nbsp;</span><span
													style="color: rgb(0, 0, 0); font-family:; -ms-word-break: break-all;">및&nbsp;</span><span
													style="color: rgb(0, 0, 0); font-family:; -ms-word-break: break-all;">불편이
													많을 것으로 예상되오니 참고 부탁드립니다.</span>
											</p>

											<p malgun=""
												style="margin: 0px; padding: 0px; line-height: normal; font-family: dotum, 돋움, Apple-Gothic,; font-size: 20.79px; font-stretch: normal;">&nbsp;</p>

											<p malgun=""
												style="margin: 0px; padding: 0px; line-height: normal; font-family: dotum, 돋움, Apple-Gothic,; font-size: 20.79px; font-stretch: normal;">
												<span
													style="color: rgb(0, 0, 0); font-family:; -ms-word-break: break-all;">영화
													관람 예정 고객께서는 주차장 이용에 제한이 있을 수 있으니<br> 가급적 대중교통을 이용해주시기
													바랍니다.
												</span>
											</p>

											<p malgun=""
												style="margin: 0px; padding: 0px; line-height: normal; font-family: dotum, 돋움, Apple-Gothic,; font-size: 20.79px; font-stretch: normal;">&nbsp;</p>

											<p malgun=""
												style="margin: 0px; padding: 0px; line-height: normal; font-family: dotum, 돋움, Apple-Gothic,; font-size: 20.79px; font-stretch: normal;">
												<span
													style="color: rgb(0, 0, 0); font-family:; -ms-word-break: break-all;">감사합니다.</span>
											</p>
										</div></li>
									<li><div class="title ">
											<a href="" title="[강남] 2018년 하반기 소방 종합정밀점검 안내">
												<div class="cont-tit">[강남] 2018년 하반기 소방 종합정밀점검 안내</div>
												<p class="cont-admin">강남</p>
												<p class="cont-date">2018.08.06</p>
											</a>
										</div>
										<div class="content" style="display: none">
											<p>안녕하십니까,</p>

											<p>메가박스 강남지점입니다.</p>

											<p>&nbsp;</p>

											<p>고객님의 안전한 영화 관람을 위하여 2018년도 하반기 소방 종합정밀점검을 실시할 예정입니다.</p>

											<p>아래의 내용 확인하시어 영화관 이용에 참고해 주시기 바랍니다.</p>

											<p>&nbsp;</p>

											<p>1. 시행 일시: 2018년 8월 13일 ~ 14일 / 09:00~16:00 (양일 간 진행)</p>

											<p>
												<br> 2. 안내 사항<br> 점검 시간 동안 간헐적으로 소음(경종, 싸이렌, 비상
												방송) 발생 및 시각 경보기가 작동될 수 있습니다.
											</p>

											<p>
												다소 불편하시더라도 많은 양해 부탁 드립니다.<br> &nbsp;
											</p>

											<p>고객님 안전을 위하여 언제나 최선을 다하는 메가박스가 되겠습니다.</p>

											<p>감사합니다.</p>
										</div></li>
								</ul>
							</div>
							<!--// accordion-list -->

							<!-- pagination -->
							<nav class="pagination">
								<strong class="active">1</strong> <a title="2페이지보기"
									href="javascript:void(0)" pagenum="2">2</a> <a title="3페이지보기"
									href="javascript:void(0)" pagenum="3">3</a> <a title="4페이지보기"
									href="javascript:void(0)" pagenum="4">4</a> <a title="5페이지보기"
									href="javascript:void(0)" pagenum="5">5</a> <a title="6페이지보기"
									href="javascript:void(0)" pagenum="6">6</a> <a title="7페이지보기"
									href="javascript:void(0)" pagenum="7">7</a> <a title="8페이지보기"
									href="javascript:void(0)" pagenum="8">8</a>
							</nav>
							<!--// pagination -->
						</div>




						<h2 class="tit small mt70">강남에서 이용할 수 있는 스토어 상품</h2>

						<div class="store-list">
							<ul class="list">

								<li><a href=""
									onclick="NetfunnelChk.aTag('STORE_DTL','/store/detail?cmbndKindNo=20001304');return false;"
									title="즉석구이콤보 상세보기">






										<div class="label push">추천</div>






										<div class="img">
											<img
												src="https://img.megabox.co.kr/SharedImg/store/2020/03/17/4IdTDK4CS2PxFmMMJTozULSROsPzufHw.png"
												alt="" onerror="noImg(this, 'del')">
										</div>

										<div class="info">
											<div class="tit">
												<!-- 제품명 최대 2줄 -->
												<p class="name">즉석구이콤보</p>

												<!-- 제품구성 최대 2줄 -->
												<p class="bundle">팝콘(R) 1 + 탄산음료(R) 2 + 즉석구이오징어 몸or다리 1</p>
											</div>

											<div class="price">

												<p class="sale">
													<em>13,000</em> <span>원</span>
												</p>
												<p class="ea"></p>
											</div>
										</div>
								</a></li>

								<li><a href=""
									onclick="NetfunnelChk.aTag('STORE_DTL','/store/detail?cmbndKindNo=20001303');return false;"
									title="반반에이드콤보 상세보기">






										<div class="label push">추천</div>






										<div class="img">
											<img
												src="https://img.megabox.co.kr/SharedImg/store/2020/03/17/nRR553PK3zMFtaiYav781vbrTZzIDpFO.png"
												alt="" onerror="noImg(this, 'del')">
										</div>

										<div class="info">
											<div class="tit">
												<!-- 제품명 최대 2줄 -->
												<p class="name">반반에이드콤보</p>

												<!-- 제품구성 최대 2줄 -->
												<p class="bundle">반반팝콘(L) 1 + 에이드 2</p>
											</div>

											<div class="price">

												<p class="sale">
													<em>13,000</em> <span>원</span>
												</p>
												<p class="ea"></p>
											</div>
										</div>
								</a></li>

								<li><a href=""
									onclick="NetfunnelChk.aTag('STORE_DTL','/store/detail?cmbndKindNo=20001301');return false;"
									title="나쵸콤보 상세보기">




										<div class="label event">BEST</div>








										<div class="img">
											<img
												src="https://img.megabox.co.kr/SharedImg/store/2020/03/17/ZLQ2wAXLSZCOTv2qrxgNRDII5Jdlwr6b.png"
												alt="" onerror="noImg(this, 'del')">
										</div>

										<div class="info">
											<div class="tit">
												<!-- 제품명 최대 2줄 -->
												<p class="name">나쵸콤보</p>

												<!-- 제품구성 최대 2줄 -->
												<p class="bundle">팝콘(R) 1 + 탄산음료(R) 2 + 나쵸 1</p>
											</div>

											<div class="price">

												<p class="sale">
													<em>12,000</em> <span>원</span>
												</p>
												<p class="ea"></p>
											</div>
										</div>
								</a></li>

								<li><a href=""
									onclick="NetfunnelChk.aTag('STORE_DTL','/store/detail?cmbndKindNo=20000092');return false;"
									title="팝콘L 상세보기">









										<div class="label"></div>



										<div class="img">
											<img
												src="https://img.megabox.co.kr/SharedImg/store/2020/01/07/pQuiA7uLopLcQtLuba9g1amSBgtsjLxe.png"
												alt="" onerror="noImg(this, 'del')">
										</div>

										<div class="info">
											<div class="tit">
												<!-- 제품명 최대 2줄 -->
												<p class="name">팝콘L</p>

												<!-- 제품구성 최대 2줄 -->
												<p class="bundle">팝콘L</p>
											</div>

											<div class="price">

												<p class="sale">
													<em>5,000</em> <span>원</span>
												</p>
												<p class="ea"></p>
											</div>
										</div>
								</a></li>


							</ul>
						</div>


					</div>


					<div id="tab02" class="tab-cont">
						<a href="" class="ir">상영시간표 탭 화면 입니다.</a>
						<h2 class="tit small" style="display: none;">무대인사</h2>
						<div class="movie-greeting" style="display: none;"></div>
						<h2 class="tit small mt40">상영시간표</h2>
						<div class="time-schedule mb30">
							<div class="wrap">
								<button type="button" title="이전 날짜 보기" class="btn-pre"
									disabled="true">
									<i class="iconset ico-cld-pre"></i> <em>이전</em>
								</button>
								<div class="date-list">
									<div class="year-area">
										<div class="year" style="left: 30px; z-index: 1; opacity: 1;">2020.06</div>
										<div class="year" style="left: 870px; z-index: 1; opacity: 1;">2020.07</div>
									</div>
									<div class="date-area">
										<div class="wrap"
											style="position: relative; width: 2100px; border: none; left: -70px;">
											<button class="disabled" type="button" date-data="2020.06.18"
												month="5" tabindex="-1">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">18<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">목</span><span
													class="day-en" style="pointer-events: none; display: none">Thu</span>
											</button>
											<button class="on" type="button" date-data="2020.06.19"
												month="5">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">19<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">오늘</span><span
													class="day-en" style="pointer-events: none; display: none">Fri</span>
											</button>
											<button class="sat" type="button" date-data="2020.06.20"
												month="5">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">20<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">내일</span><span
													class="day-en" style="pointer-events: none; display: none">Sat</span>
											</button>
											<button class="holi" type="button" date-data="2020.06.21"
												month="5">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">21<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">일</span><span
													class="day-en" style="pointer-events: none; display: none">Sun</span>
											</button>
											<button class="disabled" type="button" date-data="2020.06.22"
												month="5">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">22<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">월</span><span
													class="day-en" style="pointer-events: none; display: none">Mon</span>
											</button>
											<button class="disabled" type="button" date-data="2020.06.23"
												month="5">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">23<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">화</span><span
													class="day-en" style="pointer-events: none; display: none">Tue</span>
											</button>
											<button class="disabled" type="button" date-data="2020.06.24"
												month="5">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">24<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">수</span><span
													class="day-en" style="pointer-events: none; display: none">Wed</span>
											</button>
											<button class="disabled" type="button" date-data="2020.06.25"
												month="5">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">25<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">목</span><span
													class="day-en" style="pointer-events: none; display: none">Thu</span>
											</button>
											<button class="disabled" type="button" date-data="2020.06.26"
												month="5">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">26<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">금</span><span
													class="day-en" style="pointer-events: none; display: none">Fri</span>
											</button>
											<button class="disabled sat" type="button"
												date-data="2020.06.27" month="5">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">27<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">토</span><span
													class="day-en" style="pointer-events: none; display: none">Sat</span>
											</button>
											<button class="disabled holi" type="button"
												date-data="2020.06.28" month="5">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">28<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">일</span><span
													class="day-en" style="pointer-events: none; display: none">Sun</span>
											</button>
											<button class="disabled" type="button" date-data="2020.06.29"
												month="5">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">29<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">월</span><span
													class="day-en" style="pointer-events: none; display: none">Mon</span>
											</button>
											<button class="disabled" type="button" date-data="2020.06.30"
												month="5">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">30<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">화</span><span
													class="day-en" style="pointer-events: none; display: none">Tue</span>
											</button>
											<button class="disabled" type="button" date-data="2020.07.01"
												month="6">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">1<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">수</span><span
													class="day-en" style="pointer-events: none; display: none">Wed</span>
											</button>
											<button class="disabled" type="button" date-data="2020.07.02"
												month="6">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">2<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">목</span><span
													class="day-en" style="pointer-events: none; display: none">Thu</span>
											</button>
											<button class="disabled" type="button" date-data="2020.07.03"
												month="6" tabindex="-1">
												<span class="ir">상영시간표 탭 화면 입니다.</span><em
													style="pointer-events: none;">3<span
													style="pointer-events: none;" class="ir">상영시간표 탭 화면
														입니다.</span></em><span class="day-kr"
													style="pointer-events: none; display: inline-block">금</span><span
													class="day-en" style="pointer-events: none; display: none">Fri</span>
											</button>
										</div>
									</div>
								</div>
								<button type="button" title="다음 날짜 보기" class="btn-next"
									disabled="true">
									<i class="iconset ico-cld-next"></i> <em>다음</em>
								</button>
								<div class="bg-line">
									<input type="hidden" name="datePicker" id="dp1592537908437"
										class="hasDatepicker" value="2020.06.19">
									<button type="button" class="btn-calendar-large" title="달력보기">
										달력보기</button>
								</div>
							</div>
						</div>
						<div class="movie-option mb20">
							<div class="option">
								<ul>
									<li><i class="iconset ico-stage" title="무대인사"></i>무대인사</li>
									<li><i class="iconset ico-user" title="회원시사"></i>회원시사</li>
									<li><i class="iconset ico-open" title="오픈시사"></i>오픈시사</li>
									<li><i class="iconset ico-goods" title="굿즈패키지"></i>굿즈패키지</li>
									<li><i class="iconset ico-singalong" title="싱어롱"></i>싱어롱</li>
									<li><i class="iconset ico-gv" title="GV"></i>GV</li>
									<li><i class="iconset ico-sun" title="조조"></i>조조</li>
									<li><i class="iconset ico-brunch" title="브런치"></i>브런치</li>
									<li><i class="iconset ico-moon" title="심야"></i>심야</li>
								</ul>
							</div>
							<div class="rateing-lavel">
								<a href="" class="" title="관람등급안내">관람등급안내</a>
							</div>
						</div>
						<div class="reserve theater-list-box">
							<div class="tab-block tab-layer mb30" style="display: none;">
								<ul></ul>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-all"></p>
									<p>온워드: 단 하루의 기적</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 102분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">컴포트1관</p>
										<p class="chair">총 284석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D(자막)</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003002"
															rpst-movie-no="01693600" theab-no="01" play-de="20200619"
															play-seq="2">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">13:10</p>
																		<p class="chair">188석</p>
																		<div class="play-time">
																			<p>13:10~15:02</p>
																			<p>2회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003003"
															rpst-movie-no="01693600" theab-no="01" play-de="20200619"
															play-seq="3">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">15:25</p>
																		<p class="chair">184석</p>
																		<div class="play-time">
																			<p>15:25~17:17</p>
																			<p>3회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003004"
															rpst-movie-no="01693600" theab-no="01" play-de="20200619"
															play-seq="4">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">17:40</p>
																		<p class="chair">182석</p>
																		<div class="play-time">
																			<p>17:40~19:32</p>
																			<p>4회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003005"
															rpst-movie-no="01693600" theab-no="01" play-de="20200619"
															play-seq="5">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">20:00</p>
																		<p class="chair">180석</p>
																		<div class="play-time">
																			<p>20:00~21:52</p>
																			<p>5회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">3관</p>
										<p class="chair">총 240석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D(자막)</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003008"
															rpst-movie-no="01693600" theab-no="03" play-de="20200619"
															play-seq="2">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">14:20</p>
																		<p class="chair">161석</p>
																		<div class="play-time">
																			<p>14:20~16:12</p>
																			<p>2회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003010"
															rpst-movie-no="01693600" theab-no="03" play-de="20200619"
															play-seq="4">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">18:50</p>
																		<p class="chair">159석</p>
																		<div class="play-time">
																			<p>18:50~20:42</p>
																			<p>4회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003011"
															rpst-movie-no="01693600" theab-no="03" play-de="20200619"
															play-seq="5">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">21:10</p>
																		<p class="chair">157석</p>
																		<div class="play-time">
																			<p>21:10~23:02</p>
																			<p>5회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-15"></p>
									<p>사라진 시간</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 105분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">4관</p>
										<p class="chair">총 203석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003018"
															rpst-movie-no="20018900" theab-no="04" play-de="20200619"
															play-seq="2">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">14:40</p>
																		<p class="chair">134석</p>
																		<div class="play-time">
																			<p>14:40~16:35</p>
																			<p>2회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003024"
															rpst-movie-no="20018900" theab-no="04" play-de="20200619"
															play-seq="4">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">19:10</p>
																		<p class="chair">135석</p>
																		<div class="play-time">
																			<p>19:10~21:05</p>
																			<p>4회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003025"
															rpst-movie-no="20018900" theab-no="04" play-de="20200619"
															play-seq="5">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">21:25</p>
																		<p class="chair">134석</p>
																		<div class="play-time">
																			<p>21:25~23:20</p>
																			<p>5회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">5관</p>
										<p class="chair">총 203석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003020"
															rpst-movie-no="20018900" theab-no="05" play-de="20200619"
															play-seq="2">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">13:30</p>
																		<p class="chair">132석</p>
																		<div class="play-time">
																			<p>13:30~15:25</p>
																			<p>2회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003021"
															rpst-movie-no="20018900" theab-no="05" play-de="20200619"
															play-seq="3">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">15:45</p>
																		<p class="chair">129석</p>
																		<div class="play-time">
																			<p>15:45~17:40</p>
																			<p>3회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003022"
															rpst-movie-no="20018900" theab-no="05" play-de="20200619"
															play-seq="4">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">18:00</p>
																		<p class="chair">134석</p>
																		<div class="play-time">
																			<p>18:00~19:55</p>
																			<p>4회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003023"
															rpst-movie-no="20018900" theab-no="05" play-de="20200619"
															play-seq="5">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">20:15</p>
																		<p class="chair">133석</p>
																		<div class="play-time">
																			<p>20:15~22:10</p>
																			<p>5회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-15"></p>
									<p>결백</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 111분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">7관</p>
										<p class="chair">총 258석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003043"
															rpst-movie-no="20003500" theab-no="07" play-de="20200619"
															play-seq="2">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">12:40</p>
																		<p class="chair">169석</p>
																		<div class="play-time">
																			<p>12:40~14:41</p>
																			<p>2회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003040"
															rpst-movie-no="20003500" theab-no="07" play-de="20200619"
															play-seq="3">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">15:05</p>
																		<p class="chair">170석</p>
																		<div class="play-time">
																			<p>15:05~17:06</p>
																			<p>3회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003041"
															rpst-movie-no="20003500" theab-no="07" play-de="20200619"
															play-seq="4">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">17:25</p>
																		<p class="chair">170석</p>
																		<div class="play-time">
																			<p>17:25~19:26</p>
																			<p>4회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003042"
															rpst-movie-no="20003500" theab-no="07" play-de="20200619"
															play-seq="5">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">19:45</p>
																		<p class="chair">164석</p>
																		<div class="play-time">
																			<p>19:45~21:46</p>
																			<p>5회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">8관</p>
										<p class="chair">총 180석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003053"
															rpst-movie-no="20003500" theab-no="08" play-de="20200619"
															play-seq="5">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">21:00</p>
																		<p class="chair">118석</p>
																		<div class="play-time">
																			<p>21:00~23:01</p>
																			<p>5회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-12"></p>
									<p>위대한 쇼맨</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 104분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">3관</p>
										<p class="chair">총 240석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D(자막)</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003045"
															rpst-movie-no="01309400" theab-no="03" play-de="20200619"
															play-seq="3">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">16:35</p>
																		<p class="chair">128석</p>
																		<div class="play-time">
																			<p>16:35~18:29</p>
																			<p>3회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-19"></p>
									<p>콜 미 바이 유어 네임</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 132분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">6관</p>
										<p class="chair">총 190석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D(자막)</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003047"
															rpst-movie-no="20021700" theab-no="06" play-de="20200619"
															play-seq="4">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">17:15</p>
																		<p class="chair">118석</p>
																		<div class="play-time">
																			<p>17:15~19:37</p>
																			<p>4회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003048"
															rpst-movie-no="20021700" theab-no="06" play-de="20200619"
															play-seq="5">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">20:05</p>
																		<p class="chair">120석</p>
																		<div class="play-time">
																			<p>20:05~22:27</p>
																			<p>5회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-12"></p>
									<p>[F] 야구소녀</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 105분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">4관</p>
										<p class="chair">총 203석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003019"
															rpst-movie-no="20019300" theab-no="04" play-de="20200619"
															play-seq="3">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">16:55</p>
																		<p class="chair">133석</p>
																		<div class="play-time">
																			<p>16:55~18:50</p>
																			<p>3회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-12"></p>
									<p>에어로너츠</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 101분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">2관</p>
										<p class="chair">총 186석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D(자막)</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003014"
															rpst-movie-no="20005400" theab-no="02" play-de="20200619"
															play-seq="3">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">16:00</p>
																		<p class="chair">124석</p>
																		<div class="play-time">
																			<p>16:00~17:51</p>
																			<p>3회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
														<td class="" brch-no="1003" play-schdl-no="2006191003016"
															rpst-movie-no="20005400" theab-no="02" play-de="20200619"
															play-seq="5">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">20:40</p>
																		<p class="chair">123석</p>
																		<div class="play-time">
																			<p>20:40~22:31</p>
																			<p>5회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-15"></p>
									<p>침입자</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 102분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">8관</p>
										<p class="chair">총 180석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003050"
															rpst-movie-no="20003100" theab-no="08" play-de="20200619"
															play-seq="3">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">16:20</p>
																		<p class="chair">120석</p>
																		<div class="play-time">
																			<p>16:20~18:12</p>
																			<p>3회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-19"></p>
									<p>레옹 디 오리지널</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 110분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">2관</p>
										<p class="chair">총 186석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D(자막)</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003013"
															rpst-movie-no="20022300" theab-no="02" play-de="20200619"
															play-seq="2">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">13:40</p>
																		<p class="chair">112석</p>
																		<div class="play-time">
																			<p>13:40~15:40</p>
																			<p>2회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-12"></p>
									<p>나의 첫 번째 슈퍼스타</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 113분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">6관</p>
										<p class="chair">총 190석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D(자막)</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003028"
															rpst-movie-no="20020400" theab-no="06" play-de="20200619"
															play-seq="3">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">14:50</p>
																		<p class="chair">124석</p>
																		<div class="play-time">
																			<p>14:50~16:53</p>
																			<p>3회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-15"></p>
									<p>카페 벨에포크</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 115분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">8관</p>
										<p class="chair">총 180석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D(자막)</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003049"
															rpst-movie-no="20013300" theab-no="08" play-de="20200619"
															play-seq="4">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">18:35</p>
																		<p class="chair">104석</p>
																		<div class="play-time">
																			<p>18:35~20:40</p>
																			<p>4회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-12"></p>
									<p>아이 캔 온리 이매진</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 110분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">8관</p>
										<p class="chair">총 180석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D(자막)</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003051"
															rpst-movie-no="01665200" theab-no="08" play-de="20200619"
															play-seq="2">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">13:55</p>
																		<p class="chair">119석</p>
																		<div class="play-time">
																			<p>13:55~15:55</p>
																			<p>2회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="theater-list">
								<div class="theater-tit">
									<p class="movie-grade age-15"></p>
									<p>[F] 전망좋은 방</p>
									<p class="infomation">
										<span>상영중</span>/상영시간 117분
									</p>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">2관</p>
										<p class="chair">총 186석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D(자막)</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1003" play-schdl-no="2006191003015"
															rpst-movie-no="20020000" theab-no="02" play-de="20200619"
															play-seq="4">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-off"></i>
																		</div>
																		<p class="time">18:10</p>
																		<p class="chair">122석</p>
																		<div class="play-time">
																			<p>18:10~20:17</p>
																			<p>4회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="box-border v1 mt30">
							<li>지연입장에 의한 관람불편을 최소화하고자 본 영화는 약 10분 후 시작됩니다.</li>
							<li>쾌적한 관람 환경을 위해 상영시간 이전에 입장 부탁드립니다.</li>
						</div>
					</div>



					<div id="tab03" class="tab-cont">
						<a href="" class="ir">관람료 탭 화면 입니다.</a>
						<h2 class="tit small">영화관람료</h2>
						<div class="fee-table-box">
							<div class="fee-table">
								<p class="fee-table-tit">일반 2D</p>
								<div class="table-wrap">
									<table class="data-table a-c"
										summary="가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.">
										<caption>가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.</caption>
										<colgroup>
											<col>
											<col style="width: 25%;">
											<col style="width: 25%;">
											<col style="width: 25%;">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">요일</th>
												<th scope="col">상영시간</th>
												<th scope="col">일반</th>
												<th scope="col">청소년</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="rowgroup" rowspan="3">월~목</th>
												<td>조조 (06:00~)</td>
												<td>7,000</td>
												<td>6,000</td>
											</tr>
											<tr>
												<td>일반 (10:00~)</td>
												<td>10,000</td>
												<td>8,000</td>
											</tr>
											<tr>
												<td>심야 (23:00~)</td>
												<td>9,000</td>
												<td>7,000</td>
											</tr>
											<tr>
												<th scope="rowgroup" rowspan="3">금~일<br>공휴일
												</th>
												<td>조조 (06:00~)</td>
												<td>8,000</td>
												<td>6,000</td>
											</tr>
											<tr>
												<td>일반 (10:00~)</td>
												<td>12,000</td>
												<td>9,000</td>
											</tr>
											<tr>
												<td>심야 (23:00~)</td>
												<td>10,000</td>
												<td>8,000</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="fee-table">
								<p class="fee-table-tit">일반 3D</p>
								<div class="table-wrap">
									<table class="data-table a-c"
										summary="가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.">
										<caption>가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.</caption>
										<colgroup>
											<col>
											<col style="width: 25%;">
											<col style="width: 25%;">
											<col style="width: 25%;">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">요일</th>
												<th scope="col">상영시간</th>
												<th scope="col">일반</th>
												<th scope="col">청소년</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="rowgroup" rowspan="3">월~목</th>
												<td>조조 (06:00~)</td>
												<td>9,000</td>
												<td>8,000</td>
											</tr>
											<tr>
												<td>일반 (10:00~)</td>
												<td>12,000</td>
												<td>9,000</td>
											</tr>
											<tr>
												<td>심야 (23:00~)</td>
												<td>11,000</td>
												<td>8,000</td>
											</tr>
											<tr>
												<th scope="rowgroup" rowspan="3">금~일<br>공휴일
												</th>
												<td>조조 (06:00~)</td>
												<td>10,000</td>
												<td>9,000</td>
											</tr>
											<tr>
												<td>일반 (10:00~)</td>
												<td>14,000</td>
												<td>11,000</td>
											</tr>
											<tr>
												<td>심야 (23:00~)</td>
												<td>12,000</td>
												<td>10,000</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<div class="fee-table-box">
							<div class="fee-table">
								<p class="fee-table-tit">COMFORT 일반 2D</p>
								<div class="table-wrap">
									<table class="data-table a-c"
										summary="가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.">
										<caption>가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.</caption>
										<colgroup>
											<col>
											<col style="width: 25%;">
											<col style="width: 25%;">
											<col style="width: 25%;">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">요일</th>
												<th scope="col">상영시간</th>
												<th scope="col">일반</th>
												<th scope="col">청소년</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="rowgroup" rowspan="3">월~목</th>
												<td>조조 (06:00~)</td>
												<td>7,000</td>
												<td>6,000</td>
											</tr>
											<tr>
												<td>일반 (10:00~)</td>
												<td>10,000</td>
												<td>8,000</td>
											</tr>
											<tr>
												<td>심야 (23:00~)</td>
												<td>9,000</td>
												<td>7,000</td>
											</tr>
											<tr>
												<th scope="rowgroup" rowspan="3">금~일<br>공휴일
												</th>
												<td>조조 (06:00~)</td>
												<td>8,000</td>
												<td>6,000</td>
											</tr>
											<tr>
												<td>일반 (10:00~)</td>
												<td>12,000</td>
												<td>9,000</td>
											</tr>
											<tr>
												<td>심야 (23:00~)</td>
												<td>10,000</td>
												<td>8,000</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="fee-table">
								<p class="fee-table-tit">COMFORT 일반 3D</p>
								<div class="table-wrap">
									<table class="data-table a-c"
										summary="가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.">
										<caption>가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.</caption>
										<colgroup>
											<col>
											<col style="width: 25%;">
											<col style="width: 25%;">
											<col style="width: 25%;">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">요일</th>
												<th scope="col">상영시간</th>
												<th scope="col">일반</th>
												<th scope="col">청소년</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="rowgroup" rowspan="3">월~목</th>
												<td>조조 (06:00~)</td>
												<td>10,000</td>
												<td>9,000</td>
											</tr>
											<tr>
												<td>일반 (10:00~)</td>
												<td>13,000</td>
												<td>10,000</td>
											</tr>
											<tr>
												<td>심야 (23:00~)</td>
												<td>11,000</td>
												<td>9,000</td>
											</tr>
											<tr>
												<th scope="rowgroup" rowspan="3">금~일<br>공휴일
												</th>
												<td>조조 (06:00~)</td>
												<td>11,000</td>
												<td>10,000</td>
											</tr>
											<tr>
												<td>일반 (10:00~)</td>
												<td>15,000</td>
												<td>12,000</td>
											</tr>
											<tr>
												<td>심야 (23:00~)</td>
												<td>13,000</td>
												<td>11,000</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<span style="color: #503396"><span style="font-size: 22px">요금제</span></span><br>
						<br> • <font color="#01738b">청소년 요금</font>&nbsp; 만7세~ 만18세 :
						초등학생~고등학생(학생증, 교복, 청소년증, 의료보험증, 주민등록 등/초본, 그 외 청소년 확인 가능 서류)<br>
						• 48개월 미만의 경우 증빙원(예 : 의료보험증, 주민등록 초/등본 등) 지참 시에만 무료 관람 가능<br>
						<br> <br> <span style="font-size: 22px"><span
							style="color: #503396">우대적용</span></span><br> <br> • <font
							color="#01738b">국가유공자</font>&nbsp; 현장에서 국가유공자증을 소지한 본인 외 동반 1인까지
						적용<br> • <font color="#01738b">장애인</font>&nbsp; 현장에서 복지카드를
						소지한 장애인(1급~3급까지 동반 1인까지 적용 / 4급~6급은 본인에 한함)<br> • <font
							color="#01738b">경로</font>&nbsp; 만65세 이상 본인에 한함(신분증 확인)<br> •
						<font color="#01738b">경찰, 소방종사자</font>&nbsp; 공무원증을 소지하거나 정복을 입은
						경찰, 소방관 본인<br> <br> <br> 관람가격 및 시간대 운영은 극장마다 상이할 수
						있으며, 상기 가격은 메가박스 동대문점에 한하여 적용됩니다.
					</div>



				</div>
			</div>
		</div>
		<!--// contents -->
	</div>

	<c:import url="../template/footer.jsp"></c:import>

</body>
</html>