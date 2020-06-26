package com.mega.s1.movie;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.mega.s1.review.ReviewVO;

@SpringBootTest
class ReviewTest {
	
	@Autowired
	private MovieRepository movieRepository;

	@Test
	void insertTest() throws Exception{
		
		for(int i=1; i<100; i++) {
			ReviewVO reviewVO = new ReviewVO();
			if(i%4==0) {
			
			reviewVO.setLikePoint("배우");
			reviewVO.setContents("contents"+i);
			reviewVO.setMovieNum(4);
			reviewVO.setPoint(6);
			reviewVO.setTicketNum(2);
			reviewVO.setWriter("writer"+i);
			
			} else if(i%4==1) {
				
				reviewVO.setLikePoint("스토리");
				reviewVO.setContents("contents"+i);
				reviewVO.setMovieNum(4);
				reviewVO.setPoint(8);
				reviewVO.setTicketNum(3);
				reviewVO.setWriter("writer"+i);
				
			} else {
				reviewVO.setLikePoint("영상미");
				reviewVO.setContents("contents"+i);
				reviewVO.setMovieNum(4);
				reviewVO.setPoint(10);
				reviewVO.setTicketNum(4);
				reviewVO.setWriter("writer"+i);
			}
			
			movieRepository.reviewInsert(reviewVO);
		}
	}
}
