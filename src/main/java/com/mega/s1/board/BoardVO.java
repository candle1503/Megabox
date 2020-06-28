package com.mega.s1.board;

import javax.validation.constraints.NotEmpty;

import lombok.Data;

@Data
public class BoardVO {
	
	private int num;
	
	@NotEmpty(message = "제목을 입력해주세요.")
	private String title;
	
	@NotEmpty(message = "내용을 입력해주세요.")
	private String contents;
	
	private String regDate;
	
	
}
