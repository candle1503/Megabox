package com.mega.s1.movie;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/movie/**")
public class MovieController {
	
	@Autowired
	private MovieService movieService;
	
	@GetMapping("movieSelect")
	public ModelAndView movieSelect(ModelAndView mv, MovieVO movieVO) throws Exception{
		
		MovieVO vo = movieService.movieSelect(movieVO);
		mv.addObject("vo", vo);
		System.out.println(vo.getPlayTime());
		mv.setViewName("movie/movieInfo");
		return mv;
	}

}
