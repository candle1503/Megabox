package com.mega.s1.board.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mega.s1.board.BoardService;
import com.mega.s1.board.BoardVO;

@Service
public class NoticeService implements BoardService{

	@Autowired
	private NoticeRepository noticeRepository;
	
	@Override
	public int boardInsert(NoticeVO noticeVO) throws Exception {
		
		return noticeRepository.boardInsert(noticeVO);
	}
	
	@Override
	public List<BoardVO> boardList(BoardVO boardVO) throws Exception {
		return noticeRepository.boardList(boardVO);
	}
	
}
