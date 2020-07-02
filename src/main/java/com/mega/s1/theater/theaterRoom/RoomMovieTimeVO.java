package com.mega.s1.theater.theaterRoom;

import java.util.Date;

import lombok.Data;

@Data
public class RoomMovieTimeVO {

	private int timeCode;
	private Date startTime;
	private String roomName;
	private String movieNum;
	private int theaterRoomCode;
	private int theaterNum;
	
	private String startDay;
	private String endDay;
	private String time;
}
