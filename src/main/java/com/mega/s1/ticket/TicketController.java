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
	public ModelAndView payment(ModelAndView mv, TicketVO ticketVO,HttpSession session, PointVO pointVO) throws Exception{
		MemberVO memberVO =(MemberVO)session.getAttribute("member");
		pointVO.setId(memberVO.getId());
		session.setAttribute("point", pointVO);
		
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
		MemberVO memberVO = new MemberVO();
		PointVO pointVO = (PointVO)session.getAttribute("point");
		ticketVO.setSavedPoint(pointVO.getSavePoint());
		int result = ticketService.ticketInsert(ticketVO);

		if(result>0) {
			memberVO.setSavePoint(pointVO.getSavePoint());
			memberVO.setUsedPoint(pointVO.getUsedPoint());
			memberVO.setId(pointVO.getId());
			ticketService.pointAdd(memberVO);
			session.removeAttribute("point");
		}
		return result;
	}
	
	@PostMapping("paymentDone")
	public ModelAndView resultPage(ModelAndView mv, TicketVO ticketVO, MemberVO memberVO) throws Exception{
		
		String[] seats = ticketVO.getSeatNum().split(",");
		List<SeatVO> seatVOs = new ArrayList<SeatVO>();
		for(int i=0; i<seats.length; i++) {
			SeatVO seatVO = new SeatVO();
			seats[i] = seats[i].trim();
			seatVO.setTimeCode(ticketVO.getTimeCode());
			seatVO.setSeatNum(seats[i]);
			seatVOs.add(i, seatVO);
		}
		
		ticketService.seatUpdate(seatVOs);
		
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
		
		
		
		mv.addObject("savePoint", memberVO.getSavePoint());
		mv.addObject("usedPoint", memberVO.getUsedPoint());
		mv.addObject("day", da);
		mv.addObject("ticketVO", ticketVO);
		mv.addObject("theaterVO", theaterVO);
		mv.addObject("file", files);
		mv.addObject("movieVO", movieVO);
		mv.setViewName("booking/bookingComplete");
		return mv;
	}
	
	
	
	
}
