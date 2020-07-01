package com.mega.s1.theater;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import lombok.Data;

@Data
public class TheaterVO {

	private int theaterNum;
	@NotEmpty(message = "극장이름을 적어주세요.")
	private String name;
	@NotEmpty(message = "지역 코드를 적어주세요.")
	private String localCode;
	@NotEmpty(message = "주소를 적어주세요.")
	private String address;
	@NotEmpty(message = "극장 소개를 적어주세요.")
	private String info;
	@NotEmpty(message = "주차안내를 적어주세요.")
	private String parking;

	@NotNull(message="극장 갯수를 적어주세요.")
	private int roomCount;

}
