package com.mega.s1.review;

import java.sql.Date;

import lombok.Data;

@Data
public class ReviewVO {
	
	private int reviewNum;
	private String writer;
	private int point;
	private String contents;
	private Date regDate;
	private int ticketNum;
	private int MovieNum;
	private String likePoint;

}
