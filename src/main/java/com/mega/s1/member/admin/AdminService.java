package com.mega.s1.member.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mega.s1.member.MemberVO;

@Service
public class AdminService {

	@Autowired
	private AdminRepository adminRepository;
	
	public List<MemberVO> getMemberList() throws Exception{
		return adminRepository.getMemberList();
	}
}
