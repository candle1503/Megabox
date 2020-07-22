package com.mega.s1.mobile;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mega.s1.movie.MovieVO;
import com.mega.s1.movie.movieFile.MovieFileVO;
import com.mega.s1.theater.theaterRoom.TheaterRoomRepository;
import com.mega.s1.ticket.TicketRepository;
import com.mega.s1.ticket.TicketVO;

@Service
public class MobileService {
	
	@Autowired
	private TicketRepository ticketRepository;
	
	@Autowired
	private TheaterRoomRepository theaterRepository;
	
	@Autowired
	private MobileRepository mobileRepository;
	
	public void cancelTicketModule(TicketVO ticketVO) throws Exception{
		
		ticketRepository.cancelTicket(ticketVO);
		ticketRepository.cancelSeatNum(ticketVO);
		
		TicketVO ticketVO2 = ticketRepository.cancelOriginId(ticketVO);
		ticketRepository.cancelOriginSeatNum(ticketVO2);
		
		ticketVO2.setReceiveId(ticketVO.getId());
		ticketRepository.cancelOriginUpdate(ticketVO2);
		ticketRepository.countOriginPlus(ticketVO2);
	}
	
	public MovieFileVO getMovieVideo(Integer movieNum) throws Exception{
		return mobileRepository.getMovieVideo(movieNum);
	}

	public List<MovieVO> getMovieNum() throws Exception{
		return mobileRepository.getMovieNum();
	}
}
