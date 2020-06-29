package com.mega.s1.member.admin;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mega.s1.member.MemberVO;
import com.mega.s1.theater.TheaterRoomVO;
import com.mega.s1.theater.TheaterVO;
import com.mega.s1.util.Pager;

@Mapper
public interface AdminRepository {

	//memberList
	public List<MemberVO> getMemberList(Pager pager) throws Exception;
	
	//memberCount
	public Long getMemberCount(Pager pager) throws Exception;
	
	//addTheater
	public int addTheater(TheaterVO theaterVO) throws Exception;
	
	//theaterList
	public List<TheaterVO> getTheaterList(Pager pager) throws Exception;
	
	//theaterCount
	public Long getTheaterCount(Pager pager) throws Exception;
	
	//theaterSelect
	public TheaterVO theaterSelect(TheaterVO theaterVO) throws Exception;
	
	//theaterUpdate
	public int theaterUpdate(TheaterVO theaterVO) throws Exception;
	
	//theaterRoomSet
	public int theaterRoomSet(TheaterRoomVO theaterRoomVO) throws Exception;
	
}
