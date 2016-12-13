<%@ page language="java" pageEncoding="GBK"%>
<link rel="stylesheet" type="text/css" href="css/backindex.css">
<link rel="stylesheet" type="text/css" href="css/dialog.css"/>
<link rel="stylesheet" href="easyui/themes/default/easyui.css">
<link rel="stylesheet" href="easyui/themes/icon.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>   
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script> 

<div class="formtitle1"><span id="placeStr" >质量</span></div>
 <form id="addCompanyInfo" name="addCompanyInfo" action="QualityInfoServlet" method="post">
	    <!-- 组织信息 -->
	    <div class="frmBox" >
	    <div  class="regLine hg200">
	    	<div class="rowTitle">质量/证书</div>
	        <div class="row1 wd120"><span style="color:red;">*</span>编号</div>
	        <div class="row2"><input class="must"  type="text" name="qid" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
	        <div class="row1 wd120"><span style="color:red;">*</span>专利编号</div>
	        <div class="row2"><input class="must"  type="text" name="patentID" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>专利名称</div>			
			<div class="row2"><input class="must"  type="text" name="patentName" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"><span style="color:red;">*</span>获得年份</div>
	        <div class="row2"><input class="must"  type="text" name="getYear" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>专利来源</div>			
			<div class="row2"><input class="must"  type="text" name="patentSource" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"><span style="color:red;">*</span>上传附件</div>
	        <div class="row2"><input class="must"  type="text" name="patentAttachment" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
		</div>
	    <div  class="regLine hg100">
	    	<div class="rowTitle">质量PPM</div>
	        <div class="row1 wd120"><span style="color:red;">*</span>年度</div>
	        <div class="row2"><input class="must"  type="text" name="ppmYear" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
	        <div class="row1 wd120"><span style="color:red;">*</span>客户名称</div>
	        <div class="row2"><input class="must"  type="text" name="customerName" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>客户退货DPPM</div>			
			<div class="row2"><input class="must"  type="text" name="DPPM" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"></div>
	        <div class="row2"></div>
			<div class="cl"></div>
	    </div>
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
	<input type="hidden" id="saveFinanceInfoSucc" value="${saveFinanceInfoSucc}"/>
    <input class="saveBtn" type="submit" value="保存" style="margin-top:10px;margin-left:270px;"/>
    </form>
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
function showSucc()
{
	var r = $("#saveCompanyInfoSucc").val();
	var r1 = $("#saveFinanceInfoSucc").val();
	if(r == "success"||r1 == "success"){
		$('#ico').attr('class','ico-ok');
		$('#tipsContent').html('您的信息保存成功！');
		$('#basic-dialog-warn').modal();
	} else if(r == "fail"||r1 == "fail"){
		$('#ico').attr('class','ico-warn');
		$('#tipsContent').html('对不起，您的信息保存失败！');
		$('#basic-dialog-warn').modal();
	}
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

  </script>