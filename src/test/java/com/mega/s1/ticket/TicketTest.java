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
			ticketVO.setSeatNum("i"+i+1);
			ticketVO.setMovieTime("11:00~12:40");
			ticketVO.setId("id22");
			ticketVO.setCount(1);
			ticketVO.setMovieNum(30);
			ticketVO.setTheaterRoomCode(1);
			ticketVO.setViewDate("2020-07-15 11:00:00");
			ticketVO.setMovieName("너와 파도를 탈 수 있다면");

			MovieVO movieVO = new MovieVO();
			movieVO.setMovieNum(30);
			movieVO=movieService.movieSelect(movieVO);
			
			ticketService.ticketInsert(ticketVO);
			movieService.viewUp(movieVO);
		}
	}

}
