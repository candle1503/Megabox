package com.mega.s1.booking;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("booking/**")
public class BookingController {

	@GetMapping("bookingList")
	public void bookingList() throws Exception {
	}

	@GetMapping("bookingMain")
	public void bookingMain() throws Exception {
	}

	@GetMapping("bookingSeat")
	public void bookingSeat() throws Exception {
	}

	@GetMapping("bookingTest")
	public void bookingTest() throws Exception {
	}
	
	@GetMapping("bookingSeatNext")
	public void bookingSeatNext() throws Exception {
	}

}
