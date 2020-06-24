package com.mega.s1.board.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mega.s1.board.BoardVO;
import com.mega.s1.board.notice.noticeFile.NoticeFileVO;
import com.mega.s1.util.Pager;

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
		mv.addObject("boardVO", new NoticeVO());
		mv.addObject("path", "Write");
		mv.setViewName("board/boardWrite");
		
		return mv;
	}
	
	@PostMapping("noticeWrite")
	public ModelAndView boardInsert(NoticeVO noticeVO, MultipartFile[] files) throws Exception{
		ModelAndView mv = new ModelAndView();
		noticeService.boardInsert(noticeVO, files);
		mv.setViewName("redirect:./noticeList");
		
		return mv;
	}
	
	@GetMapping("noticeList")
	public ModelAndView boardList(Pager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<BoardVO> ar = noticeService.boardList(pager);
		
		int listCount = noticeService.listCount(pager);
		
		mv.addObject("listCount", listCount);
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("board/boardList");
		return mv;
	}
	
	@GetMapping("noticeSelect")
	public ModelAndView boardSelect(NoticeVO noticeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		Pager pager = new Pager();
		
		int listCount = noticeService.listCount(pager);
		
		noticeVO = noticeService.boardSelect(noticeVO);
		
		mv.addObject("listCount", listCount);
		mv.addObject("vo", noticeVO);
		mv.setViewName("board/boardSelect");
		
		return mv;
	}
	
	
	
	
	@GetMapping("noticeDelete")
	public ModelAndView boardDelete(NoticeVO noticeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		noticeService.boardDelete(noticeVO);
		mv.setViewName("redirect:./noticeList");
		return mv;
	}
	
	@GetMapping("fileDown")
	public ModelAndView fileDown(NoticeFileVO noticeFileVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		noticeFileVO = noticeService.fileDown(noticeFileVO);
		
		mv.addObject("fileVO", noticeFileVO);
		mv.addObject("path", "upload/notice");
		mv.setViewName("fileDown");
		
		return mv;
	}
	
}
