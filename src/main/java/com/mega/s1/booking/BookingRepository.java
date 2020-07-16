package com.mega.s1.booking;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.mega.s1.seat.SeatVO;
import com.mega.s1.theater.theaterRoom.RoomMovieTimeVO;

@Repository
@Mapper
public interface BookingRepository {

	public List<BookingVO> bookingMovieList(String startTime) throws Exception;
	
	public List<BookingVO> bookingRoomList(BookingVO bookingVO) throws Exception;
	
	public BookingVO bookingSeatView(BookingVO bookingVO) throws Exception;
	
	public List<BookingVO> bookingFinalResult(BookingVO bookingVO) throws Exception;
	
	public List<SeatVO> getSeatList(RoomMovieTimeVO roomMovieTimeVO) throws Exception;
	
	public int bookingNotBooked(SeatVO seatVO) throws Exception;
	
	public Integer getBooked(SeatVO seatVO) throws Exception;
}
