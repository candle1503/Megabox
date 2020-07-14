package com.mega.s1.ticket;

import java.sql.Date;


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
	
	private Date viewDate;
	
	private int status;
	
	private String movieName;
}
