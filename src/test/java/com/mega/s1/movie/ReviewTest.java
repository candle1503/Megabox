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
		
		for(int i=1; i<50; i++) {
			ReviewVO reviewVO = new ReviewVO();

			
			reviewVO.setLikePoint("OST");
			reviewVO.setContents("OST최강"+i);
			reviewVO.setMovieNum(4);
			reviewVO.setPoint(10);
			reviewVO.setTicketNum(2);
			reviewVO.setWriter("writer"+i);
			

			movieRepository.reviewInsert(reviewVO);
		}
	}
}
