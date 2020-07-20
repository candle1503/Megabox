package com.mega.s1.member.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.mega.s1.member.MemberVO;

@Configuration
public class AdminInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean check = false;
		MemberVO memberVO = (MemberVO)request.getSession().getAttribute("member");
		
		if(memberVO == null) {
			response.sendRedirect("../member/memberLogin");
		}else {
			if(memberVO.getId().equals("ADMIN")) {
				check = true;
			}else {
				response.sendRedirect("/adminOnly");
			}
		}
		
		return check;
	}
}
