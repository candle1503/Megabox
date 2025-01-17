package com.mega.s1.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Configuration
public class MemberInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
	boolean check = false;
	MemberVO memberVO = (MemberVO)request.getSession().getAttribute("member");
	
	if(memberVO == null) {
		response.sendRedirect("../member/memberLogin");
		check = false;
	}else {
		check = true;
	}
	return check;
	}
}
