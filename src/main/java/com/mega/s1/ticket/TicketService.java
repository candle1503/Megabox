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
	
	public MemberVO getId(MemberVO memberVO) throws Exception{
		return ticketRepository.getId(memberVO);
	}
	
	//여기서부터 티켓 양도
	
	public TicketVO ticketMoveBegin(TicketVO ticketVO) throws Exception{
		return ticketRepository.ticketMoveBegin(ticketVO);
	}
	
	public TicketVO giveSeat(TicketVO ticketVO) throws Exception{
		return ticketRepository.giveSeat(ticketVO);
	}	

	public int giveSeatAdd(TicketVO ticketVO) throws Exception{
		return ticketRepository.giveSeatAdd(ticketVO);
	}
	
	public int giveSeatRemove(TicketVO ticketVO) throws Exception{
		return ticketRepository.giveSeatRemove(ticketVO);
	}
	
	public int removeTicket(TicketVO ticketVO) throws Exception{
		return ticketRepository.removeTicket(ticketVO);
	}
	
	public int countMinus(TicketVO ticketVO) throws Exception{
		return ticketRepository.countMinus(ticketVO);
	}
	
	public int countPlus(TicketVO ticketVO) throws Exception{
		return ticketRepository.countPlus(ticketVO);
	}
	
	public TicketVO cancelTicket(TicketVO ticketVO) throws Exception{
		return ticketRepository.cancelTicket(ticketVO);
	}	
	
	public TicketVO cancelSeatNum(TicketVO ticketVO) throws Exception{
		return ticketRepository.cancelSeatNum(ticketVO);
	}	
	
	public TicketVO cancelOriginId(TicketVO ticketVO) throws Exception{
		return ticketRepository.cancelOriginId(ticketVO);
	}	
	
	public TicketVO cancelOriginSeatNum(TicketVO ticketVO) throws Exception{
		return ticketRepository.cancelOriginSeatNum(ticketVO);
	}	
	
	public int cancelOriginUpdate(TicketVO ticketVO) throws Exception{
		return ticketRepository.cancelOriginUpdate(ticketVO);
	}
	
	public int countOriginPlus(TicketVO ticketVO) throws Exception{
		return ticketRepository.countOriginPlus(ticketVO);
	}
	
	public int deleteGiveTicket(TicketVO ticketVO) throws Exception{
		return ticketRepository.deleteGiveTicket(ticketVO);
	}
	
}
