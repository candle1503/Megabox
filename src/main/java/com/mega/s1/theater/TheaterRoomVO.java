package com.mega.s1.theater;

import java.sql.Time;

import lombok.Data;

@Data
public class TheaterRoomVO {

	private String name;
	private String roomName;
	private Time startTime;
	private String seatCount;
	private int movieNum;
	
}
