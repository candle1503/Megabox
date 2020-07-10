package com.mega.s1.ticket;

import lombok.Data;

@Data
public class TicketVO {

	private int ticketNum;
	
	private String ticketCode;
	
	private String id;
	
	private int movieNum;
	
	private int theaterNum;
	
	private int theaterRoomCode;
	
	private String seatNum;
	
	private int timeCode;
}
