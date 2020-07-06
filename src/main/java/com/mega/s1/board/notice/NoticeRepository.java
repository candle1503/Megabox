package com.mega.s1.board.notice;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.mega.s1.board.BoardRepository;

@Repository
@Mapper
public interface NoticeRepository extends BoardRepository{

	//theater 극장별 공지사항 가져오기
	public List<NoticeVO> boardSelectList(String name) throws Exception;
	
}
