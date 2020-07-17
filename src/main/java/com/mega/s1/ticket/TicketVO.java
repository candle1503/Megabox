package com.mega.s1.ticket;

import lombok.Data;

@Data
public class TicketVO {

	private int ticketNum;

	private String seatNum;
	
	
	private String ticketCode;
	
	private String movieTime;
	
	private String id;
	
	private int count;
	
	private int movieNum;
	
	private int theaterRoomCode;
	
	private String viewDate;
	
	private int status;
	
	private String movieName;
	
	//예매한 사람들 수
	private int amount;
	
	//좌석 비교할때 써야함
	private int timeCode;
	
	//날짜비교할때 쓸것
	private String calandarDate;
	private String calandarDate2;
	
}
