package com.mega.s1.member.memberFile;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberFileRepository {

	//setProfile
	public int setProfile(MemberFileVO memberFileVO) throws Exception;
	
}
