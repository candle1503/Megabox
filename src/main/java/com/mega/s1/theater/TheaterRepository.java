package com.mega.s1.theater;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TheaterRepository {
	
	//Branch 1개 가져오기
	public TheaterVO theaterBranchSelect(TheaterVO theaterVO) throws Exception;
	// 지역별 리스트
	public List<TheaterVO> theaterNameSeoul() throws Exception;

	public List<TheaterVO> theaterNameGyeonggi() throws Exception;

	public List<TheaterVO> theaterNameIncheon() throws Exception;

	public List<TheaterVO> theaterNameChungcheong() throws Exception;

	public List<TheaterVO> theaterNameGyeongsang() throws Exception;

	public List<TheaterVO> theaterNameJeolla() throws Exception;

	public List<TheaterVO> theaterNameGangwon() throws Exception;

	public List<TheaterVO> theaterNameJeju() throws Exception;

}
