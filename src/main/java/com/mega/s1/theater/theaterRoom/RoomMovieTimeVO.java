package com.mega.s1.theater.theaterRoom;

import lombok.Data;

@Data
public class RoomMovieTimeVO {

	private int timeCode;
	private String roomName;
	private String movieNum;
	private int theaterRoomCode;
	private int theaterNum;
	
	//날짜 비교할 변수
	private String startDay;
	//실제로 DB로 들어갈 변수(시간포함)
	private String startTime;
	private String endDay;
	private String time;
	//theaterNum 가져올려고 쓰는 변수
	private String name;
	
	//seat 초기 설정하는 변수
	private String seatNum;
}
