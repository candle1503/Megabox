package com.mega.s1.movie;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MovieRepository {
	
	public MovieVO movieSelect(MovieVO movieVO) throws Exception;

}
