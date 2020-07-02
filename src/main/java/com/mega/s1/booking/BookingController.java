package com.mega.s1.booking;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("booking/**")
public class BookingController {

	@Autowired
	private BookingService bookingService;
	@Autowired
	private BookingTimeService bookingTimeService;
	
	@GetMapping("bookingList")
	public void bookingList() throws Exception {
	}

	@GetMapping("bookingMain")
	public void bookingMain() throws Exception {
//		System.out.println("movieNum!!!!!!:"+bookingVO.getMovieNum());
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("movieNum", bookingVO.getMovieNum());
//		mv.setViewName("booking/bookingMain");
//		return mv;
	}

	@GetMapping("bookingSeat")
	public void bookingSeat() throws Exception {
	}

	@GetMapping("bookingTest")
	public void bookingTest() throws Exception {
	}
	
	@GetMapping("bookingSeatNext")
	public void bookingSeatNext() throws Exception {
	}
	
	@GetMapping("bookingMovieList")
	public ModelAndView bookingMovieList(BookingVO bookingVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<BookingVO> bookingMovieAr = bookingService.bookingMovieList(bookingVO);

		List<BookingVO> bookingMovieTimeAr = bookingService.bookingMovieTime(bookingVO);
		mv.addObject("bookingMovieTimeAr", bookingMovieTimeAr);
		
		//System.out.println("stt:"+bookingMovieTimeAr.get(0).getStartTime());
		
		mv.addObject("bookingMovieAr", bookingMovieAr);
		mv.setViewName("booking/bookingMovieList");
		
		return mv;
	}
	
	@GetMapping("bookingLocalList")
	public ModelAndView bookingLocalList(BookingVO bookingVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<BookingVO> bookingLocalAr = bookingService.bookingLocalList(bookingVO);
		
		int bookingLocalArSize = bookingLocalAr.size();
		mv.addObject("bookingLocalArSize", bookingLocalArSize);
		
		mv.addObject("bookingLocalAr", bookingLocalAr);
		mv.setViewName("booking/bookingLocalList");
		
		return mv;
	}
	

}
