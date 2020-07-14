package com.mega.s1.aop;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.mega.s1.member.MemberVO;

@Component
@Aspect

public class CustomAOP {

	@Autowired
	private HttpSession session;
	
	@Before("execution(* com.mega.s1.member.*Service.*(..))")
	public void afterReturning() throws Exception{
		
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO = new MemberVO();
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
