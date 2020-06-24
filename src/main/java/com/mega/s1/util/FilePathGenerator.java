package com.mega.s1.util;

import java.io.File;

import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Component;

@Component
public class FilePathGenerator {
 
	 
	public File getUseClassPathResource(String path) throws Exception{
		
		String defaultPath = "static";
		
		ClassPathResource classPathResource = new ClassPathResource(defaultPath);
		
		File file = classPathResource.getFile();
		
		file = new File(file, path);
		
		if(!file.exists()) {
			file.mkdirs();
		}
		
		System.out.println(file.getAbsolutePath());
		
		return file;
		
	}
	
}
