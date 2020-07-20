package com.mega.s1.mobile;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mega.s1.member.MemberService;
import com.mega.s1.member.MemberVO;

@Controller
@RequestMapping("/mobile/**")
public class MobileController {

	@Autowired
	private MemberService memberService;

	@GetMapping("mobileIndex")
	public void mobileIndex() throws Exception {
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
			mv.setViewName("mobile/mobileIndex");
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
	public ModelAndView mobileMyPage(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
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
