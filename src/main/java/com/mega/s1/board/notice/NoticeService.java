package com.mega.s1.board.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mega.s1.board.BoardService;
import com.mega.s1.board.BoardVO;

@Service
public class NoticeService implements BoardService{

	@Autowired
	private NoticeRepository noticeRepository;
	
	@Override
	public int boardInsert(BoardVO boardVO) throws Exception {
		
		return noticeRepository.boardInsert(boardVO);
	}
	
}
