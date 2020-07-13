package com.mega.s1.booking;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.w3c.dom.ls.LSInput;

import com.mega.s1.member.MemberVO;
import com.mega.s1.movie.MovieService;
import com.mega.s1.movie.MovieVO;
import com.mega.s1.movie.movieFile.MovieFileVO;
import com.mega.s1.theater.TheaterService;
import com.mega.s1.theater.TheaterVO;
import com.mega.s1.seat.SeatVO;
import com.mega.s1.theater.theaterRoom.RoomMovieTimeVO;
import com.mega.s1.ticket.TicketService;
import com.mega.s1.ticket.TicketVO;

@Controller
@RequestMapping("booking/**")
public class BookingController {

	@Autowired
	private BookingService bookingService;
	@Autowired
	private MovieService movieService;
	@Autowired
	private TheaterService theaterService;
	@Autowired
	private TicketService ticketService;
	
	@GetMapping("bookingTimeZone")
	public void bookingTimeList(long startDay, Model model) throws Exception{
		
		List<String> timeList = bookingService.bookingTimeList(startDay);
		
		model.addAttribute("timeList", timeList);
		
	}
	
	@GetMapping("bookingMain")
	public ModelAndView bookingMain(Integer movieNum) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		if(movieNum != null) {
			mv.addObject("movieNum", movieNum);
		}
		
		return mv;
		
	}

