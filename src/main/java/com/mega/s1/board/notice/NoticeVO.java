package com.mega.s1.board.notice;

import java.util.List;


import com.mega.s1.board.BoardFileVO;
import com.mega.s1.board.BoardVO;

import lombok.Data;

@Data
public class NoticeVO extends BoardVO {
	
	private String separate;

	private int theaterNum;
	
	private List<BoardFileVO> boardFileVOs;
	
}
