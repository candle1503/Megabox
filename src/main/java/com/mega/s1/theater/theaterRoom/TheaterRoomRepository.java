package com.mega.s1.theater.theaterRoom;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mega.s1.theater.TheaterVO;

@Mapper
public interface TheaterRoomRepository {

	//getRoomList
	public List<TheaterRoomVO> getRoomList(TheaterVO theaterVO) throws Exception;
	
	
}
