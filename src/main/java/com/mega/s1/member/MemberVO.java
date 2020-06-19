package com.mega.s1.member;

import lombok.Data;

@Data
public class MemberVO {

	private String id;
	private String password;
	private String passwordCheck;
	private String name;
	private String phone;
	private String email;
	private int age;
	
}
