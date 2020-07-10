package com.mega.s1.member.admin;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mega.s1.member.MemberVO;
import com.mega.s1.movie.MovieVO;
import com.mega.s1.theater.TheaterVO;
import com.mega.s1.theater.theaterRoom.RoomMovieTimeVO;
import com.mega.s1.theater.theaterRoom.TheaterRoomVO;
import com.mega.s1.util.Pager;

@Controller
@RequestMapping("/admin/**")
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	@GetMapping("memberList")
	public ModelAndView memberList(Pager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<MemberVO> memberVOs = adminService.getMemberList(pager);
		mv.addObject("list", memberVOs);
		mv.addObject("pager", pager);
		Long size = adminService.getMemberCount(pager);
		mv.addObject("size", size);
		mv.setViewName("admin/adminMemberList");
		return mv;
	}
	
	@GetMapping("theaterList")
	public ModelAndView theaterList(Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<TheaterVO> theaterVOs = adminService.getTheaterList(pager);
		mv.addObject("list", theaterVOs);
		mv.addObject("pager", pager);
		Long size = adminService.getTheaterCount(pager);
		mv.addObject("size", size);
		mv.setViewName("admin/adminTheaterList");
		return mv;
	}
	
	
	@GetMapping("theaterAdd")
	public ModelAndView theaterAdd() throws Exception {
		ModelAndView mv = new ModelAndView();
		TheaterVO theaterVO = new TheaterVO();
		mv.addObject("theaterVO", theaterVO);
		mv.setViewName("admin/adminAddTheater");
		return mv;
	}
	
	@PostMapping("theaterAdd")
	public ModelAndView theaterAdd(@Valid TheaterVO theaterVO, BindingResult bindingResult, RedirectAttributes attributes) throws Exception{
		ModelAndView mv = new ModelAndView();
		int roomCount = theaterVO.getRoomCount();
		TheaterRoomVO roomVO = new TheaterRoomVO();
		if (bindingResult.hasErrors()) {
			mv.addObject("theaterVO", theaterVO);
			mv.setViewName("admin/adminAddTheater");
		}else {
			adminService.addTheater(theaterVO);
			roomVO.setName(theaterVO.getName());
			adminService.theaterRoomSet(roomVO,roomCount);
			attributes.addAttribute("name", theaterVO.getName());
			mv.setViewName("redirect:./setTheaterRoom");
		}
		return mv;
	}
	
	@GetMapping("theaterSelect")
	public ModelAndView theaterSelect(TheaterVO theaterVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<TheaterRoomVO> roomList = adminService.getRoomList(theaterVO);
		theaterVO = adminService.theaterSelect(theaterVO);
		mv.addObject("theaterVO", theaterVO);
		mv.addObject("roomList", roomList);
		mv.setViewName("admin/adminSelectTheater");
		return mv;
	}
	
	@GetMapping("theaterUpdate")
	public ModelAndView theaterUpdate(TheaterVO theaterVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		theaterVO = adminService.theaterSelect(theaterVO);
		mv.addObject("theaterVO", theaterVO);
		mv.setViewName("admin/adminUpdateTheater");
		return mv;
	}
	
	@PostMapping("theaterUpdate")
	public ModelAndView theaterUpdate(TheaterVO theaterVO,HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = adminService.theaterUpdate(theaterVO);
		mv.setViewName("admin/adminSelectTheater");
		return mv;
	}
	
	@GetMapping("theaterNotice")
	public ModelAndView theaterNotice(TheaterVO theaterVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("admin/adminTheaterNotice");
		return mv;
	}
	
	@GetMapping("setTheaterRoom")
	public ModelAndView setTheaterRoom(TheaterVO theaterVO,RedirectAttributes attributes) throws Exception{
		String name = (String)attributes.getAttribute("name");
		ModelAndView mv = new ModelAndView();
		RoomMovieTimeVO roomMovieTimeVO = new RoomMovieTimeVO();
		
		int theaterNum = adminService.getTheaterNum(theaterVO);
		
		List<TheaterRoomVO> roomVOs = adminService.getRoomList(theaterVO);
		mv.addObject("roomMovieTimeVO", roomMovieTimeVO);
		mv.addObject("list", roomVOs);
		mv.addObject("theaterNum", theaterNum);
		mv.addObject("name", theaterVO.getName());
		
		mv.setViewName("admin/adminSetTheaterRoom");
		return mv;
	}
	
	@PostMapping("setTheaterRoom")
	public ModelAndView setTheaterRoom(RoomMovieTimeVO roomMovieTimeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		TheaterVO theaterVO = new TheaterVO();
		
 		theaterVO.setName(roomMovieTimeVO.getName());
		int theaterNum = adminService.getTheaterNum(theaterVO);
		
		List<TheaterRoomVO> roomVOs = adminService.getRoomList(theaterVO);
		mv.addObject("list", roomVOs);
		mv.addObject("theaterNum", theaterNum);
		mv.addObject("name", theaterVO.getName());
		
		int firstDay = 1;
		RoomMovieTimeVO[] roomMovieTimeVOs = {roomMovieTimeVO};
		String[] times = roomMovieTimeVOs[0].getTime().split(",");
		String[] movieNums = roomMovieTimeVOs[0].getMovieNum().split(",");
		String [] startDays=roomMovieTimeVO.getStartDay().split("-", 3);
		String [] endDays=roomMovieTimeVO.getEndDay().split("-", 3);
		int startDayInt = Integer.parseInt(startDays[2]);
		int startMonthInt = Integer.parseInt(startDays[1]);
		int startYearInt = Integer.parseInt(startDays[0]);
		int endDayInt = Integer.parseInt(endDays[2]);
		int endMonthInt = Integer.parseInt(endDays[1]);
		int endYearInt = Integer.parseInt(endDays[0]);
		int length = times.length;
		
		if(startYearInt != endYearInt) {
			List<RoomMovieTimeVO> roomMovieTimeVOss = new ArrayList<RoomMovieTimeVO>();
			while( startDayInt <= 31 ) {
				roomMovieTimeVO.setStartDay((startYearInt+"-"+startMonthInt+"-"+startDayInt));
				switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
				
				case 0 :
					for(int i=length-1; i>-1; i--) {
						RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
						roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
						roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
						roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
						roomMovieTimeVO.setStartTime((startYearInt+"-"+startMonthInt+"-"+startDayInt+" "+times[i]));
						roomMovieTimeVO2.setMovieNum(movieNums[i]);
						roomMovieTimeVOss.add(roomMovieTimeVO2);
					}
					startDayInt += 1;
					continue;
					
				case 1 :
					startDayInt += 1;
					continue;
				}
				adminService.setTheaterRoom(roomMovieTimeVOss);
			}
			while(firstDay <= endDayInt) {
				RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
				roomMovieTimeVO.setStartDay((endYearInt+"-"+endMonthInt+"-"+firstDay));
				switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
				
				case 0 :
					for(int i=length-1; i>-1; i--) {
						
						roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
						roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
						roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
						roomMovieTimeVO.setStartTime((endYearInt+"-"+endMonthInt+"-"+firstDay+" "+times[i]));
						roomMovieTimeVO2.setMovieNum(movieNums[i]);
						roomMovieTimeVOss.add(roomMovieTimeVO2);
					}
					firstDay += 1;
					continue;
					
				case 1 :
					firstDay += 1;
					continue;
				}
				adminService.setTheaterRoom(roomMovieTimeVOss);
			}
		}else {
			if(endMonthInt > startMonthInt) {
				List<RoomMovieTimeVO> roomMovieTimeVOss = new ArrayList<RoomMovieTimeVO>();
				if(endMonthInt == 2) {
					
					while( startDayInt <= 31 ) {
						roomMovieTimeVO.setStartDay((startYearInt+"-"+startMonthInt+"-"+startDayInt));
						switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
						
						case 0 :
							for(int i=length-1; i>-1; i--) {
								
								RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
								roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
								roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
								roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
								roomMovieTimeVO.setStartTime((startYearInt+"-"+startMonthInt+"-"+startDayInt+" "+times[i]));
								roomMovieTimeVO2.setMovieNum(movieNums[i]);
								roomMovieTimeVOss.add(roomMovieTimeVO2);
							}
							startDayInt += 1;
							continue;
							
						case 1 :
							startDayInt += 1;
							continue;
						}
						adminService.setTheaterRoom(roomMovieTimeVOss);
					}
					while(firstDay <= endDayInt) {
						roomMovieTimeVO.setStartDay((startYearInt+"-"+endMonthInt+"-"+firstDay));
						switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
						
						case 0 :
							for(int i=length-1; i>-1; i--) {
								
								RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
								roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
								roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
								roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
								roomMovieTimeVO.setStartTime((startYearInt+"-"+endMonthInt+"-"+firstDay+" "+times[i]));
								roomMovieTimeVO2.setMovieNum(movieNums[i]);
								roomMovieTimeVOss.add(roomMovieTimeVO2);
							}
							firstDay += 1;
							continue;
							
						case 1 :
							firstDay += 1;
							continue;
						}
						adminService.setTheaterRoom(roomMovieTimeVOss);
					}
					
					//윤년계산 해줘야함
				}else if(endMonthInt ==3) {
					
					if( startYearInt%4==0 && startYearInt%100!=0 || startYearInt%400==0 ) {
						
						
						
						while( startDayInt <= 29 ) {
							roomMovieTimeVO.setStartDay((startYearInt+"-"+startMonthInt+"-"+startDayInt));
							switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
							
							case 0 :
								for(int i=length-1; i>-1; i--) {
									
									RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
									roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
									roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
									roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
									roomMovieTimeVO.setStartTime((startYearInt+"-"+startMonthInt+"-"+startDayInt+" "+times[i]));
									roomMovieTimeVO2.setMovieNum(movieNums[i]);
									roomMovieTimeVOss.add(roomMovieTimeVO2);
								}
								startDayInt += 1;
								continue;
								
							case 1 :
								startDayInt += 1;
								continue;
							}
							adminService.setTheaterRoom(roomMovieTimeVOss);
						}
						while(firstDay <= endDayInt) {
							roomMovieTimeVO.setStartDay((startYearInt+"-"+endMonthInt+"-"+firstDay));
							switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
							
							case 0 :
								for(int i=length-1; i>-1; i--) {
									
									RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
									roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
									roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
									roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
									roomMovieTimeVO.setStartTime((startYearInt+"-"+endMonthInt+"-"+firstDay+" "+times[i]));
									roomMovieTimeVO2.setMovieNum(movieNums[i]);
									roomMovieTimeVOss.add(roomMovieTimeVO2);
								}
								firstDay += 1;
								continue;
								
							case 1 :
								firstDay += 1;
								continue;
							}
							adminService.setTheaterRoom(roomMovieTimeVOss);
						}
						
						
						
						
					}else {
						
						while( startDayInt <= 28 ) {
							roomMovieTimeVO.setStartDay((startYearInt+"-"+startMonthInt+"-"+startDayInt));
							switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
							
							case 0 :
								for(int i=length-1; i>-1; i--) {
									
									RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
									roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
									roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
									roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
									roomMovieTimeVO.setStartTime((startYearInt+"-"+startMonthInt+"-"+startDayInt+" "+times[i]));
									roomMovieTimeVO2.setMovieNum(movieNums[i]);
									roomMovieTimeVOss.add(roomMovieTimeVO2);
								}
								startDayInt += 1;
								continue;
								
							case 1 :
								startDayInt += 1;
								continue;
							}
							adminService.setTheaterRoom(roomMovieTimeVOss);
						}
						while(firstDay <= endDayInt) {
							roomMovieTimeVO.setStartDay((startYearInt+"-"+endMonthInt+"-"+firstDay));
							switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
							
							case 0 :
								for(int i=length-1; i>-1; i--) {
									
									RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
									roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
									roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
									roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
									roomMovieTimeVO.setStartTime((startYearInt+"-"+endMonthInt+"-"+firstDay+" "+times[i]));
									roomMovieTimeVO2.setMovieNum(movieNums[i]);
									roomMovieTimeVOss.add(roomMovieTimeVO2);
								}
								firstDay += 1;
								continue;
								
							case 1 :
								firstDay += 1;
								continue;
							}
							
						}
						adminService.setTheaterRoom(roomMovieTimeVOss);
					}
					
				}else if(endMonthInt ==4) {
					while( startDayInt <= 31 ) {
						roomMovieTimeVO.setStartDay((startYearInt+"-"+startMonthInt+"-"+startDayInt));
						switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
						
						case 0 :
							for(int i=length-1; i>-1; i--) {
								
								RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
								roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
								roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
								roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
								roomMovieTimeVO.setStartTime((startYearInt+"-"+startMonthInt+"-"+startDayInt+" "+times[i]));
								roomMovieTimeVO2.setMovieNum(movieNums[i]);
								roomMovieTimeVOss.add(roomMovieTimeVO2);
							}
							startDayInt += 1;
							continue;
							
						case 1 :
							startDayInt += 1;
							continue;
						}
						adminService.setTheaterRoom(roomMovieTimeVOss);
					}
					while(firstDay <= endDayInt) {
						roomMovieTimeVO.setStartDay((startYearInt+"-"+endMonthInt+"-"+firstDay));
						switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
						
						case 0 :
							for(int i=length-1; i>-1; i--) {
								RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
								roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
								roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
								roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
								roomMovieTimeVO.setStartTime((startYearInt+"-"+endMonthInt+"-"+firstDay+" "+times[i]));
								roomMovieTimeVO2.setMovieNum(movieNums[i]);
								roomMovieTimeVOss.add(roomMovieTimeVO2);
							}
							firstDay += 1;
							continue;
							
						case 1 :
							firstDay += 1;
							continue;
						}
						adminService.setTheaterRoom(roomMovieTimeVOss);
					}
					
				}else if(endMonthInt ==5) {
					while( startDayInt <= 30 ) {
						roomMovieTimeVO.setStartDay((startYearInt+"-"+startMonthInt+"-"+startDayInt));
						switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
						
						case 0 :
							for(int i=length-1; i>-1; i--) {
								
								RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
								roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
								roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
								roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
								roomMovieTimeVO.setStartTime((startYearInt+"-"+startMonthInt+"-"+startDayInt+" "+times[i]));
								roomMovieTimeVO2.setMovieNum(movieNums[i]);
								roomMovieTimeVOss.add(roomMovieTimeVO2);
							}
							startDayInt += 1;
							continue;
							
						case 1 :
							startDayInt += 1;
							continue;
						}
						adminService.setTheaterRoom(roomMovieTimeVOss);
					}
					while(firstDay <= endDayInt) {
						roomMovieTimeVO.setStartDay((startYearInt+"-"+endMonthInt+"-"+firstDay));
						switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
						
						case 0 :
							for(int i=length-1; i>-1; i--) {
								
								RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
								roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
								roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
								roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
								roomMovieTimeVO.setStartTime((startYearInt+"-"+endMonthInt+"-"+firstDay+" "+times[i]));
								roomMovieTimeVO2.setMovieNum(movieNums[i]);
								roomMovieTimeVOss.add(roomMovieTimeVO2);
							}
							firstDay += 1;
							continue;
							
						case 1 :
							firstDay += 1;
							continue;
						}
						adminService.setTheaterRoom(roomMovieTimeVOss);
					}
					
				}else if(endMonthInt ==6) {
					while( startDayInt <= 31 ) {
						roomMovieTimeVO.setStartDay((startYearInt+"-"+startMonthInt+"-"+startDayInt));
						switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
						
						case 0 :
							for(int i=length-1; i>-1; i--) {
								
								RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
								roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
								roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
								roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
								roomMovieTimeVO.setStartTime((startYearInt+"-"+startMonthInt+"-"+startDayInt+" "+times[i]));
								roomMovieTimeVO2.setMovieNum(movieNums[i]);
								roomMovieTimeVOss.add(roomMovieTimeVO2);
							}
							startDayInt += 1;
							continue;
							
						case 1 :
							startDayInt += 1;
							continue;
						}
						adminService.setTheaterRoom(roomMovieTimeVOss);
					}
					while(firstDay <= endDayInt) {
						roomMovieTimeVO.setStartDay((startYearInt+"-"+endMonthInt+"-"+firstDay));
						switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
						
						case 0 :
							for(int i=length-1; i>-1; i--) {
								
								RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
								roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
								roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
								roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
								roomMovieTimeVO.setStartTime((startYearInt+"-"+endMonthInt+"-"+firstDay+" "+times[i]));
								roomMovieTimeVO2.setMovieNum(movieNums[i]);
								roomMovieTimeVOss.add(roomMovieTimeVO2);
							}
							firstDay += 1;
							continue;
							
						case 1 :
							firstDay += 1;
							continue;
						}
						adminService.setTheaterRoom(roomMovieTimeVOss);
					}
					
				}else if(endMonthInt ==7) {
					while( startDayInt <= 30 ) {
						roomMovieTimeVO.setStartDay((startYearInt+"-"+startMonthInt+"-"+startDayInt));
						switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
						
						case 0 :
							for(int i=length-1; i>-1; i--) {
								
								RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
								roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
								roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
								roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
								roomMovieTimeVO.setStartTime((startYearInt+"-"+startMonthInt+"-"+startDayInt+" "+times[i]));
								roomMovieTimeVO2.setMovieNum(movieNums[i]);
								roomMovieTimeVOss.add(roomMovieTimeVO2);
							}
							startDayInt += 1;
							continue;
							
						case 1 :
							startDayInt += 1;
							continue;
						}
						adminService.setTheaterRoom(roomMovieTimeVOss);
					}
					while(firstDay <= endDayInt) {
						roomMovieTimeVO.setStartDay((startYearInt+"-"+endMonthInt+"-"+firstDay));
						switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
						
						case 0 :
							for(int i=length-1; i>-1; i--) {
								
								RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
								roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
								roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
								roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
								roomMovieTimeVO.setStartTime((startYearInt+"-"+endMonthInt+"-"+firstDay+" "+times[i]));
								roomMovieTimeVO2.setMovieNum(movieNums[i]);
								roomMovieTimeVOss.add(roomMovieTimeVO2);
							}
							firstDay += 1;
							continue;
							
						case 1 :
							firstDay += 1;
							continue;
						}
						adminService.setTheaterRoom(roomMovieTimeVOss);
					}
					
				}else if(endMonthInt ==8) {
					
					while( startDayInt <= 31 ) {
						roomMovieTimeVO.setStartDay((startYearInt+"-"+startMonthInt+"-"+startDayInt));
							switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
							
							case 0 :
								for(int i=length-1; i>-1; i--) {
									
									RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
									roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
									roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
									roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
									roomMovieTimeVO.setStartTime((startYearInt+"-"+startMonthInt+"-"+startDayInt+" "+times[i]));
									roomMovieTimeVO2.setMovieNum(movieNums[i]);
									roomMovieTimeVOss.add(roomMovieTimeVO2);
								}
								startDayInt += 1;
								continue;
							
							case 1 :
								startDayInt += 1;
								continue;
							}
							adminService.setTheaterRoom(roomMovieTimeVOss);
					}
					while(firstDay <= endDayInt) {
						roomMovieTimeVO.setStartDay((startYearInt+"-"+endMonthInt+"-"+firstDay));
							switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
							
							case 0 :
								for(int i=length-1; i>-1; i--) {
									RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
									roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
									roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
									roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
									roomMovieTimeVO.setStartTime((startYearInt+"-"+endMonthInt+"-"+firstDay+" "+times[i]));
									roomMovieTimeVO2.setMovieNum(movieNums[i]);
									roomMovieTimeVOss.add(roomMovieTimeVO2);
								}
								firstDay += 1;
								continue;
							
							case 1 :
								firstDay += 1;
								continue;
							}
							adminService.setTheaterRoom(roomMovieTimeVOss);
					}
					
				}else if(endMonthInt ==9) {
					while( startDayInt <= 31 ) {
						roomMovieTimeVO.setStartDay((startYearInt+"-"+startMonthInt+"-"+startDayInt));
						switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
						
						case 0 :
							for(int i=length-1; i>-1; i--) {
								RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
								roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
								roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
								roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
								roomMovieTimeVO.setStartTime((startYearInt+"-"+startMonthInt+"-"+startDayInt+" "+times[i]));
								roomMovieTimeVO2.setMovieNum(movieNums[i]);
								roomMovieTimeVOss.add(roomMovieTimeVO2);
							}
							startDayInt += 1;
							continue;
							
						case 1 :
							startDayInt += 1;
							continue;
						}
						adminService.setTheaterRoom(roomMovieTimeVOss);
					}
					while(firstDay <= endDayInt) {
						roomMovieTimeVO.setStartDay((startYearInt+"-"+endMonthInt+"-"+firstDay));
						switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
						
						case 0 :
							for(int i=length-1; i>-1; i--) {
								RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
								roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
								roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
								roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
								roomMovieTimeVO.setStartTime((startYearInt+"-"+endMonthInt+"-"+firstDay+" "+times[i]));
								roomMovieTimeVO2.setMovieNum(movieNums[i]);
								roomMovieTimeVOss.add(roomMovieTimeVO2);
							}
							firstDay += 1;
							continue;
							
						case 1 :
							firstDay += 1;
							continue;
						}
						adminService.setTheaterRoom(roomMovieTimeVOss);
					}
					
				}else if(endMonthInt ==10) {
					while( startDayInt <= 30 ) {
						roomMovieTimeVO.setStartDay((startYearInt+"-"+startMonthInt+"-"+startDayInt));
						switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
						
						case 0 :
							for(int i=length-1; i>-1; i--) {
								RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
								roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
								roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
								roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
								roomMovieTimeVO.setStartTime((startYearInt+"-"+startMonthInt+"-"+startDayInt+" "+times[i]));
								roomMovieTimeVO2.setMovieNum(movieNums[i]);
								roomMovieTimeVOss.add(roomMovieTimeVO2);
							}
							startDayInt += 1;
							continue;
							
						case 1 :
							startDayInt += 1;
							continue;
						}
						adminService.setTheaterRoom(roomMovieTimeVOss);
					}
					while(firstDay <= endDayInt) {
						roomMovieTimeVO.setStartDay((startYearInt+"-"+endMonthInt+"-"+firstDay));
						switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
						
						case 0 :
							for(int i=length-1; i>-1; i--) {
								RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
								roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
								roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
								roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
								roomMovieTimeVO.setStartTime((startYearInt+"-"+endMonthInt+"-"+firstDay+" "+times[i]));
								roomMovieTimeVO2.setMovieNum(movieNums[i]);
								roomMovieTimeVOss.add(roomMovieTimeVO2);
							}
							firstDay += 1;
							continue;
							
						case 1 :
							firstDay += 1;
							continue;
						}
						adminService.setTheaterRoom(roomMovieTimeVOss);
					}
					
				}else if(endMonthInt ==11) {
					while( startDayInt <= 31 ) {
						roomMovieTimeVO.setStartDay((startYearInt+"-"+startMonthInt+"-"+startDayInt));
						switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
						
						case 0 :
							for(int i=length-1; i>-1; i--) {
								RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
								roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
								roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
								roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
								roomMovieTimeVO.setStartTime((startYearInt+"-"+startMonthInt+"-"+startDayInt+" "+times[i]));
								roomMovieTimeVO2.setMovieNum(movieNums[i]);
								roomMovieTimeVOss.add(roomMovieTimeVO2);
							}
							startDayInt += 1;
							continue;
							
						case 1 :
							startDayInt += 1;
							continue;
						}
						adminService.setTheaterRoom(roomMovieTimeVOss);
					}
					while(firstDay <= endDayInt) {
						roomMovieTimeVO.setStartDay((startYearInt+"-"+endMonthInt+"-"+firstDay));
						switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
						
						case 0 :
							for(int i=length-1; i>-1; i--) {
								RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
								roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
								roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
								roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
								roomMovieTimeVO.setStartTime((startYearInt+"-"+endMonthInt+"-"+firstDay+" "+times[i]));
								roomMovieTimeVO2.setMovieNum(movieNums[i]);
								roomMovieTimeVOss.add(roomMovieTimeVO2);
							}
							firstDay += 1;
							continue;
							
						case 1 :
							firstDay += 1;
							continue;
						}
						adminService.setTheaterRoom(roomMovieTimeVOss);
					}
					
				}else if(endMonthInt ==12) {
					while( startDayInt <= 30 ) {
						roomMovieTimeVO.setStartDay((startYearInt+"-"+startMonthInt+"-"+startDayInt));
						switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
						
						case 0 :
							for(int i=length-1; i>-1; i--) {
								RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
								roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
								roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
								roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
								roomMovieTimeVO2.setStartTime((startYearInt+"-"+startMonthInt+"-"+startDayInt+" "+times[i]));
								roomMovieTimeVO2.setMovieNum(movieNums[i]);
								roomMovieTimeVOss.add(roomMovieTimeVO2);
							}
							startDayInt += 1;
							continue;
							
						case 1 :
							startDayInt += 1;
							continue;
						}
						adminService.setTheaterRoom(roomMovieTimeVOss);
					}
					while(firstDay <= endDayInt) {
						roomMovieTimeVO.setStartDay((startYearInt+"-"+endMonthInt+"-"+firstDay));
						switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
						
						case 0 :
							for(int i=length-1; i>-1; i--) {
								RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
								roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
								roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
								roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
								roomMovieTimeVO2.setStartTime((startYearInt+"-"+endMonthInt+"-"+firstDay+" "+times[i]));
								roomMovieTimeVO2.setMovieNum(movieNums[i]);
								roomMovieTimeVOss.add(roomMovieTimeVO2);
							}
							firstDay += 1;
							continue;
							
						case 1 :
							firstDay += 1;
							continue;
						}
						adminService.setTheaterRoom(roomMovieTimeVOss);
					}
					
				
					
				}
				
				// startMonth랑 endMonth가 같을때
			}else if(endMonthInt == startMonthInt) {
				List<RoomMovieTimeVO> roomMovieTimeVOss = new ArrayList<RoomMovieTimeVO>();
					while(startDayInt <= endDayInt) {
						roomMovieTimeVO.setStartDay((startYearInt+"-"+endMonthInt+"-"+startDayInt));
						switch(adminService.getTheaterRoom(roomMovieTimeVO)) {
						
						case 0 :
							for(int i=length-1; i>-1; i--) {
								RoomMovieTimeVO roomMovieTimeVO2 = new RoomMovieTimeVO();
								roomMovieTimeVO2.setRoomName(roomMovieTimeVO.getRoomName());
								roomMovieTimeVO2.setTheaterRoomCode(roomMovieTimeVO.getTheaterRoomCode());
								roomMovieTimeVO2.setTheaterNum(roomMovieTimeVO.getTheaterNum());
								roomMovieTimeVO2.setStartTime((startYearInt+"-"+endMonthInt+"-"+startDayInt+" "+times[i]));
								roomMovieTimeVO2.setMovieNum(movieNums[i]);
								roomMovieTimeVOss.add(roomMovieTimeVO2);
							}
							startDayInt += 1;
							continue;
							
						case 1 :
							startDayInt += 1;
							continue;
						}
						
					}
					adminService.setTheaterRoom(roomMovieTimeVOss);
				}
		}
			
		mv.setViewName("admin/adminSetTheaterRoom");
		return mv;
		
		}
		
	
	@PostMapping("movieTimeCheck")
	public ModelAndView adminMovieTimeCheck(String choosedTime) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<MovieVO> movieVOs = adminService.movieTimeCheck(choosedTime);
		mv.addObject("movieList", movieVOs);
 		mv.setViewName("ajax/movieList");
		return mv;
	}
	
}
