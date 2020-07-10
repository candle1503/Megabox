package com.mega.s1.movie.movieFile;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


import com.mega.s1.movie.MovieVO;

@Mapper
public interface MovieFileRepository {

	public List<MovieFileVO> movieFileSelect(MovieVO movieVO) throws Exception;
	public long imageCount(MovieVO movieVO) throws Exception;
	public List<MovieFileVO> videoFileSelect(MovieVO movieVO) throws Exception;
	public long videoCount(MovieVO movieVO) throws Exception;
	public int movieFileInsert(MovieFileVO movieFileVO) throws Exception;
	public int movieFileUpdate(MovieFileVO movieFileVO) throws Exception;
	public int imageDelete(MovieFileVO movieFileVO) throws Exception;
}
