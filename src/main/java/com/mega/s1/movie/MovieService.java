package com.mega.s1.movie;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mega.s1.movie.movieFile.MovieFileRepository;

@Service
public class MovieService {
	
	@Autowired
	private MovieRepository movieRepository;
	
//	@Autowired
//	private MovieFileRepository movieFileRepository;
	
	public MovieVO movieSelect(MovieVO movieVO) throws Exception{
		return movieRepository.movieSelect(movieVO);
	}

}
