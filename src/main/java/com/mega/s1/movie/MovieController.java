package com.mega.s1.movie;

import java.sql.Time;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	@GetMapping("preview")
	public ModelAndView preview(ModelAndView mv, MovieVO movieVO) throws Exception {
		List<MovieFileVO> files = movieService.getMovieFile(movieVO);
		MovieVO vo = movieService.movieSelect(movieVO);
		long image = movieService.imageCount(movieVO);
		List<MovieFileVO> videos = movieService.videoFile(movieVO);
		long video = movieService.videoCount(movieVO);
		
		mv.addObject("video", videos);
		mv.addObject("videoCount", video);
		mv.addObject("image", image);
		mv.addObject("vo", vo);
		mv.addObject("file", files);
		mv.setViewName("movie/preview");
		return mv;
	}
	
	@GetMapping("movieSelect")
	public ModelAndView movieSelect(ModelAndView mv, MovieVO movieVO, Pager pager) throws Exception{
		List<MovieFileVO> files = movieService.getMovieFile(movieVO);
		MovieVO vo = movieService.movieSelect(movieVO);
		List<ReviewVO> review= movieService.reviewPage(pager);
		DecimalFormat df = new DecimalFormat("#,###");
		String viewer = df.format(vo.getViews());
		mv.addObject("views", viewer);
		long all = movieService.boardCount(pager);
		if(all>0) {
		long player = Math.round(movieService.player(movieVO)*100/all);
		long direct = Math.round(movieService.direct(movieVO)*100/all);
		long ost = Math.round(movieService.ost(movieVO)*100/all);
		long story = Math.round(movieService.story(movieVO)*100/all);
		long beauty = Math.round(movieService.beauty(movieVO)*100/all);
		
		if(player<=85) {
			player += 15; 
		} else {
			player = 100;
		};
		
		if(direct<=85) {
			direct += 15;
		} else {
			direct =100;
		};
		if(ost<=85) {
			ost += 15;
		} else {
			ost =100;
		};
		if(story<=85) {
			story += 15;
		} else {
			story =100;
		};
		if(beauty<=85) {
			beauty += 15;
		} else {
			beauty =100;
		};
		mv.addObject("player", player);
		mv.addObject("direct", direct);
		mv.addObject("ost", ost);
		mv.addObject("story", story);
		mv.addObject("beauty", beauty);
		};
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
		DecimalFormat df = new DecimalFormat("#,###");
		String viewer = df.format(vo.getViews());
		mv.addObject("views", viewer);
		long all = movieService.boardCount(pager);
		
		if(all>0) {
		long player = Math.round(movieService.player(movieVO)*100/all);
		long direct = Math.round(movieService.direct(movieVO)*100/all);
		long ost = Math.round(movieService.ost(movieVO)*100/all);
		long story = Math.round(movieService.story(movieVO)*100/all);
		long beauty = Math.round(movieService.beauty(movieVO)*100/all);
		
		if(player<=85) {
			player += 15; 
		} else {
			player = 100;
		};
		
		if(direct<=85) {
			direct += 15;
		} else {
			direct =100;
		};
		if(ost<=85) {
			ost += 15;
		} else {
			ost =100;
		};
		if(story<=85) {
			story += 15;
		} else {
			story =100;
		};
		if(beauty<=85) {
			beauty += 15;
		} else {
			beauty =100;
		};
		
		mv.addObject("player", player);
		mv.addObject("direct", direct);
		mv.addObject("ost", ost);
		mv.addObject("story", story);
		mv.addObject("beauty", beauty);
		};
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
	
	@PostMapping("likeUpdate")
	@ResponseBody
	public int likeUpdate(MovieVO movieVO) throws Exception {
		
		int result = movieService.likeUpdate(movieVO);
		
		return result;
	}
	
	@GetMapping("movieList")
	public ModelAndView movieList(ModelAndView mv) throws Exception{
		List<MovieVO> movieList = movieService.movieList();
		mv.addObject("movie", movieList);
		mv.setViewName("movie/movieList");
		return mv;
	}
	


}
