package com.mega.s1.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@GetMapping("memberJoin")
	public ModelAndView setJoin() throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("member/memberJoin");
		return mv;
	}
	
	@PostMapping("memberJoin")
	public ModelAndView setJoin(MemberVO memberVO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println(memberVO.getId());
		memberService.setJoin(memberVO);
		session.setAttribute("member", memberVO);
		mv.setViewName("redirect:../");
		return mv;
	}
	
	@GetMapping("memberLogin")
	public ModelAndView setLogin() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/memberLogin");
		return mv;
	}
	
	@PostMapping("memberLogin")
	public ModelAndView setLogin(MemberVO memberVO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		memberVO =  memberService.setLogin(memberVO);
		System.out.println(memberVO.getEmail());
		session.setAttribute("member", memberVO);
		mv.setViewName("redirect:../");
		return mv;
	}
	
}
