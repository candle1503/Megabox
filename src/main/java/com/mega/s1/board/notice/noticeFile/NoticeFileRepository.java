package com.mega.s1.board.notice.noticeFile;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface NoticeFileRepository {

	public int noticeFileInsert(NoticeFileVO noticeFileVO) throws Exception;
	
	public NoticeFileVO fileDown(NoticeFileVO noticeFileVO) throws Exception;
	
}
