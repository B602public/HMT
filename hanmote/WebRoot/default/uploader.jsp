<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.hanmote.util.UploadUtil"%>
<%
	//获取配置参数
	UploadUtil util = UploadUtil.getInstance(application.getRealPath("/"));
	Map<String,String> uploadParams = util.getUploadParam();
	//文档类型标题
	String docTitle = "文档（" +uploadParams.get("allow-doc") +"）";
	//文档类型
	String docType = uploadParams.get("allow-doc");
	//图片类型标题
	String imageTitle = "图片（" +uploadParams.get("allow-image") + "）";
	//图片类型
	String imageType = uploadParams.get("allow-image");
	//文件可接受的最大尺寸
	String max_size = uploadParams.get("allow-size");
	// 运行环境优先级
	String runtimes = uploadParams.get("runtimes");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>上传自评</title>
<link rel="stylesheet" href="../plupload/queue/css/jquery.plupload.queue.css" type="text/css"></link>
<link href="../bootstrap/easyui.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="../easyui/jquery.min.js"></script>
<script type="text/javascript" src="../easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../plupload/plupload.js"></script>
<script type="text/javascript" src="../plupload/plupload.html4.js"></script>
<script type="text/javascript" src="../plupload/plupload.html5.js"></script>
<script type="text/javascript" src="../plupload/plupload.flash.js"></script>
<script type="text/javascript" src="../plupload/zh_CN.js"></script>
<script type="text/javascript" src="../plupload/queue/jquery.plupload.queue.js"></script>
<body style="padding: 0; margin: 0;">
	<div id="fileUploadTabs" class="easyui-tabs"
		style="width: 550px; height: 400px;" onSelect="tabChange">
		<div id="uploader" title="文件上传" closable="false"
			style="padding: 10px;">&nbsp;</div>
		<div title="文件管理" style="padding: 10px;"
			style="width:550px;height:400px;" id="managerFile">
			<table id="fileUploadTable" class="easyui-datagrid"
				style="width: 520px; height: 280px;" pageSize="50"
				url="file/upload?f=queryFileList&moudleId=123&funcId=1111&dataId=111111" fitColumns="true">
				<thead>
					<tr>
						<th field="selected" width="30px" checkbox="true" />
						<th field="fileName" width="200px">文件名</th>
						<th field="fileType" width="80px">文件类型</th>
						<th field="fileSizeKb" width="80px">文件大小(Kb)</th>
						<th field="createDateShow" width="130px">上传时间</th>
					</tr>
				</thead>
			</table>
			<div>
				<button onclick="javascript:downloadFile()" >下载</button>
				<button onclick="javascript:removeFile()">删除</button>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		// 上传成功文件数组
		var files = [];
		// 上传出错文件数组
		var errors = [];
		// 是否分多次上传
		var chunk = false;
		// 最大文件
		var max_file_size = '<%=max_size%>'+'m';
		// 过滤DOC类型
		var docFilter = {
			title : "<%=docTitle%>",
			extensions : "<%=docType%>"
		};
		// 过滤Image类型
		var imageFilter = {
				title : "<%=imageTitle%>",
				extensions : "<%=imageType%>"
			};
		
		$('#fileUploadTabs').tabs({
			onSelect : function(title, index) {
				if (index == 1) {
					tabChange(title, index);
				}
			}
		});
		
		$("#uploader").pluploadQueue(
				$.extend({
					runtimes : '<%=runtimes%>',
					url : 'file/upload?f=uploader&moudleId=123&funcId=1111&dataId=111111',
					max_file_size : max_file_size,
					//设置上传字段的名称。默认情况下被设置为文件
					file_data_name : 'file',
					unique_names : true,
					multiple_queues : true,
					rename:true,
					filters : [ docFilter, imageFilter ],
					flash_swf_url : 'plupload/plupload.flash.swf',
					init : {
						//文件上传成功的时候触发
						FileUploaded : function(uploader, file, response) {
							if (response.response) {
								var rs = $.parseJSON(response.response);
								if (rs.status) {
									files.push(file.name);
								} else {
									errors.push(file.name);
								}
							}
						},
						//当队列中所有文件被上传完时触发
						UploadComplete : function(uploader, fs) {
							var e = errors.length ? ",失败" + errors.length
									+ "个(" + errors.join("、") + ")。" : "。";
							alert("上传完成！共" + fs.length + "个。成功" + files.length
									+ e);
						},
						//上传出错的时候触发
						Error : function(l, o) {
							var m = o.file, n;
							if(m){
								n = o.message;
								if(o.details){
									n += " (" + o.details + ")";
								}
								if (o.code == plupload.FILE_SIZE_ERROR) {
									$.messager.alert('提示', m.name+'过大，上传限制：'+max_file_size+'m', 'info');
								}
								if (o.code == plupload.FILE_EXTENSION_ERROR) {
									alert("Error: Invalid file extension: "+ m.name);
								}
								m.hint = n;
								c("#" + m.id).attr("class","plupload_failed").find("a").css("display","block").attr("title", n);
								}
							}
						}
				}, (chunk ? {
					chunk_size : '1mb'
				} : {})));

		function tabChange() {
				$('#fileUploadTable').datagrid('load', {
					moudleId : '123',
					funcId : '1111',
					dataId : '111111'
				});
		}
		
		/**
		*<p>删除文件逻辑</p>
		*/
		function removeFile() {
			var row = $('#fileUploadTable').datagrid('getSelections');
			if (row) {
				$.messager.confirm('确认', '您确定需要删除该条记录吗？', function(r) {
					var ids = '';
					for ( var i = 0; i < row.length; i++) {
						if (i == row.length - 1) {
							ids += row[i].id;
						} else {
							ids += row[i].id + ',';
						}
					}
					if (r) {
						$.ajax({
							type : "POST",
							url : "UploaderServlet?f=remove",
							data : 'idList=' + ids,
							success : function(data) {
								try {
									var jsonstr = eval("(" + data + ")");
								} catch (e) {
									$.messager.alert('错误', data, 'error');
									return;
								}
								var flag = jsonstr.flag;
								if (flag == 'success') {
									$.messager.alert('提示', "删除成功", 'info');
									tabChange();
								} else {
									$.messager.alert('错误', "删除失败", 'error');
								}
							}
						});
					}
				});
			} else {
				$.messager.alert('错误', '请选择一条数据！', 'error');
			}
		}
		
		/**
		*<p>下载文件逻辑</p>
		*/
		function downloadFile() {
			var row = $('#fileUploadTable').datagrid('getSelections');
			if(row.length==0){
				return;
			}
			if (row){
				$.messager.confirm('确认', '您确定需要下载文件？', function(r) {
					//获取选中的数据
					var ids = '';
					for ( var i = 0; i < row.length; i++) {
						if (i == row.length - 1) {
							ids += row[i].id;
						} else {
							ids += row[i].id + ',';
						}
					}
					//使用iframe实现稳健下载
					var downloadframe = $('<iframe style="display:none"/>');
					var url = encodeURI("<%=basePath%>/DownloadServlet?downFiles=" + ids);
					downloadframe.attr({'src': url});
					$("#managerFile").append(downloadframe);
				});
			} else {
				$.messager.alert('错误', '请选择一条数据！', 'error');
			}
		}
	</script>
</body>
</html>
