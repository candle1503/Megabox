package com.mega.s1.booking;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface BookingRepository {

	public List<BookingVO> bookingMovieList(BookingVO bookingVO) throws Exception;
	
	public List<BookingVO> bookingMovieTime(BookingVO bookingVO) throws Exception;
	
	public List<BookingVO> bookingLocalList(BookingVO bookingVO) throws Exception;
}
