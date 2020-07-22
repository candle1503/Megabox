package com.mega.s1.movie;



import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.mega.s1.review.ReviewVO;

@SpringBootTest
class ReviewTest {
	
	@Autowired
	private MovieService movieService;

	@Test
	void insertTest() throws Exception{
		
		for(int i=1; i<5; i++) {
			ReviewVO reviewVO = new ReviewVO();
			if(i%4==1) {
				reviewVO.setLikePoint("배우");
				reviewVO.setContents("OST최강"+i);
				reviewVO.setMovieNum(1);
				reviewVO.setPoint(1);
				reviewVO.setTicketNum(2);
				reviewVO.setWriter("writer"+i);
			} else if(i%4==2) {
				reviewVO.setLikePoint("연출");
				reviewVO.setContents("연출최강"+i);
				reviewVO.setMovieNum(1);
				reviewVO.setPoint(3);
				reviewVO.setTicketNum(2);
				reviewVO.setWriter("writer"+i);
			} else {
				reviewVO.setLikePoint("배우");
				reviewVO.setContents("배우최강"+i);
				reviewVO.setMovieNum(1);
				reviewVO.setPoint(2);
				reviewVO.setTicketNum(2);
				reviewVO.setWriter("writer"+i);
			}
			

			
			
			

			movieService.reviewInsert(reviewVO);
		}
	}
}
