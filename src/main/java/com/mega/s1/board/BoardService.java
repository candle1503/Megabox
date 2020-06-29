package com.mega.s1.board;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.mega.s1.board.notice.NoticeVO;
import com.mega.s1.theater.TheaterVO;
import com.mega.s1.util.Pager;

public interface BoardService {

	public long boardCount(Pager pager) throws Exception;
	
	public int boardInsert(NoticeVO noticeVO, MultipartFile[] files) throws Exception;
	
	public List<NoticeVO> boardList(Pager pager) throws Exception;
	
	public NoticeVO boardSelect(NoticeVO noticeVO) throws Exception;
	
	public int boardUpdate(NoticeVO noticeVO, MultipartFile[] files) throws Exception;
	
	public int boardDelete(NoticeVO noticeVO) throws Exception;

	public List<TheaterVO> localCodeNameList() throws Exception;
} 
