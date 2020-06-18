package com.mega.s1.board.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mega.s1.board.BoardVO;

@Controller
@RequestMapping("/notice/**")
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	@ModelAttribute("board")
	public String getBoard() {
		return "notice";
	}
	
	@GetMapping("noticeWrite")
	public ModelAndView boardInsert() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("boardVO", new BoardVO());
		mv.addObject("path", "Write");
		mv.setViewName("board/boardWrite");
		
		return mv;
	}
	
	@PostMapping("noticeWrite")
	public ModelAndView boardInsert(NoticeVO noticeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		return mv;
	}
	
	@GetMapping("noticeList")
	public ModelAndView boardList(BoardVO boardVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<BoardVO> ar = noticeService.boardList(boardVO);
		
		mv.addObject("list", ar);
		mv.setViewName("board/boardList");
		return mv;
	}
	
	
	
}
