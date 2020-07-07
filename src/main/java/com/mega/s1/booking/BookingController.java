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

		int bookingMovieArSize = bookingMovieAr.size();
		
		mv.addObject("bookingMovieArSize", bookingMovieArSize);
		mv.addObject("bookingMovieAr", bookingMovieAr);
		mv.setViewName("booking/bookingMovieList");
		
		return mv;
	}
	
	@GetMapping("bookingRoomList")
	public ModelAndView bookingRoomList(BookingVO bookingVO, MovieVO movieVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<BookingVO> bookingRoomAr = bookingService.bookingRoomList(bookingVO);
		
		int bookingRoomArSize = bookingRoomAr.size();
		
		
		Map<Integer, String> startTimeMap = new HashMap<>();
		Map<Integer, String> movieNameMap = new HashMap<>();
		Map<Integer, String> endTimeMap = new HashMap<>();
		
		//영화상영 시간
		String startTime = "";
		int movieNum = 0;
		//영화 플레이시간
		int playTime = 0;
		
		//영화 상영시간 데이터
		int startTimeHour = 0;
		int startTimeMinute = 0;
		
		int endTimeHour = 0;
		int endTimeMinute = 0;
		
		String endTime = "";
		
		for(int i=0; i<bookingRoomArSize; i++) {
			//영화 시작 시간 잘라오기
			startTime = bookingRoomAr.get(i).getStartTime();
			startTime = startTime.substring(11, 16);
			startTimeMap.put(i, startTime);
			
			mv.addObject("stm", startTimeMap);
			
			
			//영화 제목 가져옴
			movieNum = bookingRoomAr.get(i).getMovieNum();  
			movieVO.setMovieNum(movieNum);
			movieVO = movieService.movieSelect(movieVO);
			movieNameMap.put(i, movieVO.getName());
			
			mv.addObject("vom", movieNameMap);
			
			//영화 끝나는 시간 계산//
			playTime = movieVO.getPlayTime();
			
			startTimeHour = Integer.parseInt(startTime.substring(0, 2));
			startTimeMinute = Integer.parseInt(startTime.substring(3, 5));
			
			int playTimeHour = playTime/60;
			int playTimeMinute = playTime%60;
			
			endTimeHour = startTimeHour + playTimeHour;
			endTimeMinute = startTimeMinute + playTimeMinute + 10;
			
			int midnight = 24;
			
			//24시로 넘어가면 1시로 넘어가게 변경
			if(endTimeHour >= 24) {
				endTimeHour = midnight - endTimeHour;
				endTimeHour = endTimeHour * -1;
			}
			
			//-----------------------------------//
			
			int midnightM = 60;
			
			if(endTimeMinute >= 60) {
				endTimeMinute = midnightM - endTimeMinute;
				endTimeMinute = endTimeMinute * -1;
				endTimeHour++;
			}
			
			String endTimeHourResult = endTimeHour+""; 
						
			//1시를 문자열 01로 변경 
			if(endTimeHourResult.length() < 2) {
				endTimeHourResult = 0+endTimeHourResult;				
			}
			
			String endTimeMinuteResult = endTimeMinute+"";
			
			if(endTimeMinuteResult.length() < 2) {
				endTimeMinuteResult = 0+endTimeMinuteResult;
			}
			
			endTime = endTimeHourResult + ":" + endTimeMinuteResult;
			
			endTimeMap.put(i, endTime);
			mv.addObject("etm", endTimeMap);
			
		}
//		System.out.println("movieNumber:"+movieNumber);
//		List<BookingVO> finalResultAr = bookingService.bookingFinalResult(bookingVO);
//		bookingVO.setMovieNum(movieNumber);
//		finalResultAr.add(bookingVO);
//		
//		mv.addObject("finalResultAr", finalResultAr);
		
		
		mv.addObject("bookingRoomArSize", bookingRoomArSize);
		mv.addObject("bookingRoomAr", bookingRoomAr);
		mv.setViewName("booking/bookingRoomList");
		return mv;
	}
	
	@GetMapping("bookingComplete")
	public void bookingComplete() throws Exception {
	}

}
