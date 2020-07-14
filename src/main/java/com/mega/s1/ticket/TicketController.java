package com.mega.s1.ticket;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mega.s1.movie.MovieService;

@Controller
@RequestMapping("/ticket/**")
public class TicketController {

	@Autowired
	private TicketService ticketService;
	
	@Autowired
	private MovieService movieService;
	
	@GetMapping("payment")
	public ModelAndView payment(ModelAndView mv, TicketVO ticketVO) throws Exception{
		
		
		movieService.movieSelect(ticketVO.getMovieNum());
		mv.addObject("ticketVO", ticketVO);
		mv.setViewName("movie/payment");
		return mv;
	}

	
	
}
