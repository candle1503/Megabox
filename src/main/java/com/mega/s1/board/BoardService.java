package com.mega.s1.board;

import java.util.List;

import com.mega.s1.board.notice.NoticeVO;

public interface BoardService {

	public int boardInsert(NoticeVO noticeVO) throws Exception;
	
	public List<BoardVO> boardList(BoardVO boardVO) throws Exception;
	
}
