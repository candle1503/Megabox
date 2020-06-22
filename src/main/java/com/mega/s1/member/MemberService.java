package com.mega.s1.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;

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
	
	public boolean memberJoinError(MemberVO memberVO, BindingResult bindingResult, HttpSession session) throws Exception {
		boolean result = false;
		
		if(bindingResult.hasErrors()) {
			result = true;
		}
		
		if(!memberVO.getPassword().equals(memberVO.getPasswordCheck())) {
			bindingResult.rejectValue("passwordCheck", "memberVO.passwordCheck");
			result = true;
		}
		
		if(memberRepository.idCheck(memberVO) !=null) {
			bindingResult.rejectValue("id", "memberVO.id.same");
			result = true;
		}else {
			bindingResult.rejectValue("id", "memberVO.id.notSame");
		}
		
		return result;
	}
	
	public boolean memberLoginError(MemberVO memberVO, BindingResult bindingResult,HttpSession session) throws Exception{
		boolean result = false;
		
		if(bindingResult.hasErrors()) {
			result = true;
		}
		
		if(memberRepository.idCheck(memberVO) == null) {
			bindingResult.rejectValue("id", "memberVO.id.notExist");
			result = true;
		}else if(!memberRepository.idCheck(memberVO).getPassword().equals(memberVO.getPassword())){
			bindingResult.rejectValue("password", "memberVO.password.notSame");
			result = true;
		}
		
		return result;
	}
	
	
}
