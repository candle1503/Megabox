package com.mega.s1.ticket;

import java.util.Date;
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
		
		char ch = (char) ((Math.random() * 26) + 97);
		
		String ticketCode= ""+ch+new Date().getTime();
		
		ticketVO.setTicketCode(ticketCode);
		
		int result = ticketRepository.ticketInsert(ticketVO);
		return result; 
	}
	
	public TicketVO resultPage(TicketVO ticketVO) throws Exception{
		return ticketRepository.resultPage(ticketVO);
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
