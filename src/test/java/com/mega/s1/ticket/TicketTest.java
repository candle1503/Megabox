package com.mega.s1.ticket;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.mega.s1.movie.MovieService;
import com.mega.s1.movie.MovieVO;

@SpringBootTest
class TicketTest {
	
	@Autowired
	private TicketService ticketService;
	
	@Autowired
	private MovieService movieService;

	@Test
	void test() throws Exception {
		
		for(int i=0; i<15; i++) {
			TicketVO ticketVO = new TicketVO();
			ticketVO.setSeatNum("G"+i+1);
			ticketVO.setMovieTime("11:00~12:40");
			ticketVO.setId("id32");
			ticketVO.setCount(1);
			ticketVO.setMovieNum(64);
			ticketVO.setTheaterRoomCode(2);
			ticketVO.setViewDate("2020-07-21 11:00:00");
			ticketVO.setMovieName("스파이더맨: 파 프롬 홈");

			MovieVO movieVO = new MovieVO();
			movieVO.setMovieNum(64);
			movieVO = movieService.movieSelect(movieVO);
			movieVO.setAges(897);
			
			
			ticketService.ticketInsert(ticketVO);
			movieService.viewUp(movieVO);
		}
	}

}
