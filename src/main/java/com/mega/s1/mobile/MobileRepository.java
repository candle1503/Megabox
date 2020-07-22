package com.mega.s1.mobile;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mega.s1.movie.MovieVO;
import com.mega.s1.movie.movieFile.MovieFileVO;

@Mapper
public interface MobileRepository {

	public MovieFileVO getMovieVideo(Integer movieNum) throws Exception;
	
	public List<MovieVO> getMovieNum() throws Exception;
}
