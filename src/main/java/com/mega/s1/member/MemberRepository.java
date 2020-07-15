package com.mega.s1.member;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mega.s1.movie.MovieVO;
import com.mega.s1.movie.movieFile.MovieFileVO;
import com.mega.s1.review.ReviewVO;
import com.mega.s1.ticket.TicketVO;

@Mapper
public interface MemberRepository {

	//Join
	public int setJoin(MemberVO memberVO) throws Exception;
	//Login
	public MemberVO setLogin(MemberVO memberVO) throws Exception;

	//IdCheck
	public MemberVO idCheck(MemberVO memberVO) throws Exception;
	
	//Delete
	public int setDelete(MemberVO memberVO) throws Exception;
	
	//Update
	public int setUpdate(MemberVO memberVO) throws Exception;
	
	//getTicketCount
	public Integer getTicketCount(MemberVO memberVO) throws Exception;
	
	//getReviewCount
	public Integer getReviewCount(MemberVO memberVO) throws Exception;
	
	//getReviewList
	public List<ReviewVO> getReviewList(MemberVO memberVO) throws Exception;
	
	//getMovieImage
	public String getMovieImage(int movieNum) throws Exception;
	
	//getMovieName
	public String getMovieName(int movieNum) throws Exception;
	
	//deleteReview
	public void deleteReview(String reviewNum)throws Exception;
}
