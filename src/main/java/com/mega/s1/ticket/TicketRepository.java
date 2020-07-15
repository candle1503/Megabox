package com.mega.s1.ticket;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.mega.s1.seat.SeatVO;

@Repository
@Mapper
public interface TicketRepository {

	public int ticketInsert(TicketVO ticketVO) throws Exception;
	
	public TicketVO resultPage(TicketVO ticketVO) throws Exception;
	
	public TicketVO reviewCheck(TicketVO ticketVO) throws Exception;
	
	public int reviewDone(TicketVO ticketVO) throws Exception;

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public int getBooked(SeatVO seatVO) throws Exception;
	
	
}
