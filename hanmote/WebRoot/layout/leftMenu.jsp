<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<head>
	
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>	
	<script type="text/javascript">
	$(".leftsidebar_box dt").css({"background-color":"#3992d0"});
	$(".leftsidebar_box dt img").attr("src","images/left/select_xl01.png");
	$(function(){
		$(".leftsidebar_box dd").hide();
		$(".leftsidebar_box dt").click(function(){
			$(".leftsidebar_box dt").css({"background-color":"#3992d0"});
			$(this).css({"background-color": "#317eb4"});
			$(this).parent().find('dd').removeClass("menu_chioce");
			$(".leftsidebar_box dt img").attr("src","images/left/select_xl01.png");
			$(this).parent().find('img').attr("src","images/left/select_xl.png");
			$(".menu_chioce").slideUp(); 
			$(this).parent().find('dd').slideToggle();
			$(this).parent().find('dd').addClass("menu_chioce");
		});
		
	});
	
	function registerinfo(path){
		var $obj = $(this);
		addpath(path,$obj);
	};
	function addpath(path,$obj) {
		var pre = "<li class=\"linkpath\"><img class=\"rightarrow\" src=\"images/rightarrow.gif\"/><a href=\"javascript:void(0)\" onclick=\"registerinfo('"+path+"')\">";
		var last = "</a></li>";
		if(!findRepeat(path)){
			if($(".infobox").find('li').length<3){
				$(".infobox").append(pre + path + last);
			}else{
				$('.infobox').find('li').last().remove();
				$(".infobox").append(pre + path + last);
			}
		}
		if(path=='组织信息'){
			location.href='organizationInfo_addInput';
		}
		else if(path=='财务'){
			changeframe("default/addFinanceInfo.jsp");
		}
		else if(path=='质量')
			changeframe("default/addQualityInfo.jsp");
		else if(path=='技术')
			changeframe("default/addTechnologyInfo.jsp");
		else if(path=='销售')
			changeframe("default/addSaleInfo.jsp");
		else {
			location.href='capacityInfo_addInput';
		}	
	};

	function selfevaluate(path){
		var pre = "<li class=\"linkpath\"><img class=\"rightarrow\" src=\"images/rightarrow.gif\"/><a href=\"javascript:void(0)\" onclick=\"registerinfo('"+path+"')\">";
		var last = "</a></li>";
		if(!findRepeat(path)){
			if($(".infobox").find('li').length<3){
				$(".infobox").append(pre + path + last);
			}else{
				$('.infobox').find('li').last().remove();
				$(".infobox").append(pre + path + last);
			}
		}
		changeframe("default/fileupdate.jsp");	
	}
	function linkTo(path,value){
		var pre = "<li class=\"linkpath\"><img class=\"rightarrow\" src=\"images/rightarrow.gif\"/><a href=\"javascript:void(0)\" onclick=\"registerinfo('"+path+"')\">";
		var last = "</a></li>";
		if(!findRepeat(path)){
			if($(".infobox").find('li').length<3){
				$(".infobox").append(pre + path + last);
			}else{
				$('.infobox').find('li').last().remove();
				$(".infobox").append(pre + path + last);
			}
		}
		changeframe("default/"+value+".jsp");	
	}

	function findRepeat(path){
		var arr = $(".infobox").find('li');
		var flag = false;
		arr.each(function(){
			var each = $(this).find('a').html();
			if(each == path){
				flag = true;
				return;
			}
		});
		return flag;
	};

	function changeframe(value) {
		$(".right").load(value);
	};
	</script> 
</head>
<div class="leftmenu">
 	<div class="leftsidebar_box">
		<div class="line"></div>
		<dl class="system_log">
			<dt onclick="linkTo('采购过程','sourcingprocess')">采购过程<img src="images/left/select_xl.png"/></dt>
		</dl>
		<dl class="source">
			<dt onclick="linkTo('供应商评估','supplierevaluate')">供应商评估<img src="images/left/select_xl.png"/></dt>
			<dd class="first_dd"><a href="javascript:void(0);" onclick="linkTo('公司简介','company')">公司简介</a></dd>
			<dd class="first_dd" ><a href="javascript:void(0);" onclick="linkTo('管理','manager')">管理</a></dd>
			<dd class="first_dd"><a href="javascript:void(0);" onclick="linkTo('环境','envir')">环境</a></dd>
			<dd class="first_dd"><a href="javascript:void(0);" onclick="linkTo('质量','quality')">质量</a></dd>
			<dd class="first_dd"><a href="javascript:void(0);" onclick="linkTo('物流','wuliu')">物流</a></dd>
			<dd class="first_dd"><a href="javascript:void(0);" onclick="linkTo('售后市场','shouhou')">售后市场</a></dd>
			<dd class="first_dd"><a href="javascript:void(0);" onclick="linkTo('能力','nengli')">能力</a></dd>
			<dd class="first_dd"><a href="javascript:void(0);" onclick="linkTo('产品开发','chanpin')">产品开发</a></dd>
			<dd class="first_dd"><a href="javascript:void(0);" onclick="linkTo('生产力','shenchanli')">生产力</a></dd>
			<dd class="first_dd"><a href="javascript:void(0);" onclick="linkTo('采购','caigou')">采购</a></dd>
		</dl>
		<dl class="channel">
			<dt onclick="linkTo('我们的需求','ourrequirements')">我们的需求<img src="images/left/select_xl.png" /></dt>
			<dd class="first_dd"><a href="javascript:void(0);" onclick="linkTo('关键元素程序','key')">关键元素程序</a></dd>
			<dd><a href="#" onclick="linkTo('付款的财务信息','payment')">付款的财务信息</a></dd>
		</dl>
		<dl class="cloud">
			<dt onclick="linkTo('环境','environment')">环境<img src="images/left/select_xl.png" /></dt>
			<dd class="first_dd"><a href="#" onclick="linkTo('达到','reach')" >达到</a></dd>
			<dd><a href="#" onclick="linkTo('IMDS报告/物质跟踪','imds')">IMDS报告/物质跟踪</a></dd>
		</dl>
	
		<dl class="syetem_management">
			<dt onclick="linkTo('企业社会责任','respon')">企业社会责任<img src="images/left/select_xl.png" /></dt>
			<dd class="first_dd"><a href="javascript:void(0)" onclick="linkTo('我们的行为准则','xingwei')">我们的行为准则</a></dd>
		</dl>
		
		<dl class="custom">
			<dt class="supplier">成为潜在供应商<img src="images/left/select_xl.png" /></dt>
			<dd ><a class="organization" href="organizationInfo_addInput">组织信息</a></dd>
			<dd class="first_dd"><a href="financeInfo_addInput" >财务</a></dd>
			<dd class="first_dd"><a href="saleInfo_addInput" >销售</a></dd>
			<dd class="first_dd"><a href="technologyInfo_addInput" >技术</a></dd>
			<dd class="first_dd"><a href="qualityInfo_addInput" >质量</a></dd>
			<dd class="first_dd"><a href="capacityInfo_addInput" >服务</a></dd>
		</dl>
		<dl class="statistics">
			<dt>供应商自评<img src="images/left/select_xl.png" /></dt>
			<dd class="first_dd"><a href="javascript:void(0)" onclick="selfevaluate('自评下载/上传')">自评下载/上传</a></dd>
		</dl>
	</div>
 </div>