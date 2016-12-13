<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/backindex.css">
<link rel="stylesheet" type="text/css" href="css/dialog.css"/>
<link rel="stylesheet" href="easyui/themes/default/easyui.css">
<link rel="stylesheet" href="easyui/themes/icon.css">
<link rel="stylesheet" href="plupload/queue/css/jquery.plupload.queue.css" type="text/css"></link>
<link href="bootstrap/easyui.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="plupload/plupload.js"></script>
<script type="text/javascript" src="plupload/plupload.html4.js"></script>
<script type="text/javascript" src="plupload/plupload.html5.js"></script>
<script type="text/javascript" src="plupload/plupload.flash.js"></script>
<script type="text/javascript" src="plupload/zh_CN.js"></script> 
<script type="text/javascript" src="plupload/queue/jquery.plupload.queue.js"></script>

</head> 
<body>
 	<div class="formtitle1"><span id="placeStr" >供应商自评</span></div>
 	<form id="self_file_form" method="post" enctype="multipart/form-data">
	    <div class="frmBox">
	   
	    <div  class="regLine hg500"  >
		    <div style="margin-left:20px;margin-top:20px;margin-bottom:10px;width:90%;height:182px;line-height:182px;background:url(images/content.jpg) no-repeat;">
			       <!--  <div class='titleLeft'></div>
			       <div class='titleMiddle'><font>[*]</font> <a hidefocus='true' href='javascript:void(0)' target='_blank'>基本介绍</a></div>
			       <div class='titleRight'></div>-->
		    </div>
	        <div class="row2" style="margin:30px;">
	        	<img src="images/left/icdoc.gif"/>
	        	<a href="javascript:void(0)" onclick="downloadFile('附件1-潜在供应商简版评估模型.doc')">附件1-潜在供应商简版评估模型.doc</a>
	        </div>
	    	<div class="rowTitle" style="clear:both;margin-left:30px;" >
	    		<!-- <span>上传自评</span> -->
	    		<input ></input>
	    		<input type="button" value="上传自评..."></input>
	    		<!-- <a href="javascript:void(0);" onclick="makerUpload(false);" class="upload"></a> -->
	    	</div>
	    	<div class="rowTitle" style="clear:both;margin-left:30px;" >
	    		<span style="font-size:16px;font-family:'宋体';font-weight:normal;">或发送到邮箱：</span>
	    		<a href="javascript:void(0);" onclick="makerUpload(false);" style="font-weight:normal">wangtg@hanmote.com</a>
	    	</div>
	        <!-- 
	      <div id="fileUploadTabs" class="easyui-tabs"
		style="width: 550px; height: 400px;" onSelect="tabChange">
		<div id="uploader" title="文件上传" closable="false"
			style="padding: 10px;">&nbsp;</div>
		<div title="文件管理" style="padding: 10px;"
			style="width:550px; height:400px;" id="managerFile">
			<table id="fileUploadTable" class="easyui-datagrid"
				style="width: 520px; height: 280px;" pageSize="50"
				url="UploaderServlet?queryFileList" fitColumns="true">
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
		
	        <input type="text" name="upload" class="easyui-filebox" data-options="prompt:'选择文件...',buttonText:'选择文件'"  style="width:300px;" />
	    	<input type="submit" name="g" class="easyui-button" value="上传" ></input>
	    -->
	        <div class="clear"></div>
	        
	        <div class="dec" style="font-size:14px; margin:80px 30px;padding-top:10px;">
	        	<p style="line-height:14px;">说明：尊敬的用户，您可以先下载附件1-潜在供应商的简版评估模板.doc，填写完毕之后可以选择上传自评文档或发送到我们的邮箱。我们将第一时间处理贵公司的信息，及时联系贵公司。</p>
	        </div>
	    </div>
		</div>
	
	<!--
	<div id="basic-dialog-warn">
	 
	<div class="box-title show"><h2>提示</h2></div>  
	<div class="box-main">
		<div class="tips">      
			<span class="tips-ico">
				<span id="ico" class="ico-ok"></span>
			</span>      
			<div class="tips-content">        
				<div id ="tipsContent" class="tips-title">保存成功</div>        
				<div class="tips-line"></div>     
			</div>    
		</div>
		<div class="box-buttons"><button type="button" class="simplemodal-close">关 闭</button></div>
	</div>
	</div>--> 
	<input type="hidden" value="${fileUploadSucc}"/>
	<input type="hidden" value="${fileUploadSucc}"/>
    </form>
    
</body>
<script type="text/javascript" >
    $(function(){
    	var isSucc = $('#fileUploadSucc').val();
    	if(isSucc=='success'){
    		$('#ico').attr('class','ico-ok');
			$('#tipsContent').html('上传成功');
			$('#basic-dialog-warn').modal();
    	}
    });

$('.saveBtn').click(function(){
	if(!checkMustItems()){
		$('#ico').attr('class','ico-warn');
		$('#tipsContent').html('带红色*为必填项');
		$('#basic-dialog-warn').modal();
		return false;
	}else{
		$('#addCompanyInfo').submit();
	}
	});
function checkMustItems(){
	var items = [];
	$('.must').each(function(){
		items.push($(this).val());
	});
	for(var i = 0;i < items.length;i++){
		if(items[i]==""){
			return false;
		}
	}
	return true;
}
/**
 * 创建上传窗口 公共方法
 * @param chunk 是否分割大文件
 * @param callBack 上传成功之后的回调
 */
function Uploader(chunk,callBack){
	var addWin = $('<div style="overflow: hidden;"/>');
	var upladoer = $('<iframe/>');
	upladoer.attr({'src':'<%=basePath%>file/upload_input',width:'100%',height:'100%',frameborder:'0',scrolling:'no'});
	addWin.window({
		title:"上传自评",
		height:400,
		width:550,
		minimizable:false,
		modal:true,
		collapsible:false,
		maximizable:false,
		resizable:false,
		content:upladoer,
		onClose:function(){
			var fw = GetFrameWindow(upladoer[0]);
			var files = fw.files;
			$(this).window('destroy');
			callBack.call(this,files);
		},
		onOpen:function(){
			var target = $(this);
			setTimeout(function(){
				var fw = GetFrameWindow(upladoer[0]);
				fw.target = target;
			},100);
		}
	});
}

/**
 * 根据iframe对象获取iframe的window对象
 * @param frame
 * @returns {Boolean}
 */
function GetFrameWindow(frame){
	return frame && typeof(frame)=='object' && frame.tagName == 'IFRAME' && frame.contentWindow;
}
 
function makerUpload(chunk){
 Uploader(chunk,function(files){
	 if(files && files.length>0){
		 $("#res").text("成功上传："+files.join(","));
	 }
 });
}

/**
*<p>下载文件逻辑</p>
*/
function downloadFile(filename) {
	$.messager.confirm('确认', '您确定需要下载文件？', function(r) {
		//使用iframe实现稳健下载
		var downloadframe = $('<iframe style="display:none"/>');
		var url = encodeURI("<%=basePath%>file/download?fileName=" + filename);
		downloadframe.attr({'src': url});
		$(".frmBox").append(downloadframe);
	});
}

$('#self_file_form').form({
	url:'${pageContext.request.contextPath}/file/upload',
	success:function(data){
		var obj = jQuery.parseJSON(data);
		
	}
});
</script>
</html>