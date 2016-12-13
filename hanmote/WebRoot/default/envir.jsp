
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>
<link rel="stylesheet" type="text/css" href="css/backindex.css">
<link rel="stylesheet" type="text/css" href="css/dialog.css"/>
<link href="bootstrap/easyui.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="plupload/plupload.js"></script>
<script type="text/javascript" src="plupload/plupload.html4.js"></script>
<script type="text/javascript" src="plupload/plupload.html5.js"></script>
<script type="text/javascript" src="plupload/plupload.flash.js"></script>
<script type="text/javascript" src="plupload/zh_CN.js"></script> 
<script type="text/javascript" src="plupload/queue/jquery.plupload.queue.js"></script>

<div class="formtitle1"><span id="placeStr" >环境</span></div>
 <div class="frmBox">
  <table class="tablelist">
    	<thead>
    	<tr>
    		<th>评价参数</th>
	        <th>评论</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <td>———环境管理体系</td>
        <td>应用程序和ISO 14001环境管理体系认证</td>
        </tr> 
        
        <tr>
        <td>———环境管理体系</td>
        <td>评价结果在自我评价的</td>
        
        </tr> 
        
        <tr>
        <td>———环境评估和产品</td>
        <td>评价结果在自我评价的</td>
        
        </tr> 
       	
       
       
        </tbody>
    </table>
    </div>
    
    <div id="basic-dialog-warn">
		<!-- 普通弹出层-->  
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
	</div>
    <script type="text/javascript">
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
function footAutoHeight(){
	if ($('.footLineGray').length != 0){	
		var footHeightDifference = document.documentElement.clientHeight - ($('.footLineGray').offset().top + 2 + $('.webFoot').height());
		if ( footHeightDifference > 0 ){
			$('#autoHeightDiv').css("height", footHeightDifference);
		}
	}
}
function regShowCheckThrough(obj, options){
	var regline_parent = obj.parent().parent(); // cache parent
	var reg_item5 = regline_parent.find('.item5');
	reg_item5.show();    //显示对勾
	regline_parent.find('.item4').hide();
	regline_parent.find('.item3').hide();
	if( options ){
		if( options.itemExtText ){
			reg_item5.text( options.itemExtText );
		}
	}
}
function showSucc()
{
	var r = $("#isSaved").val();
	
	if(r.indexOf("success")>=0){
		$('#ico').attr('class','ico-ok');
		$('#tipsContent').html('您的信息保存成功！');
		$('#basic-dialog-warn').modal();
	} else if(r.indexOf("fail")>=0){
		$('#ico').attr('class','ico-warn');
		$('#tipsContent').html('对不起，您的信息保存失败！');
		$('#basic-dialog-warn').modal();
	}
	$(".isSaved").val("");
}
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

function change(url){
	$('#frmContent').load(url,null,function(){});

}

/**
*<p>下载文件逻辑</p>
*/
function downloadFile(ids) {
	$.messager.confirm('确认', '您确定需要下载文件？', function(r) {
		//使用iframe实现稳健下载
		var downloadframe = $('<iframe style="display:none"/>');
		var url = encodeURI("<%=basePath%>/DownloadServlet?downFiles=" + ids);
		downloadframe.attr({'src': url});
		$(".frmBox").append(downloadframe);
	});
}
    </script>     
