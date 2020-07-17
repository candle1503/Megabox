package com.mega.s1;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mega.s1.board.notice.NoticeService;
import com.mega.s1.board.notice.NoticeVO;
import com.mega.s1.movie.MovieService;
import com.mega.s1.movie.MovieVO;
import com.mega.s1.ticket.TicketService;
import com.mega.s1.ticket.TicketVO;
import com.mega.s1.util.Pager;

@Controller
public class HomeController {
	
	@Autowired
	private TicketService ticketService;
	
	@Autowired
	private MovieService movieService;
	
	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("/")
	public ModelAndView home(ModelAndView mv, NoticeVO noticeVO, Pager pager) throws Exception{
		
		long amount = ticketService.bookingAllCount();
		List<TicketVO> bk = ticketService.bookingCount();
		
		ticketService.bookingRateReset();
		
		for(int i=0; i<bk.size(); i++) {
			MovieVO movieVO = new MovieVO();
			int rating = bk.get(i).getAmount();
			double booking = rating*1.0/amount*100.0;
			System.out.println(rating);
			movieVO.setBookingRate(booking);
			movieVO.setMovieNum(bk.get(i).getMovieNum());
			System.out.println(booking);
			ticketService.bookingRateUpdate(movieVO);
			
		}
		
		List<MovieVO> movieList = movieService.movieList(0);
		
		List<NoticeVO> ar = noticeService.boardList(pager);
		mv.addObject("list", ar);
		
		mv.addObject("movie", movieList);
		mv.setViewName("index");
		
		return mv;
	}
	
	@GetMapping("/adminOnly")
	public ModelAndView adminOnly() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", "관리자만 가능합니다");
		mv.addObject("path", "/");
		mv.setViewName("common/result");
		return mv;
	}
	
//	@GetMapping("/error/**")
//	public ModelAndView test1() throws Exception{
//		ModelAndView mv = new ModelAndView();
////		mv.addObject("path", "../error/errorPage");
////		mv.addObject("result", "error");
//		mv.setViewName("notice/noticeList");
//		System.out.println("asdasdasd");
//		return mv;
//	}
	
	/*
	 * @ExceptionHandler(Exception.class) public ModelAndView errorPage() throws
	 * Exception{ ModelAndView mv = new ModelAndView();
	 * mv.setViewName("error/errorPage"); return mv; }
	 */
	
}
