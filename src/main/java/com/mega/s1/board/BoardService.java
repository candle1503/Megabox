package com.mega.s1.board;

import java.util.List;

public interface BoardService {

	public int boardInsert(BoardVO boardVO) throws Exception;
	
	public List<BoardVO> boardList(BoardVO boardVO) throws Exception;
	
}
