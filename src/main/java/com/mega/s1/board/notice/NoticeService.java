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
import com.mega.s1.theater.TheaterRepository;
import com.mega.s1.theater.TheaterVO;
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
	
	@Autowired
	private TheaterRepository theaterRepository;
	
	
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
	public List<NoticeVO> boardList(Pager pager) throws Exception {
		pager.makeRow();
		long totalCount = noticeRepository.boardCount(pager);
		pager.makePage(totalCount);
		
		return noticeRepository.boardList(pager);
	}
	
	
	public long boardCount(Pager pager) throws Exception{
		return noticeRepository.boardCount(pager);
	}
	
	
	@Override
	public NoticeVO boardSelect(NoticeVO noticeVO) throws Exception {
		return noticeRepository.boardSelect(noticeVO);
	}
	
	
	@Override
	public int boardUpdate(NoticeVO noticeVO, MultipartFile[] files) throws Exception {
		File file = filePathGenerator.getUseClassPathResource(filePath);
		
		int result = noticeRepository.boardUpdate(noticeVO);
		
		for(MultipartFile multipartFile : files) {
			if(multipartFile.getSize() <= 0) {
				continue;
			}
			String fileName = fileManager.saveFileCopy(multipartFile, file);
			NoticeFileVO noticeFileVO = new NoticeFileVO();
			noticeFileVO.setNum(noticeVO.getNum());
			noticeFileVO.setFileName(fileName);
			noticeFileVO.setOriName(multipartFile.getOriginalFilename());
			
			result = noticeFileRepository.noticeFileInsert(noticeFileVO);
		}
		
		return result;
	}
	
	
	@Override
	public int boardDelete(NoticeVO noticeVO) throws Exception {
		return noticeRepository.boardDelete(noticeVO);
	}
	
	public NoticeFileVO fileDown(NoticeFileVO noticeFileVO) throws Exception{
		return noticeFileRepository.fileDown(noticeFileVO);
	}
	
	public int fileDelete(NoticeFileVO noticeFileVO) throws Exception{
		return noticeFileRepository.fileDelete(noticeFileVO);
	}
	
	
	public List<TheaterVO> localCodeNameList() throws Exception{
		return noticeRepository.localCodeNameList();
	}
	
	//theater 극장별 공지사항 가져오기
	public List<NoticeVO> boardSelectList(String name) throws Exception{
		return noticeRepository.boardSelectList(name);
	}
	
}
