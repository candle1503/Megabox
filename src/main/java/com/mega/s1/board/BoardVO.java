package com.mega.s1.board;

import lombok.Data;

@Data
public class BoardVO {
	
	private long num;
	
	private String title;
	
	private String writer;
	
	private String contents;
	
	private String regDate;
	
	private long hit;
	
}
