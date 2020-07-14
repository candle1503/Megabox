package com.mega.s1.ticket;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


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
