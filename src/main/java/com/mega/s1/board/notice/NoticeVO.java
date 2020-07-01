package com.mega.s1.board.notice;

import java.util.List;

import javax.validation.constraints.NotEmpty;

import com.mega.s1.board.BoardFileVO;
import com.mega.s1.board.BoardVO;
import com.mega.s1.board.notice.noticeFile.NoticeFileVO;

import lombok.Data;

@Data
public class NoticeVO extends BoardVO {
	
	@NotEmpty(message = "극장을 선택해주세요.")
	private String name;

	@NotEmpty(message = "지역을 선택해주세요.")
	private String localCode;

	@NotEmpty(message = "구분을 선택해주세요.")
	private String separate;
	
	private List<NoticeFileVO> noticeFileVOs;
	
}
