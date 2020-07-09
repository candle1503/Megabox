package com.mega.s1.booking;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mega.s1.seat.SeatVO;
import com.mega.s1.theater.theaterRoom.RoomMovieTimeVO;

@Service
public class BookingService {

	@Autowired
	private BookingRepository bookingRepository;
	
	public List<String> bookingTimeList(long startDay) throws Exception{
		
		int year = 0;
		int month = 0;
		int day = 0;
		int count = 0;
		
		List<String> timeList = new ArrayList<>();
		
		Calendar cal = Calendar.getInstance();
		
		//현재 날짜 년,월,일,요일 가져옴	//sdf형식으로 되어있음
		SimpleDateFormat sdfYear = new SimpleDateFormat("yyyy");
		SimpleDateFormat sdfMonth = new SimpleDateFormat("MM");
		SimpleDateFormat sdfDay = new SimpleDateFormat("dd");
		SimpleDateFormat sdfYoil = new SimpleDateFormat("EE");

		Date date = new Date();
		
//		System.out.println(sdfYear.format(date));
//		System.out.println(sdfMonth.format(date));
//		System.out.println(sdfDay.format(date));
//		System.out.println(sdfYoil.format(date));
//		System.out.println(startDay);
//		System.out.println(Calendar.DATE);
		
//		LocalDate now = LocalDate.now();
//		now.isLeapYear();
				
		
		month = Integer.parseInt(sdfMonth.format(date));
		
		for(int i=0; i<14; i++) {
			//월별로 현재 일이 현재 월의 마지막 날보다 크고 현재일이 원래 월보다 큰 경우 다음달로 월을 넘김
							//현재 날짜중 월의 가장 마지막 날(홀수달month+1 ifTop /짝수달 month-1 bottomElse)
			if(startDay > cal.getActualMaximum(Calendar.DAY_OF_MONTH) || month > Calendar.DAY_OF_MONTH+2) {
				year = Integer.parseInt(sdfYear.format(date));	//sdf형식을 date형식으로 바꾼 후 int타입으로 형변환
				month = Integer.parseInt(sdfMonth.format(date))+1;
				day = Integer.parseInt(sdfDay.format(date));
			} else {
				year = Integer.parseInt(sdfYear.format(date));
				month = Integer.parseInt(sdfMonth.format(date));
				day = Integer.parseInt(sdfDay.format(date));
			}
			
			if(count < 14) {
				//현재 일이 현재 월의 마지막 날보다 큰 경우 / 현재일-마지막날로 현재일을 리턴  
				if(startDay > cal.getActualMaximum(Calendar.DAY_OF_MONTH)) {
					startDay = (startDay - cal.getActualMaximum(Calendar.DAY_OF_MONTH));
					
					Date setdate = new Date(year, month-1, (int)startDay-1);
					
//					System.out.println("Month:"+month);
//					System.out.println("yoil:"+sdfYoil.format(setdate));
					
					String startMonth = month + "";
					if(startMonth.length() < 2) {
						startMonth = 0+startMonth;
					}
					
					String startDays = startDay + "";
					if(startDays.length() < 2) {
						startDays = 0+startDays;
					}
					
					//month = month + 1;
					
					timeList.add(year+"."+startMonth+"/"+startDays+"//"+sdfYoil.format(setdate));
					count++;
					startDay++;
				}else {
					Date setdate = new Date(year, month-1, (int)startDay-1);
//					System.out.println("year  :"+setdate.getYear());
//					System.out.println("month :"+setdate.getMonth());
//					System.out.println("date  :"+setdate.getDate());
//					System.out.println("day   :"+setdate.getDay());
//					System.out.println("month:"+month);
					
					String startMonth = month + "";
					if(startMonth.length() < 2) {
						startMonth = 0+startMonth;
					}
					
					String startDays = startDay + "";
					if(startDays.length() < 2) {
						startDays = 0+startDays;
					}
					
					timeList.add(year+"."+startMonth+"/"+startDays+"//"+sdfYoil.format(setdate));
					count++;
					startDay++;
//					System.out.println(timeList.get(i).toString());
				}
			}
		}
		
		
		return timeList;
	}
	
	public List<BookingVO> bookingMovieList(String startTime) throws Exception{
		return bookingRepository.bookingMovieList(startTime);
	}
	
	public List<BookingVO> bookingRoomList(BookingVO bookingVO) throws Exception{
		return bookingRepository.bookingRoomList(bookingVO);
	}
	
	public BookingVO bookingSeatView(BookingVO bookingVO) throws Exception{
		return bookingRepository.bookingSeatView(bookingVO);
	}
	
	public List<BookingVO> bookingFinalResult(BookingVO bookingVO) throws Exception{
		return bookingRepository.bookingFinalResult(bookingVO);
	}
	
	public List<SeatVO> getSeatList(RoomMovieTimeVO roomMovieTimeVO) throws Exception{
		SeatVO seatVO = new SeatVO();
		List<SeatVO> list = bookingRepository.getSeatList(roomMovieTimeVO);
		
		return list;
	}
	
}
