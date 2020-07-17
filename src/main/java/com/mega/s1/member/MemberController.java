package com.mega.s1.member;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.mega.s1.member.memberFile.MemberFileVO;
import com.mega.s1.movie.MovieService;
import com.mega.s1.movie.MovieVO;
import com.mega.s1.movie.movieFile.MovieFileVO;
import com.mega.s1.review.ReviewVO;
import com.mega.s1.theater.TheaterVO;
import com.mega.s1.theater.theaterRoom.TheaterRoomRepository;
import com.mega.s1.theater.theaterRoom.TheaterRoomVO;
import com.mega.s1.ticket.TicketVO;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private MovieService movieService;
	
	@GetMapping("memberJoin")
	public ModelAndView setJoin() throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO = new MemberVO();
		mv.addObject("memberVO", memberVO);
		mv.setViewName("member/memberJoin");
		return mv;
	}
	
	@PostMapping("memberJoin")
	public ModelAndView setJoin(@Valid MemberVO memberVO, BindingResult bindingResult,  HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		String path="join";
		boolean result = memberService.errorCheck(memberVO, bindingResult, session, path);
		if(result) {
			mv.setViewName("member/memberJoin");
			mv.addObject("memerVO", memberVO);
		}else {
			memberVO = memberService.setJoin(memberVO);
			memberVO = memberService.getMemberInfo(memberVO);
			session.setAttribute("member", memberVO);
			mv.setViewName("redirect:../");
		}
		
		return mv;
	}
	
	@GetMapping("memberLogin")
	public ModelAndView setLogin() throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO= new MemberVO();
		mv.addObject("memberVO", memberVO);
		mv.setViewName("member/memberLogin");
		return mv;
	}
	
	@PostMapping("memberLogin")
	public ModelAndView setLogin(MemberVO memberVO,BindingResult bindingResult ,HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		String path ="login";
		boolean result = memberService.errorCheck(memberVO, bindingResult, session, path);
		if(result) {
			mv.setViewName("member/memberLogin");
			mv.addObject("memberVO", memberVO);
		}else {
			memberVO =  memberService.setLogin(memberVO);
			memberVO = memberService.getMemberInfo(memberVO);
			session.setAttribute("member", memberVO);
			mv.setViewName("redirect:../");
		}
		return mv;
	}
	
	@GetMapping("memberLogout")
	public ModelAndView setLogout(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		session.invalidate();
		mv.setViewName("redirect:../");
		return mv;
	}
	
	@GetMapping("getMyPage")
	public ModelAndView getMyPage(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		TicketVO ticketVO = new TicketVO();
		MemberFileVO memberFileVO = new MemberFileVO();
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		if(memberVO.getId().equals("ADMIN")) {
			mv.setViewName("admin/adminPage");
		}else {
			Integer ticketCount = memberService.getTicketCount(memberVO);
			Integer reviewCount = memberService.getReviewCount(memberVO);
			
			ticketVO = memberService.getOneTicket(memberVO);
			
			memberFileVO = memberService.getMemberFile(memberVO);
			memberVO.setFileName(memberFileVO.getFileName());
			memberVO.setOriName(memberFileVO.getOriName());
			mv.addObject("ticketCount", ticketCount);
			mv.addObject("reviewCount", reviewCount);
			mv.addObject("ticketVO", ticketVO);
			session.setAttribute("memberVO", memberVO);
			mv.setViewName("member/memberMyPage");
		}
		return mv;
	}
	
	@GetMapping("passwordCheck")
	public ModelAndView passwordCheck() throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO = new MemberVO();
		mv.addObject("memberVO", memberVO);
		mv.setViewName("member/memberPasswordCheck");
		return mv;
	}
	
	@PostMapping("passwordCheck")
	public ModelAndView passwordCheck(@Valid MemberVO memberVO, BindingResult bindingResult, HttpSession session) throws Exception{
		MemberFileVO memberFileVO = new MemberFileVO();
		ModelAndView mv = new ModelAndView();
		String password = memberVO.getPassword();
		memberVO=(MemberVO)session.getAttribute("member");
		memberVO.setPassword(password);
		boolean result = memberService.passwordCheck(memberVO, bindingResult);
		if(result) {
			mv.setViewName("/common/result");
			mv.addObject("result", "비밀번호가 일치하지 않습니다.");
			mv.addObject("path", "/member/passwordCheck");
		}else {
			memberFileVO = memberService.getMemberFile(memberVO);
			memberVO.setFileName(memberFileVO.getFileName());
			memberVO.setOriName(memberFileVO.getOriName());
			session.setAttribute("member", memberVO);
			mv.addObject("memberVO", memberVO);
			System.out.println(memberVO.getFileName());
			mv.setViewName("./member/memberUpdate");
		}
		return mv;
	}
	
	
	@GetMapping("memberUpdate")
	public ModelAndView memberUpdate(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO =(MemberVO)session.getAttribute("member");
		mv.addObject("memberVO", memberVO);
		mv.setViewName("member/memberUpdate");
		return mv;
	}
	
	@PostMapping("memberUpdate")
	public ModelAndView memberUpdate(@Valid MemberVO memberVO, BindingResult bindingResult ,HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		String path="update";
		boolean result = memberService.errorCheck(memberVO, bindingResult, session, path);
		if(result) {
			mv.setViewName("member/memberUpdate");
			mv.addObject("memberVO", memberVO);
		}else {
			memberService.setUpdate(memberVO);
			session.setAttribute("member", memberVO);
			mv.addObject("result", memberVO.getId()+"님 정보가 수정되었습니다.");
			mv.addObject("path", "/member/passwordCheck");
			mv.setViewName("common/result");
		}
		return mv;
	}
	
	@GetMapping("memberDelete")
	public ModelAndView memberDelete(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		memberService.setDelete(memberVO);
		session.invalidate();
		mv.addObject("result", memberVO.getId()+"님 계정이 삭제되었습니다.");
		mv.addObject("path", "/");
		mv.setViewName("common/result");
		return mv;
	}
	
	@GetMapping("getAdminPage")
	public ModelAndView getAdminPage(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO = (MemberVO)session.getAttribute("admin");
		mv.addObject("memberVO", memberVO);
		mv.setViewName("member/memberAdminPage");
		return mv;
	}
	
	@PostMapping("profileUpdate")
	public ModelAndView profileUpdate(MultipartFile file, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO=(MemberVO)session.getAttribute("member");
		MemberFileVO memberFileVO=memberService.setProfile(memberVO, file);
		memberVO.setFileName(memberFileVO.getFileName());
		memberVO.setOriName(memberFileVO.getOriName());
		session.setAttribute("member", memberVO);
		mv.addObject("memberVO", memberVO);
		mv.setViewName("member/memberUpdate");
		return mv;
	
	}
	
	@GetMapping("bookingMy")
	public void bookingMy(HttpSession session, String id, Model model) throws Exception {
		//현재 날짜로 부터 지난 티켓의 status 1로 변경
		memberService.updateTicket();
		
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
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
		
		for(int i=0; i<size; i++) {
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
			
			//날짜 따로
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
		
	}
	
	@GetMapping("bookingMyAfter")
	public void bookingMyAfter(String id, Model model, TicketVO ticketVO) throws Exception{
		
		List<TicketVO> bookedCompAfterAr;
		if(ticketVO.getCalandarDate() != null) {
			ticketVO.setCalandarDate(ticketVO.getCalandarDate()+"-01");
			String [] month = ticketVO.getCalandarDate().split("-");
			int monthNum =Integer.parseInt(month[1])+1;
			ticketVO.setCalandarDate2(month[0]+"-"+monthNum+"-01");
			ticketVO.setId(id);
			bookedCompAfterAr = memberService.bookedCompleteListCalandar(ticketVO);
			
		}else {
			bookedCompAfterAr = memberService.bookedCompleteAfterList(id);
		}		
		
		int size = bookedCompAfterAr.size();
		model.addAttribute("bookedAfterSize", size);
		
		Map<Integer, String> theaterNameMap = new HashMap<>();
		Map<Integer, String> theaterRoomNameMap = new HashMap<>();
		Map<Integer, String> viewDateMap = new HashMap<>();
		List<Integer> points = new ArrayList<Integer>();
		
		String viewDateCut;
		String viewDateTimeCut;
		
		for(int i=0; i<size; i++) {
			Integer point;
			point = bookedCompAfterAr.get(i).getSavedPoint();
			
			points.add(i, point);
			
			model.addAttribute("points", points);
			
			TheaterRoomVO theaterRoomVO = new TheaterRoomVO();
			theaterRoomVO.setTheaterRoomCode(bookedCompAfterAr.get(i).getTheaterRoomCode());
			
			theaterRoomVO = memberService.getRoom(theaterRoomVO);
			
			theaterNameMap.put(i, theaterRoomVO.getName());
			theaterRoomNameMap.put(i, theaterRoomVO.getRoomName());
			
			model.addAttribute("theaterName", theaterNameMap);
			model.addAttribute("theaterRoomName", theaterRoomNameMap);
			
		
			viewDateCut = bookedCompAfterAr.get(i).getViewDate().substring(0, 10);
			viewDateTimeCut = bookedCompAfterAr.get(i).getViewDate().substring(11, 16);
			
			String viewDateR = viewDateCut + " / " + viewDateTimeCut;
			
			viewDateMap.put(i, viewDateR);
			
			model.addAttribute("viewDate", viewDateMap);
			
			MovieVO movieVO = new MovieVO();
			movieVO.setMovieNum(bookedCompAfterAr.get(i).getMovieNum());
			List<MovieFileVO> mvfilesAr = movieService.getMovieFile(movieVO);
			
			model.addAttribute("mvfile", mvfilesAr);
		}
		
		model.addAttribute("bookedCompAfterAr", bookedCompAfterAr);
		
	}
	
	@GetMapping("reviewList")
	public ModelAndView myMovieStory(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO = new MemberVO();
		memberVO = (MemberVO)session.getAttribute("member");
		List<ReviewVO> reviewVOs = memberService.getReviewList(memberVO);
		int size = reviewVOs.size();
		mv.addObject("size", size);
		mv.addObject("List", reviewVOs);
		mv.setViewName("member/reviewList");
		return mv;
	}
	
	@PostMapping("deleteReview")
	public ModelAndView deleteReview(ReviewVO reviewVO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		TicketVO ticketVO = new TicketVO();
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		ticketVO.setId(memberVO.getId());
		ticketVO.setMovieName(reviewVO.getMovieName());
		
		memberService.deleteReview(reviewVO,ticketVO);
		
		
		mv.setViewName("redirect:./reviewList");
		return mv;
	}
	
}
