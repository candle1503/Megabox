package com.mega.s1.movie;

import java.sql.Date;
import java.sql.Time;

import com.mega.s1.movie.movieFile.MovieFileVO;

import lombok.Data;

@Data
public class MovieVO {
	
	private int movieNum;
	private String name;
	private String director;
	private String genre;
	private double rate;
	private Date openDay;
	private String age;
	private String contents;
	private int like;
	private String character;
	private Time playTime;
	private int views;
	private MovieFileVO movieFileVO;

}
