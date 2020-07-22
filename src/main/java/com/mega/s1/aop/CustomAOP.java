package com.mega.s1.aop;


import java.util.List;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.mega.s1.movie.MovieService;
import com.mega.s1.movie.MovieVO;

@Component
@Aspect

public class CustomAOP {

	@Autowired
	
	@Before("execution(* com.mega.s1.ticket.TicketController.resultPage(..))")
	public void afterReturning() throws Exception{
//		System.out.println("?!?!?!?!?!?!?");
//		ModelAndView mv = new ModelAndView();
//		MemberVO memberVO = new MemberVO();
//		memberVO = (MemberVO)session.getAttribute("member");

//		System.out.println(memberVO.getId());
		
//		if(memberVO.getId()!="test111") {
//			mv.setViewName("/index");
//			System.out.println("AOP 에프터 테스트중!!!");
//		}else {
//			mv.setViewName("/member/getMyPage");
//			System.out.println("??????????????");
//		}
//			return mv;
	}
	
	@Autowired
	private MovieService movieService;
	
	@Scheduled(cron = "0 0 9 * * *") 
	public void scheduleFixedRateTask() throws Exception{
		
		List<MovieVO> vos = movieService.viewUpCount();
		
		for (MovieVO movieVO : vos) {
			MovieVO vo = new MovieVO();
			vo = movieService.movieSelect(movieVO);
			movieVO.setViews(vo.getViews());
			movieService.viewUp(movieVO);		
		}
		
	}
	
}
