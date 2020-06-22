package com.mega.s1.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(rollbackFor = Exception.class)
public class MemberService {

	@Autowired
	private MemberRepository memberRepository;
	
	public int setJoin(MemberVO memberVO) throws Exception{
		return memberRepository.setJoin(memberVO);
	}
	public MemberVO setLogin(MemberVO memberVO) throws Exception{
		return memberRepository.setLogin(memberVO);
	}
	
}
