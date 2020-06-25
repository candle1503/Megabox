package com.mega.s1.theater;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/theater/**")
public class TheaterController {
	
	@GetMapping("theaterMain")
	public ModelAndView theaterMain() throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("theater/theaterMain");
		
		return mv;		
	}

}
