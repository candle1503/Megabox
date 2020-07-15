package com.mega.s1.member;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.multipart.MultipartFile;

import com.mega.s1.member.memberFile.MemberFileRepository;
import com.mega.s1.member.memberFile.MemberFileVO;
import com.mega.s1.movie.movieFile.MovieFileVO;
import com.mega.s1.review.ReviewVO;
import com.mega.s1.util.FileManager;
import com.mega.s1.util.FilePathGenerator;

@Service
@Transactional(rollbackFor = Exception.class)
public class MemberService {

	@Autowired
	private MemberRepository memberRepository;

	@Autowired
	private FilePathGenerator pathGenerator;
	
	@Autowired
	private FileManager fileManager;
	
	@Autowired
	private MemberFileRepository memberFileRepository;
	
	@Value("${member.filePath}")
	private String filePath;

	
	public MemberFileVO getMemberFile(MemberVO memberVO) throws Exception{
		return memberFileRepository.getMemberFile(memberVO);
	}
	
	public MemberFileVO setProfile(MemberVO memberVO, MultipartFile file) throws Exception{
		File fi = pathGenerator.getUseClassPathResource(filePath);
		String fileName= fileManager.saveFileCopy(file, fi);
		MemberFileVO memberFileVO = new MemberFileVO();
		memberFileVO.setId(memberVO.getId());
		memberFileVO.setFileName(fileName);
		memberFileVO.setOriName(file.getOriginalFilename());
		
		memberFileRepository.updateProfile(memberFileVO);
			
		return memberFileVO;
	}
	
	
	public int setUpdate(MemberVO memberVO) throws Exception{
		
		return memberRepository.setUpdate(memberVO);
	}
	
	public int setDelete(MemberVO memberVO) throws Exception{
		return memberRepository.setDelete(memberVO);
	}
	
	public MemberVO setJoin(MemberVO memberVO) throws Exception {
		MemberFileVO memberFileVO = new MemberFileVO();
		memberFileVO.setId(memberVO.getId());
		memberRepository.setJoin(memberVO);
		memberFileRepository.setProfile(memberFileVO);
		memberFileVO =  memberFileRepository.getMemberFile(memberVO);
		memberVO.setFileName(memberFileVO.getFileName());
		memberVO.setOriName(memberFileVO.getOriName());
		return memberVO;
	}

	public MemberVO setLogin(MemberVO memberVO) throws Exception {
		MemberFileVO memberFileVO = new MemberFileVO();
		memberVO = memberRepository.setLogin(memberVO);
		memberFileVO.setId(memberVO.getId());
		memberFileVO =  memberFileRepository.getMemberFile(memberVO);
		memberVO.setFileName(memberFileVO.getFileName());
		memberVO.setOriName(memberFileVO.getOriName());
		return memberVO;
	}

	public boolean errorCheck(MemberVO memberVO, BindingResult bindingResult, HttpSession session, String path)
			throws Exception {
		boolean result = false;

		if (bindingResult.hasErrors()) {
			result = true;
		}

		if(path == "join") {
			if (!memberVO.getPassword().equals(memberVO.getPasswordCheck())) {
				bindingResult.rejectValue("passwordCheck", "memberVO.passwordCheck");
				result = true;
			}
			if (memberRepository.idCheck(memberVO) != null) {
				bindingResult.rejectValue("id", "memberVO.id.same");
				result = true;
			} else {
				bindingResult.rejectValue("id", "memberVO.id.notSame");
			}
		}
		
		if(path =="login") {
			if (memberRepository.idCheck(memberVO) == null) {
				bindingResult.rejectValue("id", "memberVO.id.notExist");
				result = true;
			} else if (!memberRepository.idCheck(memberVO).getPassword().equals(memberVO.getPassword())) {
				bindingResult.rejectValue("password", "memberVO.password.notSame");
				result = true;
			}
		}
		
		if(path=="update") {
			if (!memberVO.getPassword().equals(memberVO.getPasswordCheck())) {
				bindingResult.rejectValue("passwordCheck", "memberVO.passwordCheck");
				result = true;
			}
		}

		if(path =="passwordCheck") {
			if (!memberRepository.idCheck(memberVO).getPassword().equals(memberVO.getPassword())) {
				result = true;
			}
		}
		
		return result;
	}
	
	public boolean passwordCheck(MemberVO memberVO, BindingResult bindingResult) throws Exception{
		boolean result = false;
		
		if (!memberRepository.idCheck(memberVO).getPassword().equals(memberVO.getPassword())) {
			result = true;
		}
		return result;
	}
	
	public Integer getTicketCount(MemberVO memberVO) throws Exception{
		return memberRepository.getTicketCount(memberVO);
	}
	
	public Integer getReviewCount(MemberVO memberVO) throws Exception{
		return memberRepository.getReviewCount(memberVO);
	}
	
	public List<ReviewVO> getReviewList(MemberVO memberVO) throws Exception{
		List<ReviewVO> list =  memberRepository.getReviewList(memberVO);
		for(int i=0; i<list.size(); i++) {
			ReviewVO reviewVO = new ReviewVO();
			reviewVO.setReviewNum(list.get(i).getReviewNum());
			reviewVO.setWriter(list.get(i).getWriter());
			reviewVO.setPoint(list.get(i).getPoint());
			reviewVO.setContents(list.get(i).getContents());
			reviewVO.setRegDate(list.get(i).getRegDate());
			reviewVO.setTicketNum(list.get(i).getTicketNum());
			reviewVO.setMovieNum(list.get(i).getMovieNum());
			reviewVO.setLikePoint(list.get(i).getLikePoint());
			reviewVO.setFileName(memberRepository.getMovieImage(list.get(i).getMovieNum()));
			reviewVO.setMovieName(memberRepository.getMovieName(list.get(i).getMovieNum()));
			list.set(i, reviewVO);
		}
		return list;
	}
	
	public void deleteReview(String reviewNum) throws Exception{
		memberRepository.deleteReview(reviewNum);
	}
	
}
