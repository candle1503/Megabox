package com.mega.s1.booking;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookingService {

	@Autowired
	private BookingRepository bookingRepository;
	
	public List<BookingVO> bookingMovieList(String startTime) throws Exception{
		return bookingRepository.bookingMovieList(startTime);
	}
	
	public List<BookingVO> bookingRoomList(BookingVO bookingVO) throws Exception{
		return bookingRepository.bookingRoomList(bookingVO);
	}
	
	public List<BookingVO> bookingFinalResult(BookingVO bookingVO) throws Exception{
		return bookingRepository.bookingFinalResult(bookingVO);
	}
	
}
