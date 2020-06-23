package com.mega.s1.board.notice;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mega.s1.board.BoardService;
import com.mega.s1.board.BoardVO;
import com.mega.s1.board.notice.noticeFile.NoticeFileRepository;
import com.mega.s1.board.notice.noticeFile.NoticeFileVO;
import com.mega.s1.util.FileManager;
import com.mega.s1.util.FilePathGenerator;
import com.mega.s1.util.Pager;

@Service
public class NoticeService implements BoardService{

	@Autowired
	private NoticeRepository noticeRepository;
	@Autowired
	private NoticeFileRepository noticeFileRepository;
	@Autowired
	private FilePathGenerator filePathGenerator;
	@Autowired
	private FileManager fileManager;
	
	@Value("${board.notice.filePath}")
	private String filePath;
	
	@Override
	public int boardInsert(NoticeVO noticeVO, MultipartFile[] files) throws Exception {
		File file = filePathGenerator.getUseClassPathResource(filePath);
		
		int result = noticeRepository.boardInsert(noticeVO);
		
		for(MultipartFile multipartFile : files) {
			if(multipartFile.getSize()<=0) {
				continue;
			}
			String fileName = fileManager.saveFileCopy(multipartFile, file);
			NoticeFileVO noticeFileVO = new NoticeFileVO();
			noticeFileVO.setNum(noticeVO.getNum());
			noticeFileVO.setFileName(fileName);
			noticeFileVO.setOriName(multipartFile.getOriginalFilename());
			
			result = noticeFileRepository.noticeFileInsert(noticeFileVO);
			
			System.out.println(fileName);
		}
		
		return result;
	}
	
	@Override
	public List<BoardVO> boardList(Pager pager) throws Exception {
		pager.makeRow();
		long totalCount = noticeRepository.boardCount(pager);
		pager.makePage(totalCount);
		
		return noticeRepository.boardList(pager);
	}
	
	
	@Override
	public int listCount(Pager pager) throws Exception {
		return noticeRepository.listCount(pager);
	}
	
	
	
	@Override
	public NoticeVO boardSelect(NoticeVO noticeVO) throws Exception {
		return noticeRepository.boardSelect(noticeVO);
	}
	
	
	
	
	@Override
	public int boardDelete(NoticeVO noticeVO) throws Exception {
		return noticeRepository.boardDelete(noticeVO);
	}
	
	public NoticeFileVO fileDown(NoticeFileVO noticeFileVO) throws Exception{
		return noticeFileRepository.fileDown(noticeFileVO);
	}
	
}
