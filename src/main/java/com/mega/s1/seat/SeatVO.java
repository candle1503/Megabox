package com.mega.s1.seat;

import java.util.List;

import lombok.Data;

@Data
public class SeatVO {

	private int booked;
	private int timeCode;
	private String seatNum;
	
	private String rownm;
	private String seatnm;
	
	private List<String> seatList;
}
