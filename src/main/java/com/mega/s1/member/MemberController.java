package com.mega.s1.member;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mega.s1.member.memberFile.MemberFileVO;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
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
		boolean result = memberService.memberJoinError(memberVO, bindingResult, session);
		if(result) {
			mv.setViewName("member/memberJoin");
			mv.addObject("memerVO", memberVO);
		}else {
			memberService.setJoin(memberVO);
			memberService.setProfile(memberVO);
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
		boolean result = memberService.memberLoginError(memberVO, bindingResult);
		if(result) {
			mv.setViewName("member/memberLogin");
			mv.addObject("memberVO", memberVO);
		}else {
			memberVO =  memberService.setLogin(memberVO);
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
	public ModelAndView getMyPage() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/memberMyPage");
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
			mv.setViewName("./member/memberUpdate");
		}
		return mv;
	}
	
	
	@GetMapping("memberUpdate")
	public ModelAndView getUserInfo() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/memberUserInfo");
		return mv;
	}
	
	@GetMapping("memberDelete")
	public ModelAndView memberDelete(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		session.invalidate();
		mv.setViewName("redirect:../");
		return mv;
	}
	
}
