package com.mega.s1.member.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin/**")
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	@GetMapping("memberList")
	public ModelAndView memberList() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/adminMemberList");
		return mv;
	}
	
}
