package com.mega.s1.member;

import java.sql.Date;


import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;

import com.mega.s1.member.memberFile.MemberFileVO;

import lombok.Data;

@Data
public class MemberVO extends MemberFileVO {

	@NotEmpty(message ="아이디를 입력")
	private String id;
	
	@Size(max = 20, min = 8, message="최소 8글자 최대 20글자")
	private String password;
	@Size(max = 20, min = 8, message="최소 8글자 최대 20글자")
	private String passwordCheck;
	@NotEmpty(message = "이름을 입력")
	private String name;
	@NotEmpty(message = "전화번호를 입력")
	private String phone;
	@NotEmpty(message = "이메일을 입력")
	private String email;
	@Range(max= 200, min= 0)
	@NotNull(message = "나이를 입력")
	private Integer age;
	
	private Date regDate;
	
}
