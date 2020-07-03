package com.mega.s1.booking;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mega.s1.movie.MovieService;
import com.mega.s1.movie.MovieVO;

@Controller
@RequestMapping("booking/**")
public class BookingController {

	@Autowired
	private BookingService bookingService;
	@Autowired
	private MovieService movieService;

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
	
	@GetMapping("bookingRoomList")
	public ModelAndView bookingRoomList(BookingVO bookingVO, MovieVO movieVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<BookingVO> bookingRoomAr = bookingService.bookingRoomList(bookingVO);
		
		System.out.println("ststst:"+bookingRoomAr.get(0).getStartTime());
		
		String startTime = "";
		
		Map<Integer, String> movieNameMap = new HashMap<>();
		
		int movieNum = 0;
		
		for(int i=0; i<bookingRoomAr.size(); i++) {
			startTime = bookingRoomAr.get(i).getStartTime();
			
			
			movieNum = bookingRoomAr.get(i).getMovieNum();  
			
			movieVO.setMovieNum(movieNum);
			
			movieVO = movieService.movieSelect(movieVO);
			
			movieNameMap.put(i, movieVO.getName());
			
			mv.addObject("vom", movieNameMap);
		}
		
		mv.addObject("bookingRoomAr", bookingRoomAr);
		mv.setViewName("booking/bookingRoomList");
		return mv;
	}
	

}
