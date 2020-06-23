package com.mega.s1.member.admin;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mega.s1.member.MemberVO;
import com.mega.s1.util.Pager;

@Mapper
public interface AdminRepository {

	//memberList
	public List<MemberVO> getMemberList(Pager pager) throws Exception;
	
	//memberCount
	public Long getMemberCount(Pager pager) throws Exception;
}
