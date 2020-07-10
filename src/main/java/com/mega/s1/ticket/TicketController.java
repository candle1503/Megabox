package com.mega.s1.ticket;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/booking/bookingSeatNext")
public class TicketController {

//	@Autowired
//	private TicketService ticketService;
//	
//	
//	@PostMapping("bookingSeatNext")
//	public ModelAndView ticketInfo(TicketVO ticketVO) throws Exception{
//		ModelAndView mv = new ModelAndView();
//		
//		ticketVO = ticketService.ticketInfo(ticketVO);
//		
//		System.out.println("ticketControllerTC:"+ticketVO.getTicketCode());
//		
//		mv.addObject("ticketVO", ticketVO);
//		
//		return mv;
//	}
}
