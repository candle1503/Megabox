package com.mega.s1.member.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mega.s1.member.MemberVO;
import com.mega.s1.util.Pager;

@Service
public class AdminService {

	@Autowired
	private AdminRepository adminRepository;
	
	public List<MemberVO> getMemberList(Pager pager) throws Exception{
		pager.makeRow();
		long totalCount = adminRepository.getMemberCount(pager);
		pager.makePage(totalCount);
		return adminRepository.getMemberList(pager);
	}
	
	public Long getMemberCount(Pager pager) throws Exception{
		return adminRepository.getMemberCount(pager);
	}
	
}
