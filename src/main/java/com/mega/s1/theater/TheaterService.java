package com.mega.s1.theater;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TheaterService {

	@Autowired
	private TheaterRepository theaterRepository;
	
	public List<TheaterVO> theaterNewBranchSelect() throws Exception{
		return theaterRepository.theaterNewBranchSelect();		
	}
	
	public TheaterVO theaterBranchSelect(TheaterVO theaterVO) throws Exception{
		return theaterRepository.theaterBranchSelect(theaterVO);		
	}

	public List<TheaterVO> theaterNameSeoul() throws Exception {

		return theaterRepository.theaterNameSeoul();
	}

	public List<TheaterVO> theaterNameGyeonggi() throws Exception {

		return theaterRepository.theaterNameGyeonggi();
	}

	public List<TheaterVO> theaterNameIncheon() throws Exception {

		return theaterRepository.theaterNameIncheon();
	}

	public List<TheaterVO> theaterNameChungcheong() throws Exception {

		return theaterRepository.theaterNameChungcheong();
	}

	public List<TheaterVO> theaterNameGyeongsang() throws Exception {

		return theaterRepository.theaterNameGyeongsang();
	}

	public List<TheaterVO> theaterNameJeolla() throws Exception {

		return theaterRepository.theaterNameJeolla();
	}

	public List<TheaterVO> theaterNameGangwon() throws Exception {

		return theaterRepository.theaterNameGangwon();
	}

	public List<TheaterVO> theaterNameJeju() throws Exception {

		return theaterRepository.theaterNameJeju();
	}

}
