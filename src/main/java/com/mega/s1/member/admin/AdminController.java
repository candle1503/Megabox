package com.mega.s1.member.admin;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mega.s1.member.MemberVO;
import com.mega.s1.theater.TheaterVO;
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
	public ModelAndView theaterList() throws Exception {
		ModelAndView mv = new ModelAndView();
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
		if (bindingResult.hasErrors()) {
			mv.setViewName("admin/adminAddTheater");
		}else {
			adminService.addTheater(theaterVO);
			mv.setViewName("admin/adminTheaterList");
		}
		return mv;
	}
	
}
