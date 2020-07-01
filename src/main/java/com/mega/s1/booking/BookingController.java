package com.mega.s1.booking;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public ModelAndView bookingMovieList(BookingVO bookingVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<BookingVO> bookingMovieAr = bookingService.bookingMovieList(bookingVO);
		
		System.out.println("age:"+bookingMovieAr.get(0).getAge());
		
		String age = "";
		
		for(int i=0; i<bookingMovieAr.size(); i++) {
			 age = bookingMovieAr.get(i).getAge();
		}
		
		mv.addObject("bookingMovieAr", bookingMovieAr);
		mv.addObject("bookingMovieAge", age);
		
		mv.setViewName("booking/bookingMovieList");
		return mv;
	}
	

}
