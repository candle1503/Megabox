package com.mega.s1.ticket;




import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mega.s1.member.MemberVO;
import com.mega.s1.movie.MovieService;
import com.mega.s1.movie.MovieVO;
import com.mega.s1.movie.movieFile.MovieFileVO;
import com.mega.s1.seat.SeatVO;
import com.mega.s1.theater.theaterRoom.TheaterRoomVO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/ticket/**")
public class TicketController {

	@Autowired
	private TicketService ticketService;
	
	@Autowired
	private MovieService movieService;
	
	@GetMapping("payment")
	public ModelAndView payment(ModelAndView mv, TicketVO ticketVO,HttpSession session, MemberVO memberVO) throws Exception{
		System.out.println(memberVO.getSavePoint());
		System.out.println(memberVO.getUsedPoint());
		session.setAttribute("point", "1234");
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
	public int paymentDone(ModelAndView mv ,TicketVO ticketVO,HttpSession session) throws Exception{
		System.out.println("넘어오나요??????"+session.getAttribute("point"));
		
		int result = ticketService.ticketInsert(ticketVO);
		
		return result;
	}
	
	@PostMapping("paymentDone")
	public void resultPage(ModelAndView mv, TicketVO ticketVO, MemberVO memberVO) throws Exception{
//		ticketService.pointAdd(memberVO);
//		
//		String[] seats = ticketVO.getSeatNum().split(",");
//		List<SeatVO> seatVOs = new ArrayList<SeatVO>();
//		for(int i=0; i<seats.length; i++) {
//			SeatVO seatVO = new SeatVO();
//			seats[i] = seats[i].trim();
//			seatVO.setTimeCode(ticketVO.getTimeCode());
//			seatVO.setSeatNum(seats[i]);
//			seatVOs.add(i, seatVO);
//		}
//		
//		ticketService.seatUpdate(seatVOs);
//		
//		ticketVO=ticketService.resultPage(ticketVO);
//		String[] da =ticketVO.getViewDate().split(" ");
//		
//		MovieVO movieVO = new MovieVO();
//		TheaterRoomVO theaterVO = new TheaterRoomVO();
//		movieVO.setMovieNum(ticketVO.getMovieNum());
//		movieVO = movieService.movieSelect(movieVO);
//		List<MovieFileVO> files = movieService.getMovieFile(movieVO);
//		theaterVO.setTheaterRoomCode(ticketVO.getTheaterRoomCode());
//		theaterVO=ticketService.getRoom(theaterVO);
//		
//		
//		
//		mv.addObject("savePoint", memberVO.getSavePoint());
//		mv.addObject("usedPoint", memberVO.getUsedPoint());
//		mv.addObject("day", da);
//		mv.addObject("ticketVO", ticketVO);
//		mv.addObject("theaterVO", theaterVO);
//		mv.addObject("file", files);
//		mv.addObject("movieVO", movieVO);
//		mv.setViewName("booking/bookingComplete");
//		return mv;
	}
	
	
	
	
}
