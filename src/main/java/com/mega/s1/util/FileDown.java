package com.mega.s1.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

import com.mega.s1.board.BoardFileVO;

@Component
public class FileDown extends AbstractView{

	@Autowired
	private ResourceLoader resourceLoader;
	
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String path = "classpath:/static/";
		path = path + model.get("path");
		
		BoardFileVO boardFileVO = (BoardFileVO)model.get("fileVO");
		
		path = path + boardFileVO.getFileName();
		
		File file = resourceLoader.getResource(path).getFile();
		
		response.setCharacterEncoding("UTF-8");
		response.setContentLengthLong(file.length());
		
		String fileName = URLEncoder.encode(boardFileVO.getOriName(), "UTF-8");
		
		response.setHeader("Content-Disposition", "attachment;filename=\""+fileName+"\"");
		response.setHeader("Content-Transfer-Encoding", "binary");
		
		FileInputStream fi = new FileInputStream(file);
		OutputStream os = response.getOutputStream();
		
		FileCopyUtils.copy(fi, os);
		
		os.close();
		fi.close();
		
	}
	
}
