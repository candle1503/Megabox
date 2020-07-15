package com.mega.s1.movie;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;



import com.mega.s1.movie.movieFile.MovieFileRepository;
import com.mega.s1.movie.movieFile.MovieFileVO;
import com.mega.s1.review.ReviewVO;
import com.mega.s1.util.FileManager;
import com.mega.s1.util.FilePathGenerator;
import com.mega.s1.util.Pager;

@Service
public class MovieService {
	
	@Autowired
	private MovieRepository movieRepository;
	
	@Autowired
	private FilePathGenerator pathGenerator;
	
	@Autowired
	private FileManager fileManager;
	
	
	@Value("${movie.filePath}")
	private String filePath;
	
	@Autowired
	private MovieFileRepository movieFileRepository;
	
	
	public MovieVO movieSelect(MovieVO movieVO) throws Exception{
		
		return movieRepository.movieSelect(movieVO);
	}
	
	public List<MovieFileVO> getMovieFile(MovieVO movieVO) throws Exception{
		return movieFileRepository.movieFileSelect(movieVO);
	}
	public List<MovieFileVO> videoFile(MovieVO movieVO) throws Exception {
		return movieFileRepository.videoFileSelect(movieVO);
	}
	
	public List<ReviewVO> reviewPage(Pager pager) throws Exception{
		pager.makeRow();
		long totalCount = movieRepository.boardCount(pager);
		pager.makePage(totalCount);
		return movieRepository.reviewList(pager);
	}
	
	public long imageCount(MovieVO movieVO) throws Exception{
		return movieFileRepository.imageCount(movieVO);
	}
	public long videoCount(MovieVO movieVO) throws Exception{
		return movieFileRepository.videoCount(movieVO);
	}
	
	public long boardCount(Pager pager) throws Exception{
		return movieRepository.boardCount(pager);
	}
	
	public int reviewInsert(ReviewVO reviewVO) throws Exception{
		int result = movieRepository.reviewInsert(reviewVO);
		Double rate = movieRepository.reviewRate(reviewVO);
		MovieVO movieVO = new MovieVO();
		movieVO.setMovieNum(reviewVO.getMovieNum());
		movieVO.setRate(rate);
		movieRepository.rateUpdate(movieVO);
		
		return result;
	}
	
	public long player(MovieVO movieVO) throws Exception{
		return movieRepository.player(movieVO);
	};
	public long story(MovieVO movieVO) throws Exception{
		return movieRepository.story(movieVO);
	};
	public long direct(MovieVO movieVO) throws Exception{
		return movieRepository.direct(movieVO);
	};
	public long ost(MovieVO movieVO) throws Exception{
		return movieRepository.ost(movieVO);
	};
	public long beauty(MovieVO movieVO) throws Exception{
		return movieRepository.beauty(movieVO);
	};
	
	public int likeUpdate(MovieVO movieVO) throws Exception{
		return movieRepository.likeUpdate(movieVO);
	};
	
	public List<MovieVO> movieList() throws Exception {
		return movieRepository.movieList();
	}
	
	public List<MovieVO> futureList() throws Exception {
		return movieRepository.futureList();
	}
	
	public List<MovieVO> ingList() throws Exception {
		return movieRepository.ingList();
	}
	
	public int movieInsert(MovieVO movieVO, MultipartFile[] files, String[] details) throws Exception{
		File fi = pathGenerator.getUseClassPathResource(filePath);
		int result = movieRepository.movieInsert(movieVO);
		int j=0;
		
		for(int i = 0; i < files.length; i++) {
			MultipartFile file = files[i];
			if(file.getSize()<=0) {
				continue;
			}
			String fileName=fileManager.saveFileCopy(file, fi);
			MovieFileVO movieFileVO = new MovieFileVO();
			int index = fileName.lastIndexOf(".");
			String str = fileName.substring(index + 1);
			
			movieFileVO.setFileName(fileName);
			movieFileVO.setOriName(file.getOriginalFilename());
			movieFileVO.setMovieNum(movieVO.getMovieNum());
			
			if("mp4".equals(str.toLowerCase())) {	
				movieFileVO.setStatus(1);
				movieFileVO.setDetail(details[j]);
				j++;
			} else {
				
				movieFileVO.setStatus(2);
				movieFileVO.setDetail(null);
			}
			result = movieFileRepository.movieFileInsert(movieFileVO);
			
		}
		
		
		return result;
	}
	
	public int movieDelete(MovieVO movieVO) throws Exception{
		return movieRepository.movieDelete(movieVO);
	}
	
	public int movieUpdate(MovieVO movieVO, MultipartFile[] files, String[] details) throws Exception{
		File fi = pathGenerator.getUseClassPathResource(filePath);
		int result = movieRepository.movieUpdate(movieVO);
		int j=0;
		
		for(int i = 0; i < files.length; i++) {
			MultipartFile file = files[i];
			if(file.getSize()<=0) {
				continue;
			}
			String fileName=fileManager.saveFileCopy(file, fi);
			MovieFileVO movieFileVO = new MovieFileVO();
			
			int index = fileName.lastIndexOf(".");
			String str = fileName.substring(index + 1);
			
			movieFileVO.setFileName(fileName);
			movieFileVO.setOriName(file.getOriginalFilename());
			movieFileVO.setMovieNum(movieVO.getMovieNum());
			
			if("mp4".equals(str.toLowerCase())) {	
				movieFileVO.setStatus(1);
				movieFileVO.setDetail(details[j]);
				j++;
			} else {
				
				movieFileVO.setStatus(2);
				movieFileVO.setDetail(null);
			}
			result = movieFileRepository.movieFileInsert(movieFileVO);
			
			
		}
		
		
			
		
		
		return result;
	}
	
	public int posterUpdate(MultipartFile posterImg, String posterNum) throws Exception{
		File fi = pathGenerator.getUseClassPathResource(filePath);
		String posterName=fileManager.saveFileCopy(posterImg, fi);
		MovieFileVO updateFileVO = new MovieFileVO();
		updateFileVO.setFileName(posterName);
		updateFileVO.setFileNum(Integer.parseInt(posterNum));
		return movieFileRepository.movieFileUpdate(updateFileVO);
	}
	
	public int imageDelete(MovieFileVO movieFileVO) throws Exception{
		return movieFileRepository.imageDelete(movieFileVO);
	}
	
	public int viewUp(MovieVO movieVO) throws Exception{
		return movieRepository.viewUp(movieVO);
	}
	
	public long ranking(MovieVO movieVO) throws Exception{
		return movieRepository.ranking(movieVO);
	}

}
