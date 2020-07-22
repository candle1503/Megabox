package com.mega.s1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class MegaboxApplication {

	public static void main(String[] args) {
		SpringApplication.run(MegaboxApplication.class, args);
	}

}
