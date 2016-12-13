package com.hanmote.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hanmote.entity.ReturnMsg;
import com.opensymphony.xwork2.ActionSupport;

@Controller("uploadAction")
@Scope("prototype")
public class UploadAction extends ActionSupport{
    
	private static final long serialVersionUID = 1L;

	private List<File> uploads;  
    
	private List<String> uploadFileName;

	private List<String> uploadContentType;

	private long maximumSize;

	private String allowedTypes;

	public List<File> getUpload() {
		return uploads;
	}

	public void setUpload(List<File> uploads) {
		this.uploads = uploads;
	}

	public List<String> getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(List<String> uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public List<String> getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(List<String> uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public long getMaximumSize() {
		return maximumSize;
	}

	public void setMaximumSize(long maximumSize) {
		this.maximumSize = maximumSize;
	}

	public String getAllowedTypes() {
		return allowedTypes;
	}

	public void setAllowedTypes(String allowedTypes) {
		this.allowedTypes = allowedTypes;
	}

	public String execute() throws Exception {
		// 取得文件上传路径（用于存放上传的文件）
		File uploadFile = new File(ServletActionContext.getServletContext()
				.getRealPath("upload"));
		ReturnMsg rm = new ReturnMsg();
		// 判断上述路径是否存在，如果不存在则创建该路径
System.out.println("file "+uploadFile.getAbsolutePath());
		if (!uploadFile.exists()) {
			uploadFile.mkdir();
		}

		if (uploads != null) {
			String[] allowedTypesStr = allowedTypes.split(",");
			// 将允许的文件类型列表放入List中
			List allowedTypesList = new ArrayList();
			for (int i = 0; i < allowedTypesStr.length; i++) {
				allowedTypesList.add(allowedTypesStr[i]);
			}

			// 判断上传文件的类型是否是允许的类型之一
			for (int i = 0; i < uploads.size(); i++) {
				if (!allowedTypesList.contains(uploadContentType.get(i))) {
					ServletActionContext.getServletContext().setAttribute(
							"errorMsg", "上传文件中包含非法文件类型");
					return "error";
				}
			}

			// 判断文件的大小
			for (int i = 0; i < uploads.size(); i++) {
				// 判断文件长度
				if (maximumSize < uploads.get(i).length()) {
					ServletActionContext.getServletContext().setAttribute(
							"errorMsg", uploadFileName.get(i) + "文件过大");
					return "error";
				}
			}

			for (int i = 0; i < uploads.size(); i++) {
				// 第一种文件上传的读写方式
				FileInputStream input = new FileInputStream(uploads.get(i));
				FileOutputStream out = new FileOutputStream(uploadFile + "\\"
						+ uploadFileName.get(i));

				try {
					byte[] b = new byte[1024];
					int m = 0;
					while ((m = input.read(b)) > 0) {
						out.write(b, 0, m);
					}
				} catch (Exception e) {
					e.printStackTrace();
					ServletActionContext.getServletContext().setAttribute(
							"errorMsg",
							uploadFileName.get(i) + "上传过程中发生未知错误，请联系管理员。上传失败！");
					return "error";
				} finally {
					input.close();
					out.close();
					// 删除临时文件
					uploads.get(i).delete();
				}
			}
			return "success";
		} else {
			ServletActionContext.getServletContext().setAttribute("errorMsg",
					"请选择上传文件");
			return "error";
		}
	}
	
	public String input(){
		return "success";
	}
}
