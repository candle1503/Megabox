package com.mega.s1.movie;

import java.sql.Time;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mega.s1.movie.movieFile.MovieFileVO;
import com.mega.s1.review.ReviewVO;
import com.mega.s1.theater.TheaterVO;
import com.mega.s1.util.Pager;

@Controller
@RequestMapping("/movie/**")
public class MovieController {
	
	@Autowired
	private MovieService movieService;
	
	@GetMapping("preview")
	public ModelAndView preview(ModelAndView mv, MovieVO movieVO) throws Exception {
		
		List<MovieFileVO> files = movieService.getMovieFile(movieVO);
		System.out.println("?????????????11111");
		MovieVO vo = movieService.movieSelect(movieVO);
		System.out.println("?????????????22222");
		long image = movieService.imageCount(movieVO);
		System.out.println("?????????????33333");
		List<MovieFileVO> videos = movieService.videoFile(movieVO);
		System.out.println("?????????????44444");
		long video = movieService.videoCount(movieVO);
		System.out.println("?????????????555555");
		
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
		mv.addObject("listName", "all");
		mv.addObject("movie", movieList);
		mv.setViewName("movie/movieList");
		return mv;
	}
	
	@GetMapping("futureList")
	public ModelAndView futureList(ModelAndView mv) throws Exception{
		List<MovieVO> movieList = movieService.futureList();
		mv.addObject("listName", "future");
		mv.addObject("movie", movieList);
		mv.setViewName("movie/movieList");
		return mv;
	}
	
	@GetMapping("ingList")
	public ModelAndView ingList(ModelAndView mv) throws Exception{
		List<MovieVO> movieList = movieService.ingList();
		mv.addObject("listName", "ing");
		mv.addObject("movie", movieList);
		mv.setViewName("movie/movieList");
		return mv;
	}
	
	@GetMapping("movieInsert")
	public ModelAndView movieInsert(ModelAndView mv) throws Exception {
		MovieVO movieVO = new MovieVO();
		mv.addObject("movieVO", movieVO);
		mv.setViewName("admin/addMovie");
		return mv;
	}
	
	@PostMapping("movieInsert")
	public ModelAndView movieInsert(ModelAndView mv, @Valid MovieVO movieVO, BindingResult bindingResult, MultipartFile[] files, String[] details, String[] characters) throws Exception {
		
		 //취미 부분은 별도로 읽어들어 다시 빈 클래스에 저장
        String[] genre = movieVO.getGenreTest();
        //배열의 있는 내용을 하나의 스트림으로 젖아
        String texthobby = "";
        for (int i = 0; i < genre.length; i++) {
        	if(i==(genre.length-1)) {
        		texthobby += genre[i];
        	}else {
        		texthobby += genre[i] + ", ";
        	}
           
        }
        movieVO.setGenre(texthobby);
        
    	
        String character = "";
        for (int f = 0; f < characters.length; f++) {
        	if(f==(characters.length-1)) {
        		character += characters[f];
        	}else {
        		character += characters[f] + ", ";
        	}
        }
        movieVO.setCharacter(character);
        System.out.println(character);
		
		if (bindingResult.hasErrors()) {
			mv.addObject("movieVO", movieVO);
			mv.setViewName("admin/addMovie");
			System.out.println(character);
		}else {
			
			movieService.movieInsert(movieVO, files, details);
			mv.setViewName("redirect:./movieList");
		}
		
		
		return mv;
	}
	
	@PostMapping("movieDelete")
	@ResponseBody
	public int movieDelete(MovieVO movieVO) throws Exception {
		
		return movieService.movieDelete(movieVO);
	}
	


}
