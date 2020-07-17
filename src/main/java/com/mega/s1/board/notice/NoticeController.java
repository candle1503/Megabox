package com.mega.s1.board.notice;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mega.s1.board.BoardVO;
import com.mega.s1.board.notice.noticeFile.NoticeFileVO;
import com.mega.s1.theater.TheaterService;
import com.mega.s1.theater.TheaterVO;
import com.mega.s1.util.Pager;

@Controller
@RequestMapping("/notice/**")
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	@Autowired
	private TheaterService theaterService;
	
	@ModelAttribute("board")
	public String getBoard() {
		return "notice";
	}
	
	@GetMapping("noticeWrite")
	public ModelAndView boardInsert(String localCode) throws Exception{
		ModelAndView mv = new ModelAndView();
		
//		System.out.println("Before code:"+localCode);
//		
//		TheaterVO theaterVO = new TheaterVO();
//		
//		if(localCode==null) {
//			localCode = localCode+"";
//		}
//		
//		if(localCode.equals("서울")) {
//			System.out.println("서울 들어옴");
//			theaterVO.setLocalCode("서울");
//		}else if(localCode.equals("경기")) {
//			System.out.println("경기 들어옴");
//			theaterVO.setLocalCode("경기");
//		}else if(localCode.equals("인천")) {
//			System.out.println("인천 들어옴");
//			theaterVO.setLocalCode("인천");
//		}else if(localCode.equals("대전/충청/세종")) {
//			theaterVO.setLocalCode("대전/충청/세종");
//		}else if(localCode.equals("부산/대구/경상")) {
//			theaterVO.setLocalCode("부산/대구/경상");
//		}else if(localCode.equals("광주/전라")) {
//			theaterVO.setLocalCode("광주/전라");
//		}else if(localCode.equals("강원")) {
//			theaterVO.setLocalCode("강원");
//		}else if(localCode.equals("제주")) {
//			theaterVO.setLocalCode("제주");
//		}
//		
//		System.out.println("After code:"+localCode);
		
//		List<TheaterVO> codeList = theaterService.theaterLocalCodeList(theaterVO);
//		mv.addObject("codeList", codeList);
		
		
		List<TheaterVO> theaterArSeoul = theaterService.theaterNameSeoul();
		mv.addObject("theaterArSeoul", theaterArSeoul);
		
		List<TheaterVO> theaterArGyeonggi = theaterService.theaterNameGyeonggi();
		mv.addObject("theaterArGyeonggi", theaterArGyeonggi);
		
		List<TheaterVO> theaterArIncheon = theaterService.theaterNameIncheon();
		mv.addObject("theaterArIncheon", theaterArIncheon);
		
		List<TheaterVO> theaterArChungcheong = theaterService.theaterNameChungcheong();
		mv.addObject("theaterArChungcheong", theaterArChungcheong);
		
		List<TheaterVO> theaterArGyeongsang = theaterService.theaterNameGyeongsang();
		mv.addObject("theaterArGyeongsang", theaterArGyeongsang);
		
		List<TheaterVO> theaterArJeolla = theaterService.theaterNameJeolla();
		mv.addObject("theaterArJeolla", theaterArJeolla);
		
		List<TheaterVO> theaterArGangwon = theaterService.theaterNameGangwon();
		mv.addObject("theaterArGangwon", theaterArGangwon);
		
		List<TheaterVO> theaterArJeju = theaterService.theaterNameJeju();
		mv.addObject("theaterArJeju", theaterArJeju);
		
		
//		NoticeVO noticeVO = new NoticeVO();
//		noticeVO.setLocalCode(localCode);
		
		mv.addObject("noticeVO", new NoticeVO());
		mv.addObject("path", "Write");
		mv.setViewName("board/boardWrite");
		
		return mv;
	}
	
	@PostMapping("noticeWrite")
	public ModelAndView boardInsert(@Valid NoticeVO noticeVO, BindingResult bindingResult, MultipartFile[] files) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<TheaterVO> theaterArSeoul = theaterService.theaterNameSeoul();
		mv.addObject("theaterArSeoul", theaterArSeoul);
		
		List<TheaterVO> theaterArGyeonggi = theaterService.theaterNameGyeonggi();
		mv.addObject("theaterArGyeonggi", theaterArGyeonggi);
		
		List<TheaterVO> theaterArIncheon = theaterService.theaterNameIncheon();
		mv.addObject("theaterArIncheon", theaterArIncheon);
		
		List<TheaterVO> theaterArChungcheong = theaterService.theaterNameChungcheong();
		mv.addObject("theaterArChungcheong", theaterArChungcheong);
		
		List<TheaterVO> theaterArGyeongsang = theaterService.theaterNameGyeongsang();
		mv.addObject("theaterArGyeongsang", theaterArGyeongsang);
		
		List<TheaterVO> theaterArJeolla = theaterService.theaterNameJeolla();
		mv.addObject("theaterArJeolla", theaterArJeolla);
		
		List<TheaterVO> theaterArGangwon = theaterService.theaterNameGangwon();
		mv.addObject("theaterArGangwon", theaterArGangwon);
		
		List<TheaterVO> theaterArJeju = theaterService.theaterNameJeju();
		mv.addObject("theaterArJeju", theaterArJeju);
		
		if(bindingResult.hasErrors()) {
			mv.addObject("path", "Write");
			mv.setViewName("board/boardWrite");
		}else {
			noticeService.boardInsert(noticeVO, files);
			mv.setViewName("redirect:./noticeList");
		}
		
		return mv;
	}
	
	@GetMapping("noticeList")
	public ModelAndView boardList(Pager pager, String name, NoticeVO noticeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<NoticeVO> ar = noticeService.boardList(pager);
		
		
		
		List<TheaterVO> theaterArResult = noticeService.localCodeNameList();
		mv.addObject("localCodeNameList", theaterArResult);
		
		long listCount = noticeService.boardCount(pager);
		 
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
		
		noticeVO = noticeService.boardSelect(noticeVO);
		
		List<NoticeVO> ar = noticeService.boardList(pager);
		
		
		mv.addObject("list", ar);
		mv.addObject("vo", noticeVO);
		mv.setViewName("board/boardSelect");
		
		return mv;
	}
	
	@PostMapping("noticeSelect")
	public ModelAndView boardSelect(NoticeVO noticeVO, ModelAndView mv) throws Exception{
		noticeVO = noticeService.boardSelect(noticeVO);
		
		mv.addObject("vo", noticeVO);
		mv.setViewName("redirect:./noticeSelect?num="+noticeVO.getNum());
		
		return mv;
		
	}
	
	@GetMapping("noticeUpdate")
	public ModelAndView boardUpdate(NoticeVO noticeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<TheaterVO> theaterArSeoul = theaterService.theaterNameSeoul();
		mv.addObject("theaterArSeoul", theaterArSeoul);
		
		List<TheaterVO> theaterArGyeonggi = theaterService.theaterNameGyeonggi();
		mv.addObject("theaterArGyeonggi", theaterArGyeonggi);
		
		List<TheaterVO> theaterArIncheon = theaterService.theaterNameIncheon();
		mv.addObject("theaterArIncheon", theaterArIncheon);
		
		List<TheaterVO> theaterArChungcheong = theaterService.theaterNameChungcheong();
		mv.addObject("theaterArChungcheong", theaterArChungcheong);
		
		List<TheaterVO> theaterArGyeongsang = theaterService.theaterNameGyeongsang();
		mv.addObject("theaterArGyeongsang", theaterArGyeongsang);
		
		List<TheaterVO> theaterArJeolla = theaterService.theaterNameJeolla();
		mv.addObject("theaterArJeolla", theaterArJeolla);
		
		List<TheaterVO> theaterArGangwon = theaterService.theaterNameGangwon();
		mv.addObject("theaterArGangwon", theaterArGangwon);
		
		List<TheaterVO> theaterArJeju = theaterService.theaterNameJeju();
		mv.addObject("theaterArJeju", theaterArJeju);
		
		noticeVO = noticeService.boardSelect(noticeVO);
		
		mv.addObject("vo", noticeVO);
		mv.addObject("path", "Update");
		mv.setViewName("board/boardWrite");
		
		return mv;
	}
	
	@PostMapping("noticeUpdate")
	public ModelAndView boardUpdate(@Valid NoticeVO noticeVO, BindingResult bindingResult, MultipartFile[] files) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<TheaterVO> theaterArSeoul = theaterService.theaterNameSeoul();
		mv.addObject("theaterArSeoul", theaterArSeoul);
		
		List<TheaterVO> theaterArGyeonggi = theaterService.theaterNameGyeonggi();
		mv.addObject("theaterArGyeonggi", theaterArGyeonggi);
		
		List<TheaterVO> theaterArIncheon = theaterService.theaterNameIncheon();
		mv.addObject("theaterArIncheon", theaterArIncheon);
		
		List<TheaterVO> theaterArChungcheong = theaterService.theaterNameChungcheong();
		mv.addObject("theaterArChungcheong", theaterArChungcheong);
		
		List<TheaterVO> theaterArGyeongsang = theaterService.theaterNameGyeongsang();
		mv.addObject("theaterArGyeongsang", theaterArGyeongsang);
		
		List<TheaterVO> theaterArJeolla = theaterService.theaterNameJeolla();
		mv.addObject("theaterArJeolla", theaterArJeolla);
		
		List<TheaterVO> theaterArGangwon = theaterService.theaterNameGangwon();
		mv.addObject("theaterArGangwon", theaterArGangwon);
		
		List<TheaterVO> theaterArJeju = theaterService.theaterNameJeju();
		mv.addObject("theaterArJeju", theaterArJeju);
		
		if(bindingResult.hasErrors()) {
			mv.addObject("path", "Update");
			mv.setViewName("board/boardWrite");
		}else {
			noticeService.boardUpdate(noticeVO, files);
			mv.setViewName("redirect:./noticeList");
		}
		
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
		
		System.out.println(noticeFileVO.getFileNum());
		
		mv.addObject("fileVO", noticeFileVO);
		mv.addObject("path", "upload/notice/");
		mv.setViewName("fileDown");
		
		return mv;
	}
	
	@GetMapping("fileDelete")
	public ModelAndView fileDelete(NoticeFileVO noticeFileVO, NoticeVO noticeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		noticeVO = noticeService.boardSelect(noticeVO);
		
		noticeService.fileDelete(noticeFileVO);
		mv.setViewName("redirect:./noticeUpdate?num="+noticeVO.getNum());
		
		return mv;
	}
	
	@GetMapping("noticeFAQ")
	public String boardFAQ() throws Exception{
		return "board/boardFAQ";
	}
	
	/*	
	 * @ExceptionHandler(Exception.class) public ModelAndView errorPage() {
	 * ModelAndView mv = new ModelAndView(); mv.setViewName("./error/errorPage");
	 * return mv; }
	 */
}
