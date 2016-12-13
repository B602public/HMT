<%@ page language="java" pageEncoding="GBK"%>
<link rel="stylesheet" type="text/css" href="css/backindex.css">
<link rel="stylesheet" type="text/css" href="css/dialog.css"/>
<link rel="stylesheet" href="easyui/themes/default/easyui.css">
<link rel="stylesheet" href="easyui/themes/icon.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>   
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script> 

<div class="formtitle1"><span id="placeStr" >技术</span></div>
 <form id="addCompanyInfo" name="addCompanyInfo" action="TechnologyInfoServlet" method="post">
	    <!-- 组织信息 -->
	    <div class="frmBox" >
	    <div  class="regLine hg150">
	    	<div class="rowTitle">合作经历</div>
	        <div class="row1 wd120"><span style="color:red;">*</span>编号</div>
	        <div class="row2"><input class="must"  type="text" name="projectID" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
	        <div class="row1 wd120"><span style="color:red;">*</span>合作项目</div>
	        <div class="row2"><input class="must"  type="text" name="projectName" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>公司负责人</div>			
			<div class="row2"><input class="must"  type="text" name="manageMan" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"><span style="color:red;">*</span>联系电话</div>
	        <div class="row2"><input class="must"  type="text" name="phone" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>手机</div>			
			<div class="row2"><input class="must"  type="text" name="mobilephone" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"><span style="color:red;">*</span>项目完成</div>
	        <div class="row2"><input class="must"  type="text" name="isFinished" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
	    </div>
	    <div  class="regLine hg250">
	    	<div class="rowTitle">技术人员情况</div>
	       <table style="border:solid #eee 1px; text-algin:center;">
	    		<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td>职称</td>
	    			<td>人员</td>
	    			<td>平均学历</td>
	    			<td>本行业工作年限</td>
	    		</tr>
	    		<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td><span style="color:red;">*</span>初级工程师</td>
	    			<td><div class="row2"><input class="must"  type="text" name="juniorEngineerNum" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must"  type="text" name="juniorEngineerEducation" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must"  type="text" name="juniorEngineerYearNum" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    		</tr>
	    		<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td><span style="color:red;">*</span>中级工程师</td>
	    			<td><div class="row2"><input class="must"  type="text" name="intermediateEngineerNum" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must"  type="text" name="intermediateEngineerEducation" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must"  type="text" name="intermediateEngineerYearNum" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    		</tr>
	    		<tr>
	    			<td><span style="color:red;">*</span>高级工程师</td>
	    			<td><div class="row2"><input class="must"  type="text" name="seniorEngineerNum" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must"  type="text" name="seniorEngineerEducation" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must"  type="text" name="seniorEngineerYearNum" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    		</tr>
	    	</table>
	    </div>
	    <div  class="regLine hg100">
	    	<div class="rowTitle">软件使用情况</div>
	        <div class="row1 wd120"><span style="color:red;">*</span>编号</div>
	        <div class="row2"><input class="must"  type="text" name="softID" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
	        <div class="row1 wd120"><span style="color:red;">*</span>使用软件</div>
	        <div class="row2"><input  class="must"  type="text" name="soft" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>版本</div>			
			<div class="row2"><input class="must"  type="text" name="softVersion" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"><span style="color:red;">*</span>工作终端数量</div>
	        <div class="row2"><input class="must"  type="text" name="terminalNum" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
	    </div>
	     <div  class="regLine hg150">
	    	<div class="rowTitle">设备情况</div>
	        <div class="row1 wd120"><span style="color:red;">*</span>编号</div>
	        <div class="row2"><input class="must"  type="text" name="instrumentID" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
	        <div class="row1 wd120"><span style="color:red;">*</span>试验设备</div>
	        <div class="row2"><input class="must"  type="text" name="instrument" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>数量</div>			
			<div class="row2"><input class="must"  type="text" name="instrumentNum" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"></div>
	        <div class="row2"></div>
			<div class="cl"></div>
	    </div>
	    <div  class="regLine hg100">
	    	<div class="rowTitle">试验室情况</div>
	        <div class="row1 wd120"><span style="color:red;">*</span>编号</div>
	        <div class="row2"><input class="must"  type="text" name="labID" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
	        <div class="row1 wd120"><span style="color:red;">*</span>实验室名称</div>
	        <div class="row2"><input class="must"  type="text" name="labName" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>所获认证</div>			
			<div class="row2"><input class="must"  type="text" name="honor" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"><span style="color:red;">*</span>认证年份</div>
	        <div class="row2"><input  class="must"  type="text" name="honorYear" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
	    </div>
	    <div  class="regLine hg100">
	    	<div class="rowTitle">技术能力项目</div>
	        <div class="row1 wd120"><span style="color:red;">*</span>编号</div>
	        <div class="row2"><input class="must"  type="text" name="technologyID" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
	        <div class="row1 wd120"><span style="color:red;">*</span>技术能力项目</div>
	        <div class="row2"><input class="must"  type="text" name="technologyProject" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>来源</div>			
			<div class="row2"><input class="must"  type="text" name="technologyResource" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd150"><span style="color:red;">*</span>外委填写技术来源方</div>
	        <div class="row2"><input  class="must"  type="text" name="sourceSide" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
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