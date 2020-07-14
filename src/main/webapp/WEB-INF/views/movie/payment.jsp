<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>

<script type="text/javascript">


	$(window).load(function() {
		var IMP = window.IMP; // 생략가능
		IMP.init('imp76790166'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
		IMP.request_pay(
			{
			    pg : 'inicis', // version 1.1.0부터 지원.
			    pay_method : 'card',
			    merchant_uid : 'merchant_' + new Date().getTime(),
			    name : '${movieVO.name}',

			    amount : 100,//${ticketVO.count}*8000,

			    buyer_email : '${member.email}',
			    buyer_name : '${member.name}',
			    buyer_tel : '${member.phone}',
			    buyer_addr : '서울특별시 강남구 삼성동',
			    buyer_postcode : '123-456',
			    m_redirect_url : '${pageContext.request.contextPath}'
			    /* url 주소를 변경해줘야됩니다.  */
			    //m_redirect_url : 'http://192.168.0.7:8080/???'
			    //m_redirect_url : ''//결제 완료시 넘어가는 부분
			    //app_scheme : 'iamportapp'
			},
			
			function(rsp) {
				if ( rsp.success ) {
			        var msg = '결제가 완료되었습니다.';
			        msg += '고유ID : ' + rsp.imp_uid;
			        msg += '상점 거래ID : ' + rsp.merchant_uid;
			        msg += '결제 금액 : ' + rsp.paid_amount;
			        msg += '카드 승인번호 : ' + rsp.apply_num;
			        
			        alert(msg);
			        
			        $.post("./payment", {seatNum:'${ticketVO.seatNum}', movieTime:'${ticketVO.movieTime}', id: '${ticketVO.id}', count:'${ticketVO.count}', movieNum:'${movieVO.movieNum}', theaterRoomCode:'${ticketVO.theaterRoomCode}', viewDate:'${ticketVO.viewDate}', movieName:'${movieVO.name}'}, function(result) {

						if(result>0){
				    	window.opener.$("#myForm").submit();
				        self.close();
						} else{

							alert("결제 취소")
						}
						
					});
				    
			    } else {
			        var msg = '결제에 실패하였습니다.';
			        msg += '에러내용 : ' + rsp.error_msg;
			        
			        alert(msg);
					window.close();
			    }
				
			   
			}
		);
	});
</script>

</body>
</html>