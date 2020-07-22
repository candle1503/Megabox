package com.mega.s1.movie;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mega.s1.review.ReviewVO;
import com.mega.s1.ticket.TicketVO;
import com.mega.s1.util.Pager;

@Mapper
public interface MovieRepository {
	
	public MovieVO movieSelect(MovieVO movieVO) throws Exception;
	public int reviewInsert(ReviewVO reviewVO) throws Exception;
	
	public List<ReviewVO> reviewList(Pager pager) throws Exception;
	
	public long boardCount(Pager pager) throws Exception;
	
	public Double reviewRate(ReviewVO reviewVO) throws Exception;
	public int rateUpdate(MovieVO movieVO) throws Exception;
	
	public long player(MovieVO movieVO) throws Exception;
	public long direct(MovieVO movieVO) throws Exception;
	public long ost(MovieVO movieVO) throws Exception;
	public long story(MovieVO movieVO) throws Exception;
	public long beauty(MovieVO movieVO) throws Exception;
	
	public int likeUpdate(MovieVO movieVO) throws Exception;
	
	public List<MovieVO> movieList(int startNum) throws Exception;
	public List<MovieVO> futureList(int startNum) throws Exception;
	public List<MovieVO> ingList(int startNum) throws Exception;
	
	public int movieInsert(MovieVO movieVO) throws Exception;
	
	public int movieDelete(MovieVO movieVO) throws Exception;
	public int movieUpdate(MovieVO movieVO) throws Exception;
	public int viewUp(MovieVO movieVO) throws Exception;
	public long ranking(MovieVO movieVO) throws Exception;
	public long ageCount(MovieVO movieVO) throws Exception;

	
	public long child(MovieVO movieVO) throws Exception;
	public long old(MovieVO movieVO) throws Exception;
	
	public long viewCount(MovieVO movieVO) throws Exception;
	
	public long movieCount() throws Exception;
	public long ingCount() throws Exception;
	public long futureCount() throws Exception;
	
	public List<MovieVO> viewUpCount() throws Exception;
	
	public TicketVO canLike(TicketVO ticketVO) throws Exception;
	
	public int likeDone(TicketVO ticketVO) throws Exception;
	
	
	
}