//	@GetMapping("bookingSeat")
//	public ModelAndView bookingSeat(RoomMovieTimeVO roomMovieTimeVO) throws Exception {
//		ModelAndView mv = new ModelAndView();
//		
//		return mv;
//		
//	}

	@GetMapping("bookingTest")
	public void bookingTest() throws Exception {
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
	public ModelAndView bookingRoomList(BookingVO bookingVO, MovieVO movieVO, SeatVO seatVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<BookingVO> bookingRoomAr = new ArrayList<BookingVO>();
		
		if(bookingVO.getMovieNumber() != null) {
			int movieNumber1 = Integer.parseInt(bookingVO.getMovieNumber()); 
			bookingVO.setMovieNum(movieNumber1);
			bookingRoomAr = bookingService.bookingFinalResult(bookingVO);
		}else {
			bookingRoomAr = bookingService.bookingRoomList(bookingVO);
		}
		
		
		int bookingRoomArSize = bookingRoomAr.size();
		
		
		Map<Integer, String> startTimeMap = new HashMap<>();
		Map<Integer, String> movieNameMap = new HashMap<>();
		Map<Integer, String> endTimeMap = new HashMap<>();
		Map<Integer, Integer> notBookedMap = new HashMap<>();
		
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
			mv.addObject("stTime", startTime);
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
			
			
			//잔여 좌석
			int tCode = bookingRoomAr.get(i).getTimeCode();
			seatVO.setTimeCode(tCode);
			
			int notBookedCount = bookingService.bookingNotBooked(seatVO);
			notBookedMap.put(i, notBookedCount);
			
			mv.addObject("notBookedCount", notBookedMap);
		}
		
		mv.addObject("bookingRoomArSize", bookingRoomArSize);
		mv.addObject("bookingRoomAr", bookingRoomAr);
		mv.setViewName("booking/bookingRoomList");
		return mv;
	}
	
	@PostMapping("bookingSeatView")
	public ModelAndView bookingSeatView(BookingVO bookingVO, MovieVO movieVO, TheaterVO theaterVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		RoomMovieTimeVO roomMovieTimeVO = new RoomMovieTimeVO();
		roomMovieTimeVO.setTimeCode(bookingVO.getTimeCode());
		List<SeatVO> seatList;
		seatList = bookingService.getSeatList(roomMovieTimeVO);
	
		mv.addObject("seatList", seatList);
		
		
		bookingVO = bookingService.bookingSeatView(bookingVO);
		
		movieVO.setMovieNum(bookingVO.getMovieNum());
		movieVO = movieService.movieSelect(movieVO);
		
		theaterVO.setTheaterNum(bookingVO.getTheaterNum());
		theaterVO = theaterService.theaterBranchSelect(theaterVO);
		
		String startTime =  bookingVO.getStartTime();
		int playTime = movieVO.getPlayTime();
		
		int startTimeHour = Integer.parseInt(startTime.substring(11, 13));
		int startTimeMinute = Integer.parseInt(startTime.substring(14, 16));
		
		int playTimeHour = playTime/60;
		int playTimeMinute = playTime%60;
		
		int endTimeHour = startTimeHour + playTimeHour;
		int endTimeMinute = startTimeMinute + playTimeMinute + 10;
		
		int midnight = 24;
		
		if(endTimeHour >= 24) {
			endTimeHour = midnight - endTimeHour;
			endTimeHour = endTimeHour * -1;
		}
		
		int midnightM = 60;
		
		if(endTimeMinute >= 60) {
			endTimeMinute = midnightM - endTimeMinute;
			endTimeMinute = endTimeMinute * -1;
			endTimeHour++;
		}
		
		String endTimeHourResult = endTimeHour+""; 
					
		if(endTimeHourResult.length() < 2) {
			endTimeHourResult = 0+endTimeHourResult;				
		}
		
		String endTimeMinuteResult = endTimeMinute+"";
		
		if(endTimeMinuteResult.length() < 2) {
			endTimeMinuteResult = 0+endTimeMinuteResult;
		}
		
		String endTime = endTimeHourResult + ":" + endTimeMinuteResult;
	
		String startTimeCut = startTime.substring(11, 16);
		
		String movieTime = startTimeCut + "~" + endTime; 

		String startTimeChange = startTime.substring(0, 10);
		bookingVO.setStartTime(startTimeChange);
		
		long startTimeDayCut = Integer.parseInt(startTime.substring(8, 10));
		
		List<String> timeAr = bookingService.bookingTimeList(startTimeDayCut);
		
		String [] yoils = timeAr.get(0).toString().split("//");
		String yoil = yoils[1];
		
		List<MovieFileVO> mvf = movieService.getMovieFile(movieVO);
		
		MovieFileVO movieFileVO = new MovieFileVO();
		movieFileVO.setFileName(mvf.get(0).getFileName());
		
		mv.addObject("movieFileVO", movieFileVO);
		mv.addObject("yoil", yoil);
		mv.addObject("movieTime", movieTime);
		mv.addObject("movieVO", movieVO);
		mv.addObject("theaterVO", theaterVO);
		mv.addObject("bookingSeatView", bookingVO);
		mv.setViewName("booking/bookingSeat");
		
		return mv;
	}
	
	@PostMapping("bookingSeatNext")
	public ModelAndView bookingSeatNext(SeatVO seatVO, BookingVO bookingVO, MovieVO movieVO, String movieAge, String movieName, TheaterVO theaterVO, MovieFileVO movieFileVO, TicketVO ticketVO, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		int size = seatVO.getSeatList().size();
		mv.addObject("sizeCount", size);
		
		size = size*8000;
		
		movieVO.setAge(movieAge);
		movieVO.setName(movieName);
		
		//mv.addObject("movieFileVO", movieFileVO);
		mv.addObject("seatList", seatVO.getSeatList());
		mv.addObject("theaterVO", theaterVO);
		mv.addObject("movieVO", movieVO);
		mv.addObject("bookingVO", bookingVO);
		mv.addObject("size", size);
		
		return mv;
		
	}
	
	@PostMapping("bookingComplete")
	public ModelAndView bookingComplete(String[] seatList, MovieVO movieVO, String movieAge, String movieName, TheaterVO theaterVO, BookingVO bookingVO, HttpSession session, MovieFileVO movieFileVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		//MemberVO memberVO = (MemberVO)session.getAttribute("member");
		//mv.addObject("phone", memberVO.getPhone());
		
//		ticketVO = ticketService.ticketInfo(ticketVO);
//		
//		ticketService.ticketInsert(ticketVO);
//		
//		System.out.println("titiititi:"+ticketVO.getTicketCode());
//		System.out.println("aaaaaaaaaaa:"+movieAge);
		
		mv.addObject("fileName", movieFileVO.getFileName());
		
		int size = seatList.length;
		mv.addObject("sizeCount", size);
		
		int sizeResult = size*8000;
		mv.addObject("size", sizeResult);
		
		movieVO.setAge(movieAge);
		movieVO.setName(movieName);
		
		mv.addObject("movieVO", movieVO);
		mv.addObject("theaterVO", theaterVO);
		mv.addObject("bookingVO", bookingVO);
		
		Map<Integer, String> seatMap = new HashMap<>();
		
		String seat = "";
		for(int i =0; i<size; i++) {
			seat = seat+seatList[i]+"/";
			
			String seatCut[] = seat.split("/");
			//A, B, C
			String seatRownm = seatCut[i].substring(0, 1);
			
			String seatRCut[];
			String seatColnm = "";
			
			if(seatRownm.equals("A")) {
				//A열이면 A뒤 행만 뽑아옴
				seatRCut = seatCut[i].split("A");
				seatColnm = seatRCut[1];
			}else if(seatRownm.equals("B")) {
				seatRCut = seatCut[i].split("B");
				seatColnm = seatRCut[1];
			}else if(seatRownm.equals("C")) {
				seatRCut = seatCut[i].split("C");
				seatColnm = seatRCut[1];
			}else if(seatRownm.equals("D")) {
				seatRCut = seatCut[i].split("D");
				seatColnm = seatRCut[1];
			}else if(seatRownm.equals("E")) {
				seatRCut = seatCut[i].split("E");
				seatColnm = seatRCut[1];
			}else if(seatRownm.equals("F")) {
				seatRCut = seatCut[i].split("F");
				seatColnm = seatRCut[1];
			}else if(seatRownm.equals("G")) {
				seatRCut = seatCut[i].split("G");
				seatColnm = seatRCut[1];
			}else if(seatRownm.equals("H")) {
				seatRCut = seatCut[i].split("H");
				seatColnm = seatRCut[1];
			}
				
			//A열, B열, C열
			seatRownm = seatRownm + "열";
			
			String seatResult = seatRownm+" "+seatColnm+" / ";
			seatMap.put(i, seatResult);
			
			mv.addObject("seatResult", seatMap);
		}
		
		return mv;
	}
	

}
