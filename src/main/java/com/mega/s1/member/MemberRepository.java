package com.mega.s1.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberRepository {

	//Join
	public int setJoin(MemberVO memberVO) throws Exception;
	//Login
	public MemberVO setLogin(MemberVO memberVO) throws Exception;
	
}
