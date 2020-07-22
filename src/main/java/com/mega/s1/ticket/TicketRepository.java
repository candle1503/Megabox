package com.mega.s1.ticket;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.mega.s1.seat.SeatVO;
import com.mega.s1.member.MemberVO;
import com.mega.s1.movie.MovieVO;

@Repository
@Mapper
public interface TicketRepository {

	public int ticketInsert(TicketVO ticketVO) throws Exception;
	
	public TicketVO resultPage(TicketVO ticketVO) throws Exception;
	
	public TicketVO reviewCheck(TicketVO ticketVO) throws Exception;
	
	public int reviewDone(TicketVO ticketVO) throws Exception;
	
	public TicketVO ticketMoveBegin(TicketVO ticketVO) throws Exception;
	
	public TicketVO giveSeat(TicketVO ticketVO) throws Exception;
	
	public int giveSeatAdd(TicketVO ticketVO) throws Exception;
	
	public int giveSeatRemove(TicketVO ticketVO) throws Exception;
	
	public int removeTicket(TicketVO ticketVO) throws Exception;
	
	public int countMinus(TicketVO ticketVO) throws Exception;

	public int countPlus(TicketVO ticketVO) throws Exception;

	public TicketVO cancelTicket(TicketVO ticketVO) throws Exception;
	
	public TicketVO cancelSeatNum(TicketVO ticketVO) throws Exception;
	
	public TicketVO cancelOriginId(TicketVO ticketVO) throws Exception;
	
	public TicketVO cancelOriginSeatNum(TicketVO ticketVO) throws Exception;
	
	public int cancelOriginUpdate(TicketVO ticketVO) throws Exception;
	
	public int countOriginPlus(TicketVO ticketVO) throws Exception;
	
	public int deleteGiveTicket(TicketVO ticketVO) throws Exception;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//session 다시 저장
	public MemberVO getId(MemberVO memberVO) throws Exception;
	
	
	
	//멤버십 포인트 적립
	public void pointAdd(MemberVO memberVO) throws Exception;
	
	public void seatUpdate(SeatVO seatVO) throws Exception;
	
	
	
	public long bookingAllCount() throws Exception;
	
	public List<TicketVO> bookingCount() throws Exception;
	
	public int bookingRateReset() throws Exception;
	
	public int bookingRateUpdate(MovieVO movieVO) throws Exception;
}
