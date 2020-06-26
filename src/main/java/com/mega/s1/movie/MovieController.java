package com.mega.s1.movie;

import java.sql.Time;
import java.util.Calendar;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mega.s1.movie.movieFile.MovieFileVO;
import com.mega.s1.review.ReviewVO;
import com.mega.s1.util.Pager;

@Controller
@RequestMapping("/movie/**")
public class MovieController {
	
	@Autowired
	private MovieService movieService;
	
	@GetMapping("movieSelect")
	public ModelAndView movieSelect(ModelAndView mv, MovieVO movieVO, Pager pager) throws Exception{
		List<MovieFileVO> files = movieService.getMovieFile(movieVO);
		MovieVO vo = movieService.movieSelect(movieVO);
		List<ReviewVO> review= movieService.reviewPage(pager);
		long all = movieService.boardCount(pager);
		mv.addObject("review", review);
		mv.addObject("vo", vo);
		mv.addObject("count", all);
		mv.addObject("file", files);
		mv.setViewName("movie/movieInfo");
		return mv;
	}
	
	@GetMapping("review")
	public ModelAndView review(ModelAndView mv, MovieVO movieVO) throws Exception {
		MovieVO vo = movieService.movieSelect(movieVO);
		
		mv.addObject("vo", vo);
		mv.setViewName("movie/review");
		return mv;
	}
	
	@GetMapping("movieSelect1")
	public ModelAndView movieSelectAgain(ModelAndView mv, MovieVO movieVO, Pager pager) throws Exception{
		List<MovieFileVO> files = movieService.getMovieFile(movieVO);
		MovieVO vo = movieService.movieSelect(movieVO);
		List<ReviewVO> review= movieService.reviewPage(pager);
		long all = movieService.boardCount(pager);
		mv.addObject("review", review);
		mv.addObject("vo", vo);
		mv.addObject("count", all);
		mv.addObject("file", files);
		
		mv.setViewName("movie/info");
		return mv;
	}
	
	@GetMapping("reviewPage")
	public ModelAndView reviewPage(ModelAndView mv, Pager pager) throws Exception {
		MovieVO movieVO = new MovieVO();
		movieVO.setMovieNum(pager.getMovieNum());
		MovieVO vo = movieService.movieSelect(movieVO);
		List<ReviewVO> review= movieService.reviewPage(pager);
		long all = movieService.boardCount(pager);
		mv.addObject("review", review);
		mv.addObject("vo", vo);
		mv.addObject("count", all);
		mv.addObject("pager", pager);
		mv.setViewName("movie/reviewPage");
		return mv;
	}
	
	@PostMapping("reviewInsert")
	public String reviewInsert(RedirectAttributes rd, ReviewVO reviewVO) throws Exception{
			int result = movieService.reviewInsert(reviewVO);
			rd.addFlashAttribute("result",result);
			String re = "redirect:./movieSelect?movieNum="+reviewVO.getMovieNum();
			return re;
	
	}

}
