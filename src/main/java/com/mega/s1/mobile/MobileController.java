package com.mega.s1.mobile;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mega.s1.board.notice.NoticeService;
import com.mega.s1.board.notice.NoticeVO;
import com.mega.s1.member.MemberService;
import com.mega.s1.member.MemberVO;
import com.mega.s1.movie.MovieService;
import com.mega.s1.movie.MovieVO;
import com.mega.s1.movie.movieFile.MovieFileVO;
import com.mega.s1.theater.theaterRoom.TheaterRoomVO;
import com.mega.s1.ticket.TicketService;
import com.mega.s1.ticket.TicketVO;
import com.mega.s1.util.Pager;

@Controller
@RequestMapping("/mobile/**")
public class MobileController {

	@Autowired
	private MemberService memberService;

	@Autowired
	private TicketService ticketService;

	@Autowired
	private MovieService movieService;

	@Autowired
	private NoticeService noticeService;

	@GetMapping("mobileIndex")
	public ModelAndView mobileIndex(ModelAndView mv, NoticeVO noticeVO, Pager pager) throws Exception {

		long amount = ticketService.bookingAllCount();
		List<TicketVO> bk = ticketService.bookingCount();

		ticketService.bookingRateReset();

		for (int i = 0; i < bk.size(); i++) {
			MovieVO movieVO = new MovieVO();
			int rating = bk.get(i).getAmount();
			double booking = rating * 1.0 / amount * 100.0;
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

		// 개봉예정작

		movieList = movieService.futureList(0);
		long movieCount = movieService.futureCount();
		mv.addObject("movieCount", movieCount);
		mv.addObject("startNum", 0);
		mv.addObject("listName", "future");
		mv.addObject("movie2", movieList);

		// 공지사항 받아오기

		pager = new Pager();

		List<NoticeVO> ar2 = noticeService.boardList(pager);

		mv.addObject("notice", ar2);

		mv.setViewName("mobile/mobileIndex");
		return mv;
	}

	@GetMapping("mobileLogin")
	public ModelAndView mobileLogin() throws Exception {

		ModelAndView mv = new ModelAndView();
		MemberVO memberVO = new MemberVO();
		mv.addObject("memberVO", memberVO);
		mv.setViewName("mobile/mobileLogin");
		return mv;

	}

	@PostMapping("mobileLogin")
	public ModelAndView mobileLoginPost(MemberVO memberVO, BindingResult bindingResult, HttpSession session)
			throws Exception {
		ModelAndView mv = new ModelAndView();
		String path = "login";
		boolean result = memberService.errorCheck(memberVO, bindingResult, session, path);
		if (result) {
			mv.setViewName("mobile/mobileLogin");
			mv.addObject("memberVO", memberVO);
			System.out.println("로그인실패");
		} else {
			memberVO = memberService.setLogin(memberVO);
			session.setAttribute("member", memberVO);
			mv.setViewName("redirect:./mobileIndex");
			System.out.println("로그인성공");
		}
		return mv;
	}

	@GetMapping("mobileLogout")
	public ModelAndView mobileLogout(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();

		session.invalidate();
		mv.setViewName("redirect:./mobileIndex");
		return mv;
	}

	@GetMapping("mobileTicket")
	public ModelAndView mobileMyPage(HttpSession session, String id, Model model) throws Exception {
		ModelAndView mv = new ModelAndView();

		memberService.updateTicket();

		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		id = memberVO.getId();
		model.addAttribute("id", id);

		List<TicketVO> bookedCompAr = memberService.bookedCompleteList(id);

		int size = bookedCompAr.size();
		model.addAttribute("bookedSize", size);

		Map<Integer, String> theaterNameMap = new HashMap<>();
		Map<Integer, String> theaterRoomNameMap = new HashMap<>();
		Map<Integer, String> viewDateMap = new HashMap<>();
		List<Integer> points = new ArrayList<Integer>();

		String viewDateCut;
		String viewDateTimeCut;

		for (int i = 0; i < size; i++) {
			Integer point;
			point = bookedCompAr.get(i).getSavedPoint();
			TheaterRoomVO theaterRoomVO = new TheaterRoomVO();

			points.add(i, point);

			model.addAttribute("points", points);

			theaterRoomVO.setTheaterRoomCode(bookedCompAr.get(i).getTheaterRoomCode());

			theaterRoomVO = memberService.getRoom(theaterRoomVO);

			theaterNameMap.put(i, theaterRoomVO.getName());
			theaterRoomNameMap.put(i, theaterRoomVO.getRoomName());

			model.addAttribute("theaterName", theaterNameMap);
			model.addAttribute("theaterRoomName", theaterRoomNameMap);

			// 날짜 따로
			viewDateCut = bookedCompAr.get(i).getViewDate().substring(0, 10);
			viewDateTimeCut = bookedCompAr.get(i).getViewDate().substring(11, 16);

			String viewDateR = viewDateCut + " / " + viewDateTimeCut;

			viewDateMap.put(i, viewDateR);

			model.addAttribute("viewDate", viewDateMap);

			MovieVO movieVO = new MovieVO();
			movieVO.setMovieNum(bookedCompAr.get(i).getMovieNum());
			List<MovieFileVO> mvfilesAr = movieService.getMovieFile(movieVO);

			model.addAttribute("mvfile", mvfilesAr);
		}

		model.addAttribute("bookedCompAr", bookedCompAr);

		mv.setViewName("mobile/mobileTicket");
		return mv;
	}

	@GetMapping("mobileQrCode")
	public void mobileQrCode() throws Exception {
	}

	@GetMapping("fingerPrint/fingerPrintIndex")
	public void fingerPrintIndex() throws Exception {
	}

}
