package com.mega.s1.movie;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.mega.s1.board.BoardVO;
import com.mega.s1.member.memberFile.MemberFileRepository;
import com.mega.s1.movie.movieFile.MovieFileRepository;
import com.mega.s1.movie.movieFile.MovieFileVO;
import com.mega.s1.review.ReviewVO;
import com.mega.s1.util.FileManager;
import com.mega.s1.util.FilePathGenerator;
import com.mega.s1.util.Pager;

@Service
public class MovieService {
	
	@Autowired
	private MovieRepository movieRepository;
	
	@Autowired
	private FilePathGenerator pathGenerator;
	
	@Autowired
	private FileManager fileManager;
	
	
	@Value("${movie.filePath}")
	private String filePath;
	
	@Autowired
	private MovieFileRepository movieFileRepository;
	
	
	public MovieVO movieSelect(MovieVO movieVO) throws Exception{
		File fi = pathGenerator.getUseClassPathResource(filePath);
		return movieRepository.movieSelect(movieVO);
	}
	
	public List<MovieFileVO> getMovieFile(MovieVO movieVO) throws Exception{
		return movieFileRepository.movieFileSelect(movieVO);
	}
	
	public List<ReviewVO> reviewPage(Pager pager) throws Exception{
		pager.makeRow();
		long totalCount = movieRepository.boardCount(pager);
		pager.makePage(totalCount);
		return movieRepository.reviewList(pager);
	}
	
	public long boardCount(Pager pager) throws Exception{
		return movieRepository.boardCount(pager);
	}
	
	public int reviewInsert(ReviewVO reviewVO) throws Exception{
		int result = movieRepository.reviewInsert(reviewVO);
		Double rate = movieRepository.reviewRate(reviewVO);
		MovieVO movieVO = new MovieVO();
		movieVO.setMovieNum(reviewVO.getMovieNum());
		movieVO.setRate(rate);
		movieRepository.rateUpdate(movieVO);
		
		return result;
	}

}
