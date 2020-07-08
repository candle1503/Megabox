package com.mega.s1.booking;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mega.s1.seat.SeatVO;
import com.mega.s1.theater.theaterRoom.RoomMovieTimeVO;

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
	
	public List<SeatVO> getSeatList(RoomMovieTimeVO roomMovieTimeVO) throws Exception{
		SeatVO seatVO = new SeatVO();
		List<SeatVO> list = bookingRepository.getSeatList(roomMovieTimeVO);
		for(int i=0; i<list.size(); i++) {
			seatVO.setSeatnm(list.get(i).getSeatNum().substring(1));
			seatVO.setRownm(list.get(i).getSeatNum().substring(0,1));
			seatVO.setBooked(list.get(i).getBooked());
			seatVO.setSeatNum(list.get(i).getSeatNum());
			seatVO.setTimeCode(list.get(i).getTimeCode());
			list.set(i, seatVO); 
		}
		return bookingRepository.getSeatList(roomMovieTimeVO);
	}
	
}
