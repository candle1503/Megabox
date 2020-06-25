package com.mega.s1.board.notice;

import java.util.List;


import com.mega.s1.board.BoardFileVO;
import com.mega.s1.board.BoardVO;
import com.mega.s1.board.notice.noticeFile.NoticeFileVO;

import lombok.Data;

@Data
public class NoticeVO extends BoardVO {
	
	private String name;
	
	private String localCode;

	private String separate;
	
	private List<NoticeFileVO> noticeFileVOs;
	
}
