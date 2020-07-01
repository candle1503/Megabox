package com.mega.s1.theater;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mega.s1.board.BoardVO;
import com.mega.s1.board.notice.NoticeService;
import com.mega.s1.board.notice.NoticeVO;
import com.mega.s1.util.Pager;

@Controller
@RequestMapping("/theater/**")
public class TheaterController {

	@Autowired
	private TheaterService theaterService;

	@Autowired
	private NoticeService noticeService;

	@GetMapping("theaterMain")
	public ModelAndView theaterMain() throws Exception {

		ModelAndView mv = new ModelAndView();
		List<TheaterVO> ar = theaterService.theaterNameSeoul();
		mv.addObject("arSeoul", ar);

		ar = theaterService.theaterNameGyeonggi();
		mv.addObject("arGyeonggi", ar);

		ar = theaterService.theaterNameIncheon();
		mv.addObject("arIncheon", ar);

		ar = theaterService.theaterNameChungcheong();
		mv.addObject("arChungcheong", ar);

		ar = theaterService.theaterNameGyeongsang();
		mv.addObject("arGyeongsang", ar);

		ar = theaterService.theaterNameJeolla();
		mv.addObject("arJeolla", ar);

		ar = theaterService.theaterNameGangwon();
		mv.addObject("arGangwon", ar);

		ar = theaterService.theaterNameJeju();
		mv.addObject("arJeju", ar);

		Pager pager = new Pager();
		
		List<NoticeVO> ar2 = noticeService.boardList(pager);
		
		mv.addObject("notice",ar2);
		
		ar = theaterService.theaterNewBranchSelect();

		mv.addObject("newBranch", ar);

		mv.setViewName("theater/theaterMain");

		return mv;
	}

	@GetMapping("theaterBranch")
	public ModelAndView theaterBranch(TheaterVO theaterVO) throws Exception {

		ModelAndView mv = new ModelAndView();

		theaterVO = theaterService.theaterBranchSelect(theaterVO);

		List<TheaterVO> ar = theaterService.theaterNameSeoul();
		mv.addObject("arSeoul", ar);

		ar = theaterService.theaterNameGyeonggi();
		mv.addObject("arGyeonggi", ar);

		ar = theaterService.theaterNameIncheon();
		mv.addObject("arIncheon", ar);

		ar = theaterService.theaterNameChungcheong();
		mv.addObject("arChungcheong", ar);

		ar = theaterService.theaterNameGyeongsang();
		mv.addObject("arGyeongsang", ar);

		ar = theaterService.theaterNameJeolla();
		mv.addObject("arJeolla", ar);

		ar = theaterService.theaterNameGangwon();
		mv.addObject("arGangwon", ar);

		ar = theaterService.theaterNameJeju();
		mv.addObject("arJeju", ar);

		Pager pager = new Pager();

		List<NoticeVO> ar2 = noticeService.boardList(pager);

		mv.addObject("notice", ar2);

		mv.addObject("vo", theaterVO);
		mv.setViewName("theater/theaterBranch");

		return mv;

	}

}
