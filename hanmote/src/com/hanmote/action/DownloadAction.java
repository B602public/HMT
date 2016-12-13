package com.hanmote.action;

import java.io.InputStream;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;


@Controller("downloadAction")
@Scope("prototype")
public class DownloadAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	
	//InputStream命名 与struts文件中的inputName相同
	private InputStream inStream;  
    
    private String fileName;  
    
    
    public InputStream getInStream() {

    	//tomcat服务器根目录
    	inStream = ServletActionContext.getServletContext().getResourceAsStream("/upload/" + fileName); 
    	
    	return inStream; 
	}

	public void setInStream(InputStream inStream) {
		this.inStream = inStream;
	}

  
    public String getFileName() {  
        return fileName;  
    }  
  
    public void setFileName(String fileName) {  
        this.fileName = fileName;  
    }  
  
    public String execute() throws Exception {
    	try{
    		getInStream();
    	} catch(Exception e){
    		e.printStackTrace();
    	}
        return "success";  
    }  
}
