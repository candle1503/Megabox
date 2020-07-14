package com.mega.s1.movie;


import java.text.DecimalFormat;

import java.util.List;

import javax.servlet.http.HttpSession;
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

import com.mega.s1.member.MemberVO;
import com.mega.s1.movie.movieFile.MovieFileVO;
import com.mega.s1.review.ReviewVO;
import com.mega.s1.ticket.TicketService;
import com.mega.s1.ticket.TicketVO;
import com.mega.s1.util.Pager;

@Controller
@RequestMapping("/movie/**")
public class MovieController {
	
	@Autowired
	private MovieService movieService;
	
	@Autowired
	private TicketService ticketService;
	
	@GetMapping("preview")
	public ModelAndView preview(ModelAndView mv, MovieVO movieVO) throws Exception {
		List<MovieFileVO> files = movieService.getMovieFile(movieVO);
		MovieVO vo = movieService.movieSelect(movieVO);
		List<MovieFileVO> videos = movieService.videoFile(movieVO);
		long image = movieService.imageCount(movieVO);
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
		
		if(vo.getRate()>=8) {
			if(player<=35) {
				player += 40; 
			} else {
				player = 100;
			};
			
			if(direct<=35) {
				direct += 40;
			} else {
				direct =100;
			};
			if(ost<=35) {
				ost += 40;
			} else {
				ost =100;
			};
			if(story<=35) {
				story += 40;
			} else {
				story =100;
			};
			if(beauty<=35) {
				beauty += 40;
			} else {
				beauty =100;
			};
			
		}else {
			
			if(player<=50) {
				player += 20; 
			} else {
				player = 100;
			};
			
			if(direct<=50) {
				direct += 20;
			} else {
				direct =100;
			};
			if(ost<=50) {
				ost += 20;
			} else {
				ost =100;
			};
			if(story<=50) {
				story += 20;
			} else {
				story =100;
			};
			if(beauty<=50) {
				beauty += 20;
			} else {
				beauty =100;
			};
		}
		
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
	public ModelAndView review(ModelAndView mv, MovieVO movieVO, HttpSession session) throws Exception {
		MovieVO vo = movieService.movieSelect(movieVO);
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		TicketVO ticketVO= new TicketVO();
		ticketVO.setId(memberVO.getId());
		ticketVO.setMovieNum(vo.getMovieNum());
		ticketVO = ticketService.reviewCheck(ticketVO);
		
		
		mv.addObject("ticketVO", ticketVO);
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
		
		if(vo.getRate()>=8) {
			if(player<=35) {
				player += 40; 
			} else {
				player = 100;
			};
			
			if(direct<=35) {
				direct += 40;
			} else {
				direct =100;
			};
			if(ost<=35) {
				ost += 40;
			} else {
				ost =100;
			};
			if(story<=35) {
				story += 40;
			} else {
				story =100;
			};
			if(beauty<=35) {
				beauty += 40;
			} else {
				beauty =100;
			};
			
		}else {
			
			if(player<=50) {
				player += 20; 
			} else {
				player = 100;
			};
			
			if(direct<=50) {
				direct += 20;
			} else {
				direct =100;
			};
			if(ost<=50) {
				ost += 20;
			} else {
				ost =100;
			};
			if(story<=50) {
				story += 20;
			} else {
				story =100;
			};
			if(beauty<=50) {
				beauty += 20;
			} else {
				beauty =100;
			};
		}
		
		
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
			TicketVO ticketVO = new TicketVO();
			ticketVO.setTicketNum(reviewVO.getTicketNum());
			
			ticketService.reviewDone(ticketVO);
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
	
	@GetMapping("movieUpdate")
	public ModelAndView movieUpdate(ModelAndView mv, MovieVO movieVO) throws Exception{
		List<MovieFileVO> files = movieService.getMovieFile(movieVO);
		movieVO = movieService.movieSelect(movieVO);
		List<MovieFileVO> videos = movieService.videoFile(movieVO);
		String stc = movieVO.getGenre();
		String[] arg = stc.split(", ");
		String str = movieVO.getCharacter();
		String[] arc = str.split(", ");
		movieVO.setContents(movieVO.getContents().replace("<br>", "\r\n"));
		
		mv.addObject("genre", arg);
		mv.addObject("character", arc);
		mv.addObject("video", videos);
		mv.addObject("file", files);
		mv.addObject("movieVO", movieVO);
		mv.setViewName("admin/updateMovie");
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
			
		}else {
			movieVO.setContents(movieVO.getContents().replace("\r\n", "<br>"));
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
	
	@PostMapping("movieUpdate")
	public ModelAndView movieUpdate(ModelAndView mv, @Valid MovieVO movieVO, BindingResult bindingResult, MultipartFile[] files, String[] details, String[] characters, String[] delImg, MultipartFile posterImg, String posterNum) throws Exception{
		
		MovieFileVO movieFileVO = new MovieFileVO();
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
        
      
		if (bindingResult.hasErrors()) {
			mv.addObject("movieVO", movieVO);
			mv.setViewName("admin/addMovie");
			
		}else {
			if(delImg!=null) {
				
				for(int f=0; f < delImg.length; f++) {
					movieFileVO.setFileNum(Integer.parseInt(delImg[f])); 
					movieService.imageDelete(movieFileVO);
				}
			}
			movieVO.setContents(movieVO.getContents().replace("\r\n", "<br>"));
			movieService.movieUpdate(movieVO, files, details);
			if(posterNum != null && !posterNum.isEmpty()) {
				
				movieService.posterUpdate(posterImg, posterNum);
			}
			mv.setViewName("redirect:./movieList");
		}
		
		return mv;
	}
	


}
