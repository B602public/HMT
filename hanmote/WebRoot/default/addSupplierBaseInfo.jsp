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
			<div class="formtitle1"><span id="placeStr" >组织信息</span></div>
  	<form id="addOrganizationInfo" action="organizationInfo_add" method="post">
	    <!-- 组织信息 -->
	    <div class="frmBox">
	    <div  class="regLine hg300">
	    	<div class="rowTitle">公司概况</div>
	        <div class="row1 wd120"><span style="color:red;">*</span>供应商中文名称</div>
	        <div class="row2"><input class="must" type="text" name="supplierChineseName" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
	        <div class="row1 wd120">供应商英文名称</div>
	        <div class="row2"><input type="text" name="supplierEnglishName" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120">企业性质</div>			
			<div class="row2"><select name="companyProperty" class="sellen154"><option>私营企业</option><option>国有企业</option><option>集体企业 </option><option>股份合作制企业</option><option>联营企业 </option><option>有限责任公司</option></select></div>
			<div class="row1 wd120">公司曾用名</div>
	        <div class="row2"><input type="text" name="companyUsedname" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>企业注册国家</div>			
			<div class="row2"><select name="companyRegisterCountry" class="sellen154 must"><option>中国</option><option>美国</option><option>日本</option><option>英国</option><option>法国 </option><option>德国</option></select></div>
			<div class="row1 wd120">公司网址</div>
	        <div class="row2"><input type="text" name="companyWebsite" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>公司代码</div>			
			<div class="row2"><input class="must" type="text" name="companyCode" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"><span style="color:red;">*</span>注册时间</div>
	        <div class="row2" style="margin-top:10px;"><input id="txtdate" class="easyui-datebox" name="companyRegisterDate" type="text" data-options="disable:'true',formatter:timeFormatter" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>法人代表</div>			
			<div class="row2"><div class="row2"><input class="must" type="text" name="companyRepresent" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></div>
			<div class="row1 wd120"></div>
	        <div class="row2"></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>是否为上市公司</div>			
			<div class="row2"><select id="islisted" name="isListed" class="sellen154 must"><option>是</option><option>否</option></select></div>
			<div class="row1 wd120">股票代码</div>
	        <div class="row2"><input type="text" name="stockCode" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>是否有出口权</div>			
			<div class="row2"><select id="isexport" name="isExport" class="sellen154 must"><option>是</option><option>否</option></select></div>
			<div class="row1 wd120"></div>
	        <div class="row2"></div>
	    </div>
	    <div  class="regLine hg200">
	    	<div class="rowTitle">公司地址</div>
	        <div class="row1 wd120"><span style="color:red;">*</span>国家</div>
	        <div class="row2"><select name="country" class="sellen154 must"><option>中国</option><option>美国</option><option>日本</option><option>英国</option><option>法国 </option><option>德国</option></select></div>
	        <div class="row1 wd120"><span style="color:red;">*</span>城市</div>
	        <div class="row2"><input class="must" type="text" name="city" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>街道/门牌号</div>			
			<div class="row2"><input class="must" type="text" name="doorNum" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"></div>
	        <div class="row2"></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>邮编</div>			
			<div class="row2"><input class="must" type="text" name="zipCode" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"></div>
	        <div class="row2"></div>
	    </div>
	    <div id="contactdiv"  class="regLine hg100">
	    	<div class="rowTitle">联系人
	    	<a id="addCon" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" onclick="addContactsDiv()" ></a>
	    	<a id="removeCon" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" onclick="removeContactsDiv()"></a>
	    	</div>
	        <div class="contact">
	        	<div class="row1 wd120"><span style="color:red;">*</span>联系人</div>
		        <div class="row2"><input class="must" type="text" name="orgContacts.contactMan" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
		        <div class="row1 wd120"><span style="color:red;">*</span>电话1</div>
		        <div class="row2"><input class="must" type="text" name="orgContacts.phonenum1" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
				<div class="cl"></div>
				<div class="row1 wd120">电话2</div>			
				<div class="row2"><input type="text" name="orgContacts.phonenum2" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
				<div class="row1 wd120"><span style="color:red;">*</span>Email</div>
		        <div class="row2"><input class="must" type="text" name="orgContacts.email" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
				<div class="cl"></div>
	        </div>
	    </div>
		</div>
	<input type="hidden" id="saveCompanyInfoSucc" value="${rm.success}"/>
    <div class="cl" ></div>
    <input class="saveBtn"  type="button" value="保存" style="margin-top:10px;margin-left:270px;"/>
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
		<jsp:include page="../layout/footer.jsp"></jsp:include>
	</div>
<script type="text/javascript" src="js/jquery.simplemodal.1.4.4.min.js"></script> 
<script type="text/javascript">
	$(function(){
		openMenu('.supplier');
		showSucc();
		$('.saveBtn').click(function(){
			if(!checkMustItems()){
				$('#ico').attr('class','ico-warn');
				$('#tipsContent').html('带红色*为必填项');
				$('#basic-dialog-warn').modal();
				return false;
			}else{
			 	var yes = 1;
			 	var no = 0;
			 	alert($('#islisted option:selected').text());
			 	alert($('#isexport option:selected').text());
			    if($('#islisted option:selected').text()=='是'){
			    	$('#islisted').val(yes);
			    }else{
			    	$('#islisted').val(no);
			    }
			    if($('#isexport option:selected').text()=='是'){
			    	$('#isexport').val(yes);
			    }else{
			    	$('#isexport').val(no);
			    }
				//$('#addOrganizationInfo').submit();
			}
			});
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
    
    
	function showSucc()
	{
		var isSuccess = $('#saveCompanyInfoSucc').val();
		if(isSuccess==null||isSuccess==''){
			return;
		}
		if(isSuccess=='true'){
			$('#ico').attr('class','ico-ok');
			$('#tipsContent').html('您的信息保存成功！');
			$('#basic-dialog-warn').modal();
		} else {
			$('#ico').attr('class','ico-warn');
			$('#tipsContent').html('对不起，您的信息保存失败！');
			$('#basic-dialog-warn').modal();
		}
		$('#saveCompanyInfoSucc').val("");
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
	    var datevalue = $('#txtdate').datebox('getValue');
	    var flag = (datevalue==null||datevalue=='')?false:true;
		return flag;
	}

	function change(url){
		$('#frmContent').load(url,null,function(){});
	
	}
	function addContactsDiv(){
		//获取contact的第一个元素且复制
		var $div = $('#contactdiv >.contact').first().clone();
    	$('#contactdiv >.contact').last().after($div);	
    	var curheight = $('#contactdiv').height();
    	$('#contactdiv').height(curheight+100);
	}
	
	function removeContactsDiv(){
	    var curheight = $('#contactdiv').height();
		if($('#contactdiv > div').length <= 2){
			$('#ico').attr('class','ico-warn');
			$('#tipsContent').html('联系人不能为空！');
			$('#basic-dialog-warn').modal();
			return;
		}
	    $('#contactdiv >.contact').last().remove();
    	$('#contactdiv').height(curheight-100);
	}
	function timeFormatter(date){
		var y = date.getFullYear();
		var m = date.getMonth() + 1;
		var d = date.getDate();
        return y+'-'+ (m<10?('0'+m):m)+'-'+(d<10?('0'+d):d);
    }
   </script>  
</body>
</html> 
