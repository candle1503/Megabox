package com.mega.s1.member.admin;

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
	
	public void setTheaterRoom(RoomMovieTimeVO roomMovieTimeVO) throws Exception{
		adminRepository.setTheaterRoom(roomMovieTimeVO);
	}
	
	public int getTheaterRoom(RoomMovieTimeVO roomMovieTimeVO) throws Exception{
		System.out.println("roomName은?" +roomMovieTimeVO.getRoomName());
		System.out.println("startTime은?" +roomMovieTimeVO.getStartTime());
		if(adminRepository.getTheaterRoom(roomMovieTimeVO) == null) {
			System.out.println("서비스 내부 메세지  DB데이터 없어");
			return 0;
		}else {
			System.out.println("서비스 내부 메세지 DB데이터 있어");
			return 1;
		}
	}
}
