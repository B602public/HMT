<%@ page language="java" pageEncoding="GBK"%>
<link rel="stylesheet" type="text/css" href="css/backindex.css">
<link rel="stylesheet" type="text/css" href="css/dialog.css"/>
<link rel="stylesheet" href="easyui/themes/default/easyui.css">
<link rel="stylesheet" href="easyui/themes/icon.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>   
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script> 

<div class="formtitle1"><span id="placeStr" >产能</span></div>
 <form id="addCompanyInfo" name="addCompanyInfo" action="CapacityInfoServlet" method="post">

	    <div class="frmBox" >
	    <div  class="regLine hg300">
	    	<div class="rowTitle">生产基础设备</div>
	        <div class="row1 wd120"><span style="color:red;">*</span>直接生产人员总数</div>
	        <div class="row2"><input class="must"  type="text" name="productManNum" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
	        <div class="row1 wd120">占地面积</div>
	        <div class="row2"><input type="text" name="areaSquare" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120">厂房面积</div>			
			<div class="row2"><input type="text" name="workshopSquare" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120">厂房使用率(%)</div>
	        <div class="row2"><input type="text" name="workshopUseRate" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120">内部仓库情况</div>			
			<div class="row2"><input type="text" name="internalWarehouse" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120">内部仓库面积</div>
	        <div class="row2"><input type="text" name="warehouseSquare" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120">运输方式</div>			
			<div class="row2"><input type="text" name="transpotWay" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120">运输距离(km)</div>
	        <div class="row2"><input type="text" name="transpotDistance" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120">运输时间</div>			
			<div class="row2"><input type="text" name="transpotTime" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120">中转库名称</div>
	        <div class="row2"><input  type="text" name="transferName" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120">天然气用量</div>			
			<div class="row2"><input  type="text" name="gasVolume" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120">用电负荷</div>
	        <div class="row2"><input type="text" name="electryVolume" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120">是否租用发电机</div>			
			<div class="row2"><input type="text" name="isRent" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120">发电能力(kv)</div>
	        <div class="row2"><input type="text" name="electricPower" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
	    </div>
	    <div  class="regLine hg100">
	    	<div class="rowTitle">产品/产能</div>
	        <div class="row1 wd120"><span style="color:red;">*</span>主要产品名称</div>
	        <div class="row2"><select name="productName" class="sellen154 must"><option>物料1</option><option>物料2</option><option>物料3</option><option>物料4</option></select></div>
	        <div class="row1 wd120"><span style="color:red;">*</span>年供应量</div>
	        <div class="row2"><input class="must"  type="text" name="annualSupply" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>设备型号</div>			
			<div class="row2"><input class="must"  type="text" name="productID" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"><span style="color:red;">*</span>所占设备负荷</div>
	        <div class="row2"><input class="must"  type="text" name="load" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
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