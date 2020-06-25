package com.mega.s1.movie;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mega.s1.movie.movieFile.MovieFileVO;

@Controller
@RequestMapping("/movie/**")
public class MovieController {
	
	@Autowired
	private MovieService movieService;
	
	@GetMapping("movieSelect")
	public ModelAndView movieSelect(ModelAndView mv, MovieVO movieVO) throws Exception{
		List<MovieFileVO> files = movieService.getMovieFile(movieVO);
		MovieVO vo = movieService.movieSelect(movieVO);
		
		mv.addObject("vo", vo);
		mv.addObject("file", files);
		mv.setViewName("movie/movieInfo");
		return mv;
	}

}
