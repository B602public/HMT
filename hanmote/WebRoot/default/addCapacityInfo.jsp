<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<link rel="stylesheet" type="text/css" href="css/dialog.css"/>
	<link rel="stylesheet" type="text/css" href="css/reset.css" />
	<link rel="stylesheet" type="text/css" href="css/common.css" />
	<link rel="stylesheet" type="text/css" href="css/index.css" />
	<link rel="stylesheet" type="text/css" href="css/backindex.css">
	<link rel="stylesheet" href="easyui/themes/default/easyui.css">
	<link rel="stylesheet" href="easyui/themes/icon.css">
	<script type="text/javascript" src="easyui/jquery.min.js"></script> 
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script> 
</head>
 <body>
<div class="pageContainer">
		<jsp:include page="../layout/header.jsp" ></jsp:include>
		 <div class="navinfo">
			<jsp:include page="../layout/navinfo.jsp" />
		 </div>
		 <div class="main">
			<%@ include file="../layout/leftMenu.jsp" %>
		<div class="right">
<div class="formtitle1"><span id="placeStr" >产能</span></div>
 <form name="addCapacityInfo" action="capacityInfo_add" method="post">
	<div class="frmBox" >
	    <div  class="regLine hg300">
	    	<div class="rowTitle">生产基础设备</div>
	        <div class="row1 wd120"><span style="color:red;">*</span>直接生产人员总数</div>
	        <div class="row2"><input class="must"  type="text" name="peopleNum" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
	        <div class="row1 wd120">占地面积</div>
	        <div class="row2"><input type="text" name="floorSpace" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120">厂房面积</div>			
			<div class="row2"><input type="text" name="factoryArea" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120">厂房使用率(%)</div>
	        <div class="row2"><input type="text" name="factoryRatio" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120">内部仓库情况</div>			
			<div class="row2"><input type="text" name="warehouseSituation" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120">内部仓库面积</div>
	        <div class="row2"><input type="text" name="warehouseArea" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120">运输方式</div>			
			<div class="row2"><input type="text" name="transportType" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120">运输距离(km)</div>
	        <div class="row2"><input type="text" name="transportDistance" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120">运输时间</div>			
			<div class="row2"><input type="text" name="transpotTime" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120">中转库名称</div>
	        <div class="row2"><input  type="text" name="transitName" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120">天然气用量</div>			
			<div class="row2"><input  type="text" name="naturalgasConsumption" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120">用电负荷</div>
	        <div class="row2"><input type="text" name="electricityConsumption" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120">是否租用发电机</div>			
			<div class="row2"><input type="text" name="isRentAlternator" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120">发电能力(kv)</div>
	        <div class="row2"><input type="text" name="electricPowerGeneration" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
	    </div>
	    <div id="productdiv"  class="regLine hg100">
	    	<div class="rowTitle">产品/产能
	    	<a id="addProduct" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" onclick="addProductDiv()" ></a>
	    	<a id="removeProduct" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" onclick="removeProductDiv()"></a>
	    	</div>
	    	<div class="product">
		    	<div class="row1 wd120"><span style="color:red;">*</span>主要产品名称</div>
		        <div class="row2"><select name="productName" class="sellen154 must"><option>物料1</option><option>物料2</option><option>物料3</option><option>物料4</option></select></div>
		        <div class="row1 wd120"><span style="color:red;">*</span>年供应量</div>
		        <div class="row2"><input class="must"  type="text" name="annualSupply" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
				<div class="cl"></div>
				<div class="row1 wd120"><span style="color:red;">*</span>设备型号</div>			
				<div class="row2"><input class="must"  type="text" name="equipmentType" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
				<div class="row1 wd120"><span style="color:red;">*</span>所占设备负荷</div>
		        <div class="row2"><input class="must"  type="text" name="loadRatio" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
				<div class="cl"></div>
				<div class="row1 wd120"><span style="color:red;">*</span>主要产品名称</div>
		        <div class="row2"><select name="productName" class="sellen154 must"><option>物料1</option><option>物料2</option><option>物料3</option><option>物料4</option></select></div>
		        <div class="row1 wd120"><span style="color:red;">*</span>年供应量</div>
		        <div class="row2"><input class="must"  type="text" name="annualSupply" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
				<div class="cl"></div>
				<div class="row1 wd120"><span style="color:red;">*</span>设备型号</div>			
				<div class="row2"><input class="must"  type="text" name="equipmentType" maxlength="20" onKeyDown="" /></div>
				<div class="row1 wd120"><span style="color:red;">*</span>所占设备负荷</div>
		        <div class="row2"><input class="must"  type="text" name="loadRatio" maxlength="20" onKeyDown="" /></div>
				<div class="cl"></div>
	    	</div>
	    </div>
		</div>
	<input type="hidden" id="saveCapacitySucc" value="${rm.success}"/>
    <input class="saveBtn" type="submit" value="保存" style="margin-top:10px;margin-left:270px;"/>
    </form>
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
		</div>
	</div>
</div>
    <script type="text/javascript" src="js/jquery.simplemodal.1.4.4.min.js"></script>
    <script type="text/javascript">
    $(function(){
    	openMenu('.supplier');
		showSucc();
    });
	$('.saveBtn').click(function(){
		if(!checkMustItems()){
			$('#ico').attr('class','ico-warn');
			$('#tipsContent').html('带红色*为必填项');
			$('#basic-dialog-warn').modal();
			return false;
		}else{
			$('#addCapacityInfo').submit();
		}
	});
	function openMenu(obj){
    	$(".leftsidebar_box dt").css({"background-color":"#3992d0"});
		$(obj).css({"background-color": "#317eb4"});
		$(obj).parent().find('dd').removeClass("menu_chioce");
		$(".leftsidebar_box dt img").attr("src","images/left/select_xl01.png");
		$(obj).parent().find('img').attr("src","images/left/select_xl.png");
		$(".menu_chioce").slideUp(); 
		$(obj).parent().find('dd').show();
		$(obj).parent().find('dd').addClass("menu_chioce");
    }
	function showSucc(){
		var r = $("#saveCapacitySucc").val();
		if(r == "true"){
			$('#ico').attr('class','ico-ok');
			$('#tipsContent').html('您的信息保存成功！');
			$('#basic-dialog-warn').modal();
		} else if(r == "false"){
			$('#ico').attr('class','ico-warn');
			$('#tipsContent').html('对不起，您的信息保存失败！');
			$('#basic-dialog-warn').modal();
		}
		$("#saveCapacitySucc").val('');
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
	
	function addProductDiv(){
		//获取contact的第一个元素且复制
		var $div = $('#productdiv >.product').first().clone();
    	$('#productdiv >.product').last().after($div);	
    	var curheight = $('#productdiv').height();
    	$('#productdiv').height(curheight+100);
	}
	
	function removeProductDiv(){
		var curheight = $('#productdiv').height();
		if($('#productdiv > div').length <= 2){
			$('#ico').attr('class','ico-warn');
			$('#tipsContent').html('产品不能为空！');
			$('#basic-dialog-warn').modal();
			return;
		}
	    $('#productdiv >.product').last().remove();
    	$('#productdiv').height(curheight-100);
	}
</script>