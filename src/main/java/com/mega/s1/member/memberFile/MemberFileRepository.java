package com.mega.s1.member.memberFile;

import org.apache.ibatis.annotations.Mapper;

import com.mega.s1.member.MemberVO;

@Mapper
public interface MemberFileRepository {

	//setProfile
	public int setProfile(MemberFileVO memberFileVO) throws Exception;

	//getMemberFile
	public MemberFileVO getMemberFile(MemberFileVO memberFileVO) throws Exception;
	
	//updateProfile
	public int updateProfile(MemberFileVO memberFileVO) throws Exception;
}
