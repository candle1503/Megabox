package com.mega.s1.ticket;




import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mega.s1.movie.MovieService;
import com.mega.s1.movie.MovieVO;
import com.mega.s1.movie.movieFile.MovieFileVO;
import com.mega.s1.theater.theaterRoom.TheaterRoomVO;

@Controller
@RequestMapping("/ticket/**")
public class TicketController {

	@Autowired
	private TicketService ticketService;
	
	@Autowired
	private MovieService movieService;
	
	@GetMapping("payment")
	public ModelAndView payment(ModelAndView mv, TicketVO ticketVO) throws Exception{
//		System.out.println(ticketVO.getTimeCode());
//		System.out.println(ticketVO.getSeatNum());
//		String[] seatNum = ticketVO.getSeatNum().split(",");
//		for(int i=0; i<seatNum.length; i++) {
//			seatNum[i] = seatNum[i].trim();
//			System.out.println(seatNum[i]);
//		}
		MovieVO movieVO = new MovieVO();
		movieVO.setMovieNum(ticketVO.getMovieNum());
		movieVO = movieService.movieSelect(movieVO);

		mv.addObject("movieVO", movieVO);
		mv.addObject("ticketVO", ticketVO);
		mv.setViewName("movie/payment");
		return mv;
	}

	@PostMapping("payment")
	@ResponseBody
	public int paymentDone(ModelAndView mv ,TicketVO ticketVO) throws Exception{
		
		int result = ticketService.ticketInsert(ticketVO);

		return result;
	}
	
	@PostMapping("paymentDone")
	public ModelAndView resultPage(ModelAndView mv, TicketVO ticketVO) throws Exception{
		ticketVO=ticketService.resultPage(ticketVO);
		String[] da =ticketVO.getViewDate().split(" ");
		
		MovieVO movieVO = new MovieVO();
		TheaterRoomVO theaterVO = new TheaterRoomVO();
		movieVO.setMovieNum(ticketVO.getMovieNum());
		movieVO = movieService.movieSelect(movieVO);
		List<MovieFileVO> files = movieService.getMovieFile(movieVO);
		theaterVO.setTheaterRoomCode(ticketVO.getTheaterRoomCode());
		theaterVO=ticketService.getRoom(theaterVO);
		movieService.viewUp(movieVO);
		
		mv.addObject("day", da);
		mv.addObject("ticketVO", ticketVO);
		mv.addObject("theaterVO", theaterVO);
		mv.addObject("file", files);
		mv.addObject("movieVO", movieVO);
		mv.setViewName("booking/bookingComplete");
		return mv;
	}
	

	
	
}
