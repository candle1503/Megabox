package com.mega.s1.movie;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mega.s1.review.ReviewVO;

@Mapper
public interface MovieRepository {
	
	public MovieVO movieSelect(MovieVO movieVO) throws Exception;
	public int reviewInsert(ReviewVO reviewVO) throws Exception;
	
	public List<ReviewVO> reviewList(ReviewVO reviewVO) throws Exception;
}
