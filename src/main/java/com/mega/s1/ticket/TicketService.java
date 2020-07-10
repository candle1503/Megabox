package com.mega.s1.ticket;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mega.s1.booking.BookingVO;
import com.mega.s1.member.MemberVO;
import com.mega.s1.movie.MovieVO;
import com.mega.s1.seat.SeatVO;
import com.mega.s1.theater.TheaterVO;
import com.mega.s1.theater.theaterRoom.TheaterRoomVO;

@Service
public class TicketService {

	@Autowired
	private TicketRepository ticketRepository;
	
	public int ticketInsert(TicketVO ticketVO) throws Exception{
		return ticketRepository.ticketInsert(ticketVO); 
	}
	
	public TicketVO ticketInfo(TicketVO ticketVO) throws Exception{
		String ticketCode = UUID.randomUUID().toString();
		ticketVO.setTicketCode(ticketCode);
		
		return ticketVO;
	}
}
