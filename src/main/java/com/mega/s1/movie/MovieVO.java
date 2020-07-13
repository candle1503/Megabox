package com.mega.s1.movie;

import java.sql.Date;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.mega.s1.movie.movieFile.MovieFileVO;

import lombok.Data;

@Data
public class MovieVO {
	
	private int movieNum;
	@NotEmpty(message = "영화제목을 적어주세요.")
	private String name;
	@NotEmpty(message = "감독을 적어주세요.")
	private String director;
	
	private String genre;
	
	private Double rate;

	private Date openDay;
	
	@NotEmpty(message = "나이 제한을 설정해주세요.")
	private String age;
	@NotEmpty(message = "영화소개를 적어주세요.")
	private String contents;
	private int like;
	
	private String character;
	
	@NotNull(message = "러닝타임을 입력해주세요")
	private int playTime;
	
	@NotEmpty(message = "장르를 설정해주세요.")
	private String[] genreTest;
	private int views;
	private MovieFileVO movieFileVO;
	private Double bookingRate;
	
	

}
