package com.mega.s1.ticket;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



import com.mega.s1.theater.theaterRoom.TheaterRoomRepository;
import com.mega.s1.theater.theaterRoom.TheaterRoomVO;


@Service
public class TicketService {

	@Autowired
	private TicketRepository ticketRepository;
	
	@Autowired
	private TheaterRoomRepository theaterRepository;
	
	public int ticketInsert(TicketVO ticketVO) throws Exception{
		return ticketRepository.ticketInsert(ticketVO); 
	}
	
	public TheaterRoomVO getRoom(TheaterRoomVO theaterVO) throws Exception{
		return theaterRepository.getRoom(theaterVO);
	}
	
	public TicketVO ticketInfo(TicketVO ticketVO) throws Exception{
		String ticketCode = UUID.randomUUID().toString();
		ticketVO.setTicketCode(ticketCode);
		
		return ticketVO;
	}
}
