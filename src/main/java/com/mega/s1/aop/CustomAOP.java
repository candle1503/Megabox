package com.mega.s1.aop;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

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
}
