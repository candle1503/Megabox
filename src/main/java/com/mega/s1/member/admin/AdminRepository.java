package com.mega.s1.member.admin;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mega.s1.member.MemberVO;

@Mapper
public interface AdminRepository {

	//memberList
	public List<MemberVO> getMemberList() throws Exception;
}
