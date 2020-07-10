package com.mega.s1.member.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mega.s1.member.MemberVO;
import com.mega.s1.movie.MovieVO;
import com.mega.s1.theater.TheaterVO;
import com.mega.s1.theater.theaterRoom.RoomMovieTimeVO;
import com.mega.s1.theater.theaterRoom.TheaterRoomVO;
import com.mega.s1.util.Pager;

@Service
public class AdminService {

	@Autowired
	private AdminRepository adminRepository;
	
	
	public List<MemberVO> getMemberList(Pager pager) throws Exception{
		pager.makeRow();
		long totalCount = adminRepository.getMemberCount(pager);
		pager.makePage(totalCount);
		return adminRepository.getMemberList(pager);
	}
	
	public Long getMemberCount(Pager pager) throws Exception{
		return adminRepository.getMemberCount(pager);
	}
	
	public int addTheater(TheaterVO theaterVO) throws Exception{
		return adminRepository.addTheater(theaterVO);
	}
	
	public List<TheaterVO> getTheaterList(Pager pager) throws Exception{
		pager.makeRow();
		long totalCount = adminRepository.getTheaterCount(pager);
		pager.makePage(totalCount);
		return adminRepository.getTheaterList(pager);
	}
	
	public Long getTheaterCount(Pager pager) throws Exception{
		return adminRepository.getTheaterCount(pager);
	}
	
	public TheaterVO theaterSelect(TheaterVO theaterVO) throws Exception{
		return adminRepository.theaterSelect(theaterVO);
	}
	
	public int theaterUpdate(TheaterVO theaterVO) throws Exception{
		return adminRepository.theaterUpdate(theaterVO);
	}
	
	public int theaterRoomSet(TheaterRoomVO theaterRoomVO, int roomCount) throws Exception{
		
		for(int i=0; i<=roomCount-1; i++) {
			int roomNum= i+1;
			theaterRoomVO.setRoomName(theaterRoomVO.getName()+roomNum+"관");
			adminRepository.theaterRoomSet(theaterRoomVO);
		}
		return 0;
	}
	
	public List<TheaterRoomVO> getRoomList(TheaterVO theaterVO) throws Exception{
		return adminRepository.getRoomList(theaterVO);
	}
	
	public List<MovieVO> movieTimeCheck(String choosedTime) throws Exception{
		return adminRepository.movieTimeCheck(choosedTime);
	}
	
	public int getTheaterNum(TheaterVO theaterVO) throws Exception{
		return adminRepository.getTheaterNum(theaterVO);
	}
	
	
	
	
	
	public void setTheaterRoom(List<RoomMovieTimeVO> roomMovieTimeVOss) throws Exception{
		adminRepository.setTheaterRoom(roomMovieTimeVOss);

		// 좌석 추가하려고 넣는 list
		List<RoomMovieTimeVO> movieTimeVOs = new ArrayList<RoomMovieTimeVO>(); 
		
		int start = 0;
		
		String seatNum;
		
		char seatCount = (char)65;
		
		
		while(start<roomMovieTimeVOss.size()) {
			
			int timeCode = adminRepository.getTimeCode(roomMovieTimeVOss.get(start));
			seatCount = (char)65;
			
			while(seatCount<73) {
				
				if(seatCount ==70) {
					for(int i=1; i<13; i++) {
						RoomMovieTimeVO vo = new RoomMovieTimeVO();
						seatNum = Character.toString(seatCount)+i;
						vo.setTimeCode(timeCode);
						vo.setSeatNum(seatNum);
						vo.setSeatnm(seatNum.substring(1));
						vo.setRownm(seatNum.substring(0,1));
						movieTimeVOs.add(vo);
					}seatCount+=1;
					
				}else if(seatCount ==71){
					for(int i=1; i<12; i++) {
						RoomMovieTimeVO vo = new RoomMovieTimeVO();
						seatNum = Character.toString(seatCount)+i;
						vo.setTimeCode(timeCode);
						vo.setSeatnm(seatNum.substring(1));
						vo.setRownm(seatNum.substring(0,1));
						vo.setSeatNum(seatNum);
						movieTimeVOs.add(vo);
					}seatCount+=1;
					
				}else if(seatCount ==72){
					for(int i=3; i<11; i++) {
						RoomMovieTimeVO vo = new RoomMovieTimeVO();
						seatNum = Character.toString(seatCount)+i;
						vo.setTimeCode(timeCode);
						vo.setSeatnm(seatNum.substring(1));
						vo.setRownm(seatNum.substring(0,1));
						vo.setSeatNum(seatNum);
						movieTimeVOs.add(vo);
					}seatCount+=1;
					
				}else if(seatCount < 70){
					for(int i=1; i<14; i++) {
						RoomMovieTimeVO vo = new RoomMovieTimeVO();
						seatNum = Character.toString(seatCount)+i;
						vo.setTimeCode(timeCode);
						vo.setSeatnm(seatNum.substring(1));
						vo.setRownm(seatNum.substring(0,1));
						vo.setSeatNum(seatNum);
						movieTimeVOs.add(vo);
					}
					seatCount+=1;
				}
				
			}
			start +=1;
		}
		adminRepository.setSeat(movieTimeVOs);
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public int getTheaterRoom(RoomMovieTimeVO roomMovieTimeVO) throws Exception{
		if(adminRepository.getTheaterRoom(roomMovieTimeVO) == null) {
			return 0;
		}else {
			return 1;
		}
	}
	
}
