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
		
		for(int i=0; i<5; i++) {
			TicketVO ticketVO = new TicketVO();
			ticketVO.setSeatNum("E"+i+1);
			ticketVO.setMovieTime("11:00~12:40");
			ticketVO.setId("test123");
			ticketVO.setCount(1);
			ticketVO.setMovieNum(1);
			ticketVO.setTheaterRoomCode(1);
			ticketVO.setViewDate("2020-07-21 11:00:00");
			ticketVO.setMovieName("#살아있다");

			MovieVO movieVO = new MovieVO();
			movieVO.setMovieNum(1);
			movieVO.setAges(10);
			movieVO=movieService.movieSelect(movieVO);
			
			ticketService.ticketInsert(ticketVO);
			movieService.viewUp(movieVO);
		}
	}

}
