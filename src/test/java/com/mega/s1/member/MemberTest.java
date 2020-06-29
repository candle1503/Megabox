package com.mega.s1.member;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.mega.s1.member.memberFile.MemberFileRepository;
import com.mega.s1.member.memberFile.MemberFileVO;

@SpringBootTest
class MemberTest {

	@Autowired
	private MemberRepository memberRepository;
	
	@Autowired
	private MemberFileRepository memberFileRepository;
	
	@Test
	void test() throws Exception{
		MemberFileVO memberFileVO = new MemberFileVO();
		MemberVO memberVO = new MemberVO();
		for(int i=0; i<100; i++) {
			memberVO.setId("id"+i);
			memberVO.setPassword("password"+i);
			memberVO.setName("name"+i);
			memberVO.setPhone("phone"+i);
			memberVO.setEmail("email"+i+"@mega.com");
			memberVO.setAge(+i);
			memberRepository.setJoin(memberVO);
			memberFileVO.setId(memberVO.getId());
			memberFileRepository.setProfile(memberFileVO);
			
		}
	}

}
