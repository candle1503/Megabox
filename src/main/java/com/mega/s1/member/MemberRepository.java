package com.mega.s1.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberRepository {

	//Join
	public int setJoin(MemberVO memberVO) throws Exception;
	//Login
	public MemberVO setLogin(MemberVO memberVO) throws Exception;

	//IdCheck
	public MemberVO idCheck(MemberVO memberVO) throws Exception;
	
	//Delete
	public int setDelete(MemberVO memberVO) throws Exception;
	
	//Update
	public int setUpdate(MemberVO memberVO) throws Exception;
}
