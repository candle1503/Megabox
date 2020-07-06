package com.mega.s1.board;

import java.util.List;

import com.mega.s1.board.notice.NoticeVO;
import com.mega.s1.theater.TheaterVO;
import com.mega.s1.util.Pager;

public interface BoardRepository {

	public long boardCount(Pager pager) throws Exception;
	
	public int boardInsert(NoticeVO noticeVO) throws Exception;
	
	public List<NoticeVO> boardList(Pager pager) throws Exception;
	
	public NoticeVO boardSelect(NoticeVO noticeVO) throws Exception;
	
	public int boardUpdate(NoticeVO noticeVO) throws Exception;
	
	public int boardDelete(NoticeVO noticeVO) throws Exception; 
	
	public List<TheaterVO> localCodeNameList() throws Exception;
}
