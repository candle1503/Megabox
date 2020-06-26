package com.mega.s1.movie.movieFile;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mega.s1.movie.MovieVO;

@Mapper
public interface MovieFileRepository {

	public List<MovieFileVO> movieFileSelect(MovieVO movieVO) throws Exception;
	
}
