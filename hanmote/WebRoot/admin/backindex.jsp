<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>汉默特系统首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="">
	<link rel="stylesheet" type="text/css" href="css/register.css">
	<link rel="stylesheet" type="text/css" href="css/dialog.css"/>
	
	<link rel="stylesheet" href="easyui/themes/default/easyui.css">
	<link rel="stylesheet" href="easyui/themes/icon.css">
	<link rel="stylesheet" href="css/backindex.css">
	<link rel="stylesheet" href="css/reset.css">
	
	<script type="text/javascript" src="easyui/jquery.min.js"></script>   
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script> 
  </head>
  
 <body class="easyui-layout">
	<div class="topBox" data-options="region:'north',border:false">
		<div class="topLeft">
			<a href="">
				<img src="images/logo2.png" alt="logo" title="系统首页"/>
			</a>
		</div>
		<ul class="functionNav">
			<li>
				<a href="" class="selected">
					<img src="images/back/icon01.png" alt="功能1"/>
					<h2 class="functionFont">功能1</h2>
				</a>
			</li>
			<li>
				<a href="">
					<img src="images/back/icon02.png" alt="功能1"/>
					<h2 class="functionFont">功能2</h2>
				</a>
			</li>
			<li>
				<a href="">
					<img src="images/back/icon03.png" alt="功能1"/>
					<h2 class="functionFont">功能3</h2>
				</a>
			</li>
			<li>
				<a href="">
					<img src="images/back/icon04.png" alt="功能1"/>
					<h2 class="functionFont">功能4</h2>
				</a>
			</li>
			<li>
				<a href="">
					<img src="images/back/icon05.png" alt="功能1"/>
					<h2 class="functionFont">功能5</h2>
				</a>
			</li>
			<li>
				<a href="">
					<img src="images/back/icon06.png" alt="功能1"/>
					<h2 class="functionFont">功能6</h2>
				</a>
			</li>
		</ul>
		<div class="topRight">
			<ul>
				<li><a href="">首页</a></li>
				<li><a href="">帮助</a></li>
				<li><a href="">退出</a></li>
			</ul>
			<div class="userDiv">
				<span>${userName}</span>
				<i>消息</i>
				<b>0</b>
			</div>
		</div>
	</div>
	<div class="leftBox" data-options="region:'west',split:true">
		<span class="functionico"></span>功能模块
		<dl class="leftMenu">
			<dd>
				<div class="title">
					<span><img src="images/back/leftico01.png" alt=""></span>供应商信息管理
					<ul class="menuson">
						<li class="open">
							<div class="header">
								<cite></cite>
								<a href="javascript:void(0)" >基本信息</a>
								<i></i>
							</div>
							<ul class="submenus">
								<li><a href="javascript:void(0)" onclick="change('companyinfo.jsp')">组织信息</a></li>
								<li><a href="javascript:void(0)" onclick="change('financeInfo.jsp');">财务</a></li>
								<li><a href="javascript:void(0)" onclick="change('saleInfo.jsp');">销售</a></li>
								<li><a href="javascript:void(0)" onclick="change('technologyInfo.jsp');">技术</a></li>
								<li><a href="javascript:void(0)" onclick="change('qualityInfo.jsp');">质量</a></li>
								<li><a href="javascript:void(0)" onclick="change('capacityInfo.jsp');">产能</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</dd>
			<dd>
				<div class="title">
					<span><img src="images/back/leftico01.png" alt=""></span>文件管理
					<ul class="menuson">
						<li class="open">
							<div class="header">
								<cite></cite>
								<a href="javascript:void(0)" onclick="change('fileupdate.jsp');">文件上传/下载</a>
								<i></i>
							</div>
						</li>
						<!--<li class="open">
							<div class="header">
								<cite></cite>
								<a href="fileupdate.jsp" >文件下载</a>
								<i></i>
							</div>
						</li>  -->
					</ul>
				</div>
			</dd>
			<dd>
				<div class="title">
					<span><img src="images/back/leftico01.png" alt=""></span>供应商管理
					<ul class="menuson">
						<li class="open">
							<div class="header">
								<cite></cite>
								<a href="javascript:void(0)" onclick="change('selfassassment.jsp');">自评</a>
								<i></i>
							</div>
						</li>
					</ul>
				</div>
			</dd>
			<dd></dd>
		</dl>
	</div>
	<div data-options="region:'south',border:false" style="height:30px;background:#F0F9FD;padding:10px;">
		<p class="bq">版权所有 武汉汉默特公司</p>
	</div>
	<div data-options="region:'center'" style="width:150px;height:1200px;">
		<div class="place">
			<span>位置：</span>
			<ul class="placeul">
				<li><a href="#">系统首页</a></li>
			</ul>
		</div>
		<div class="maindiv">
			<div class="maininfo">
				<input id="items" type="hidden" name="items" value="${items}"/>
   				<input id="isSaved" type="hidden" name="isSaved" value="${isSaved}"/>
    			<div id="frmContent" class="frmContent hg750">
					
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
			</div>
		</div>
	</div>
</body>
  <script type="text/javascript" src="js/jquery.simplemodal.1.4.4.min.js"></script>
  <script type="text/javascript">
$(function(){
	//导航切换
	$(".menuson .header").click(function(){
		var $parent = $(this).parent();
		$(".menuson>li.active").not($parent).removeClass("active open").find('.submenus').hide();
		
		$parent.addClass("active");
		if(!!$(this).next('.submenus').size()){
			if($parent.hasClass("open")){
				$parent.removeClass("open").find('.submenus').hide();
			}else{
				$parent.addClass("open").find('.submenus').show();	
			}
			
			
		}
	});
	
	// 三级菜单点击
	$('.submenus li').click(function(e) {
        $(".submenus li.active").removeClass("active");
		$(this).addClass("active");
    });
	
	$('.title').click(function(){
		//var $ul = $(this).next('ul');
		//$('dd').find('.menuson').slideUp();
		//if($ul.is(':visible')){
		//	$(this).next('.menuson').slideUp();
		//}else{
		//	$(this).next('.menuson').slideDown();
		//}
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
	var items = $('#items').val();
    change(items);
	showSucc();
	
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
	$("#isSaved").val("");
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
	$('#frmContent').load(url,null,function(){
		//$('#placeStr').val('财务');
	});
}
  </script>
</html>
