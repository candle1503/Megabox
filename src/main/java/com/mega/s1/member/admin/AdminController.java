package com.mega.s1.member.admin;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mega.s1.member.MemberVO;
import com.mega.s1.movie.MovieVO;
import com.mega.s1.theater.TheaterVO;
import com.mega.s1.theater.theaterRoom.TheaterRoomVO;
import com.mega.s1.util.Pager;

@Controller
@RequestMapping("/admin/**")
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	@GetMapping("memberList")
	public ModelAndView memberList(Pager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<MemberVO> memberVOs = adminService.getMemberList(pager);
		mv.addObject("list", memberVOs);
		mv.addObject("pager", pager);
		Long size = adminService.getMemberCount(pager);
		mv.addObject("size", size);
		mv.setViewName("admin/adminMemberList");
		return mv;
	}
	
	@GetMapping("theaterList")
	public ModelAndView theaterList(Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<TheaterVO> theaterVOs = adminService.getTheaterList(pager);
		mv.addObject("list", theaterVOs);
		mv.addObject("pager", pager);
		Long size = adminService.getTheaterCount(pager);
		mv.addObject("size", size);
		mv.setViewName("admin/adminTheaterList");
		return mv;
	}
	
	
	@GetMapping("theaterAdd")
	public ModelAndView theaterAdd() throws Exception {
		ModelAndView mv = new ModelAndView();
		TheaterVO theaterVO = new TheaterVO();
		mv.addObject("theaterVO", theaterVO);
		mv.setViewName("admin/adminAddTheater");
		return mv;
	}
	
	@PostMapping("theaterAdd")
	public ModelAndView theaterAdd(@Valid TheaterVO theaterVO, BindingResult bindingResult) throws Exception{
		ModelAndView mv = new ModelAndView();
		int roomCount = theaterVO.getRoomCount();
		TheaterRoomVO roomVO = new TheaterRoomVO();
		if (bindingResult.hasErrors()) {
			mv.addObject("theaterVO", theaterVO);
			mv.setViewName("admin/adminAddTheater");
		}else {
			adminService.addTheater(theaterVO);
					roomVO.setName(theaterVO.getName());
					adminService.theaterRoomSet(roomVO,roomCount);
			mv.setViewName("redirect:./theaterList");
		}
		return mv;
	}
	
	@GetMapping("theaterSelect")
	public ModelAndView theaterSelect(TheaterVO theaterVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		theaterVO = adminService.theaterSelect(theaterVO);
		mv.addObject("theaterVO", theaterVO);
		mv.setViewName("admin/adminSelectTheater");
		return mv;
	}
	
	@GetMapping("theaterUpdate")
	public ModelAndView theaterUpdate(TheaterVO theaterVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		theaterVO = adminService.theaterSelect(theaterVO);
		mv.addObject("theaterVO", theaterVO);
		mv.setViewName("admin/adminUpdateTheater");
		return mv;
	}
	
	@PostMapping("theaterUpdate")
	public ModelAndView theaterUpdate(TheaterVO theaterVO,HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = adminService.theaterUpdate(theaterVO);
		mv.setViewName("admin/adminSelectTheater");
		return mv;
	}
	
	@GetMapping("theaterNotice")
	public ModelAndView theaterNotice(TheaterVO theaterVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("admin/adminTheaterNotice");
		return mv;
	}
	
	@GetMapping("setTheaterRoom")
	public ModelAndView setTheaterRoom(TheaterVO theaterVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<TheaterRoomVO> roomVOs = adminService.getRoomList(theaterVO);
		List<MovieVO> movieVOs = adminService.getMovieList();
		System.out.println(movieVOs.get(0).getOpenDay());
		System.out.println(movieVOs.get(1).getOpenDay());
		System.out.println(movieVOs.get(2).getOpenDay());
		System.out.println(movieVOs.get(3).getOpenDay());
		mv.addObject("list", roomVOs);
		mv.addObject("movieList", movieVOs);
		
		mv.setViewName("admin/adminSetTheaterRoom");
		return mv;
	}
	
}
