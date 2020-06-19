package com.mega.s1.member;

import lombok.Data;

@Data
@Table
public class MemberVO {

	private String id;
	private String password;
	private String passwordCheck;
	private String name;
	private String email;
	private int age;
	
}
