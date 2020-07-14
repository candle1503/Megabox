package com.mega.s1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@GetMapping("/")
	public String home() throws Exception{
		return "index";
	}
	
	@GetMapping("/adminOnly")
	public ModelAndView adminOnly() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", "관리자만 가능합니다");
		mv.addObject("path", "/");
		mv.setViewName("common/result");
		return mv;
	}
	
//	@GetMapping("/error/**")
//	public ModelAndView test1() throws Exception{
//		ModelAndView mv = new ModelAndView();
////		mv.addObject("path", "../error/errorPage");
////		mv.addObject("result", "error");
//		mv.setViewName("notice/noticeList");
//		System.out.println("asdasdasd");
//		return mv;
//	}
	
	/*
	 * @ExceptionHandler(Exception.class) public ModelAndView errorPage() throws
	 * Exception{ ModelAndView mv = new ModelAndView();
	 * mv.setViewName("error/errorPage"); return mv; }
	 */
	
}
