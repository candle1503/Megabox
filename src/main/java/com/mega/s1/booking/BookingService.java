package com.mega.s1.booking;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookingService {

	@Autowired
	private BookingRepository bookingRepository;
	
	public List<BookingVO> bookingMovieList(BookingVO bookingVO) throws Exception{
		return bookingRepository.bookingMovieList(bookingVO);
	}
	
	public List<BookingVO> bookingMovieTime(BookingVO bookingVO) throws Exception{
		return bookingRepository.bookingMovieTime(bookingVO);
	}
	
	public List<BookingVO> bookingLocalList(BookingVO bookingVO) throws Exception{
		return bookingRepository.bookingLocalList(bookingVO);
	}
}
