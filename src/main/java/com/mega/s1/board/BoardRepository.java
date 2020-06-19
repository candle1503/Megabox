package com.mega.s1.board;

import java.util.List;

import com.mega.s1.board.notice.NoticeVO;

public interface BoardRepository {

	public int boardInsert(NoticeVO noticeVO) throws Exception;
	
	public List<BoardVO> boardList(BoardVO boardVO) throws Exception;
	
	public NoticeVO boardSelect(NoticeVO noticeVO) throws Exception;
	
	
	
	public int boardDelete(NoticeVO noticeVO) throws Exception; 
}
