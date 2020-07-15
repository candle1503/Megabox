package com.mega.s1.ticket;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.mega.s1.seat.SeatVO;
import com.mega.s1.movie.MovieVO;

@Repository
@Mapper
public interface TicketRepository {

	public int ticketInsert(TicketVO ticketVO) throws Exception;
	
	public TicketVO resultPage(TicketVO ticketVO) throws Exception;
	
	public TicketVO reviewCheck(TicketVO ticketVO) throws Exception;
	
	public int reviewDone(TicketVO ticketVO) throws Exception;

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public int getBooked(SeatVO seatVO) throws Exception;
	
	
	
	public long bookingAllCount() throws Exception;
	
	public List<TicketVO> bookingCount() throws Exception;
	
	public int bookingRateReset() throws Exception;
	
	public int bookingRateUpdate(MovieVO movieVO) throws Exception;
}
