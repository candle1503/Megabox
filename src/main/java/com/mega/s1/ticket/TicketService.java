package com.mega.s1.ticket;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mega.s1.member.MemberVO;
import com.mega.s1.movie.MovieVO;
import com.mega.s1.seat.SeatVO;
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
	
	
	public TicketVO reviewCheck(TicketVO ticketVO) throws Exception{
	
		return ticketRepository.reviewCheck(ticketVO);
	}
	
	public int reviewDone(TicketVO ticketVO) throws Exception{
		return ticketRepository.reviewDone(ticketVO);
	}
	
	
	
	
	
	
	
	
	public void pointAdd(MemberVO memberVO) throws Exception{
		ticketRepository.pointAdd(memberVO);
	}
	
	
	public void seatUpdate(List<SeatVO> seatVOs) throws Exception{
		
		for(int i =0; i<seatVOs.size(); i++) {
			ticketRepository.seatUpdate(seatVOs.get(i));
		}
	}
	
	
		
	public long bookingAllCount() throws Exception{
		return ticketRepository.bookingAllCount();
	}
	
	public List<TicketVO> bookingCount() throws Exception {
		return ticketRepository.bookingCount();
	}
	
	public int bookingRateReset() throws Exception {
		return ticketRepository.bookingRateReset();
	}
	
	public int bookingRateUpdate(MovieVO movieVO) throws Exception {
		
		return ticketRepository.bookingRateUpdate(movieVO);
	}
	
}
