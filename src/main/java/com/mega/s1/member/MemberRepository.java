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
	public void deleteReview(ReviewVO reviewVO)throws Exception;
	
	//updateTicket
	public void updateTicket() throws Exception;
	
	//bookedCompleteList
	public List<TicketVO> bookedCompleteList(String id) throws Exception;
	
	//bookedCompleteAfterList
	public List<TicketVO> bookedCompleteAfterList(String id) throws Exception;
	
	//bookedCompleteListCalandar
	public List<TicketVO> bookedCompleteListCalandar(TicketVO ticketVO) throws Exception;
	
	
	
	
	//deleteReviewStatus
	public void deleteReviewStatus(TicketVO ticketVO) throws Exception;
}
