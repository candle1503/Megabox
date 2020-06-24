package com.mega.s1.board;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.mega.s1.board.notice.NoticeRepository;
import com.mega.s1.board.notice.NoticeVO;

@SpringBootTest
class NoticeRepositoryTest {

	@Autowired
	private NoticeRepository noticeRepository;
	
//	@Test
//	void insertTest() throws Exception{
//		
//		for(int i=101; i<201; i++) {
//			NoticeVO noticeVO = new NoticeVO();
//			noticeVO.setTitle("title"+i);
//			noticeVO.setContents("contents"+i);
//			noticeVO.setSeparate("공지"+i);
//			noticeRepository.boardInsert(noticeVO);
//		}
//		
//		
//	}

}
