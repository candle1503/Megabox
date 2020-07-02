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
	
	@GetMapping("bookingList")
	public void bookingList() throws Exception {
	}

	@GetMapping("bookingMain")
	public void bookingMain() throws Exception {
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
	public ModelAndView bookingMovieList(String startTime) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<BookingVO> bookingMovieAr = bookingService.bookingMovieList(startTime);

		
		mv.addObject("bookingMovieAr", bookingMovieAr);
		mv.setViewName("booking/bookingMovieList");
		
		return mv;
	}
	
	

}
